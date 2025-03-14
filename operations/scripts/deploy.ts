import { ANT, ArweaveSigner } from '@ar.io/sdk'
import { TurboFactory } from '@ardrive/turbo-sdk'

// ANT-MEMETICBLOCK
const processId = 'xmUsfnCXTIkyHyPVku79F9DuK0uroUGk3gQr-88SaTI'

const DEPLOY_FOLDER = `${process.cwd()}/.output/public`
const gatewayUrl = process.env.GATEWAY || 'https://ar.anyone.tech'
const url = process.env.BUNDLER || 'https://ar.anyone.tech/bundler'

let undername = 'dev'
if (process.env.PHASE === 'stage') {
  undername = 'stage'
} else if (process.env.PHASE === 'live') {
  undername = '@'
} else if (process.env.UNDERNAME) {
  undername = process.env.UNDERNAME
}

async function deploy() {
  const jwk = JSON.parse(
    Buffer
      .from(process.env.PERMAWEB_KEY || 'NO_KEY', 'base64')
      .toString('utf-8')
  )
  const signer = new ArweaveSigner(jwk)
  const turbo = TurboFactory.authenticated({
    signer,
    gatewayUrl,
    uploadServiceConfig: { url }
  })
  const ant = ANT.init({ processId, signer })

  const {
    fileResponses,
    manifestResponse,
    manifest,
    errors
  } = await turbo.uploadFolder({
    folderPath: DEPLOY_FOLDER,
    dataItemOpts: {
      tags: [{ name: 'Deploy-Nonce', value: Date.now().toString() }]
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
      ttlSeconds: 900
    })
    : await ant.setUndernameRecord({
      undername,
      transactionId: manifestResponse.id,
      ttlSeconds: 900
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
