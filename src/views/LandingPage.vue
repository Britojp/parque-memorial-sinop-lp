<template>
  <div>
    <TopBar />
    <HeaderNav />
    <HeroSection />
    <PlanningCTA />
    <FaqSection />
    <LocationSection />
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue'
import HeaderNav from '../components/HeaderNav.vue'
import TopBar from '../components/TopBar.vue'
import HeroSection from '../components/HeroSection.vue'
import PlanningCTA from '../components/PlanningCTA.vue'
import CtaBanner from '../components/CtaBanner.vue'
import FaqSection from '../components/FaqSection.vue'
import LocationSection from '../components/LocationSection.vue'
import FooterBar from '../components/FooterBar.vue'
import LogosVideo from '../components/LogosVideo.vue'

export default defineComponent({
  name: 'LandingPage',
  components: {
    HeaderNav,
    TopBar,
    HeroSection,
    CtaBanner,
    PlanningCTA,
    FaqSection,
    LocationSection,
    LogosVideo,
    FooterBar,
  },
})
</script>

<style scoped></style>
