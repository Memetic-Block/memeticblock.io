import { ANT, ArweaveSigner } from '@ar.io/sdk'
import { TurboFactory } from '@ardrive/turbo-sdk'
import Arweave from 'arweave'
import { readFileSync } from 'fs'

// ANT-MEMETICBLOCK
const processId = '_FB4vtcNXwBw9yz4BEJ3tZCTkWoQqP3mLzr1T5TBo14'
const PRIVATE_KEY = process.env.PRIVATE_KEY || ''
if (!PRIVATE_KEY) {
  throw new Error('PRIVATE_KEY is not set!')
}
const DEPLOY_FOLDER = `${process.cwd()}/dist`
const gatewayUrl = process.env.GATEWAY || 'https://arweave.net'
const url = process.env.BUNDLER || 'https://upload.ardrive.io'

let undername = 'dev'
if (process.env.PHASE === 'stage') {
  undername = 'stage'
} else if (process.env.PHASE === 'live') {
  undername = '@'
} else if (process.env.UNDERNAME) {
  undername = process.env.UNDERNAME
}

async function deploy() {
  console.log('Deploying to Arweave via', url, 'with gateway', gatewayUrl)

  const jwk = JSON.parse(readFileSync(PRIVATE_KEY, 'utf-8'))
  const arweave = Arweave.init({})
  const address = await arweave.wallets.jwkToAddress(jwk)
  const signer = new ArweaveSigner(jwk)
  const turbo = TurboFactory.authenticated({
    signer,
    gatewayUrl,
    uploadServiceConfig: { url }
  })
  const ant = ANT.init({ processId, signer })

  console.info('Deploying as', address, 'to undername', undername)

  const {
    fileResponses,
    manifestResponse,
    manifest,
    errors
  } = await turbo.uploadFolder({
    folderPath: DEPLOY_FOLDER,
    dataItemOpts: {
      tags: [{ name: 'Deploy-Nonce', value: Date.now().toString() }]
    },
    manifestOptions: {
      indexFile: 'index.html',
      fallbackFile: 'index.html'
    }
  })

  if (errors && errors.length > 0) {
    console.error(errors)
    throw new Error('Deploy failed, see errors above')
  }
  if (!manifestResponse) {
    throw new Error('No manifest response')
  }

  console.info(`Manifest id ${manifestResponse.id}`)
  console.info('Manifest', JSON.stringify(manifest))
  console.info('Updating ANT undername', undername)
  const { id: deployedTxId } = undername === '@'
    ? await ant.setBaseNameRecord({
      transactionId: manifestResponse.id,
      ttlSeconds: 3600
    })
    : await ant.setUndernameRecord({
      undername,
      transactionId: manifestResponse.id,
      ttlSeconds: 3600
    })
  console.info(
    'Deployed!  Please wait 20 - 30 minutes for ARNS to update!',
    deployedTxId
  )
}

deploy().catch(err => {
  console.error('error deploying!', err);
  process.exit(1);
})
