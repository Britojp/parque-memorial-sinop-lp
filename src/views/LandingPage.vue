<template>
  <div>
    <TopBar />
    <HeaderNav />
    <HeroSection />
    <PlanningCTA />
    <RepeatedImageBanner />
    <ContactForm />
    <InfiniteCarousel />
    <LocationSection />
    <FooterBar />
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue'
import HeaderNav from '../components/HeaderNav.vue'
import TopBar from '../components/TopBar.vue'
import HeroSection from '../components/HeroSection.vue'
import PlanningCTA from '../components/PlanningCTA.vue'
import ContactForm from '../components/ContactForm.vue'
import LocationSection from '../components/LocationSection.vue'
import RepeatedImageBanner from '../components/RepeatedImageBanner.vue'
import InfiniteCarousel from '@/components/InfiniteCarousel.vue'
import FooterBar from '@/components/FooterBar.vue'

export default defineComponent({
  name: 'LandingPage',
  components: {
    HeaderNav,
    TopBar,
    InfiniteCarousel,
    RepeatedImageBanner,
    HeroSection,
    PlanningCTA,
    ContactForm,
    LocationSection,
    FooterBar,
  },
})
</script>

<style scoped></style>
