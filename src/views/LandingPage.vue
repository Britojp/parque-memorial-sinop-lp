<template>
  <div>
    <TopBar />
    <HeaderNav />
    <HeroSection />
    <FooterBar />
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue'
import HeaderNav from '../components/HeaderNav.vue'
import TopBar from '../components/TopBar.vue'
import HeroSection from '../components/HeroSection.vue'
import PlanningCTA from '../components/PlanningCTA.vue'
import FooterBar from '../components/FooterBar.vue'

export default defineComponent({
  name: 'LandingPage',
  components: {
    HeaderNav,
    TopBar,
    HeroSection,
    PlanningCTA,
    FooterBar,
  },
})
</script>

<style scoped></style>
