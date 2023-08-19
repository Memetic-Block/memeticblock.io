<template>
    <div id="landing-hero" class="landing-hero background-bg">
        <div class="flex-stack">
            <div class="flex-horiz-center">
                <Logo />
            </div>
            <div class="mt-2">
                <LogoText />
            </div>
        </div>
    </div>
    <DownArrow scroll-to="projects-hero" />
</template>

<style scoped>
.landing-hero {
    width: 100%;
    height: 800px;
    display: flex;
    justify-content: center;
    align-items: center;
}
</style>
