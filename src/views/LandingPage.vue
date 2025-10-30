<template>
  <div>
    <TopBar />
    <HeaderNav />
    <HeroSection />
    <RepeatedImageBanner />
    <PlanningCTA />
    <ContactForm />
    <FaqSection />
    <LocationSection />
    <RepeatedImageBanner
      title="Ambiente planejado para acolher a despedida da sua família"
      subtitle="Cerimônias personalizadas, salas climatizadas e suporte especializado garantem serenidade em cada detalhe."
      cta-label="Quero conhecer a estrutura"
      cta-href="#contato"
    />
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue'
import HeaderNav from '../components/HeaderNav.vue'
import TopBar from '../components/TopBar.vue'
import HeroSection from '../components/HeroSection.vue'
import UrgencyBanner from '../components/UrgencyBanner.vue'
import PlanningCTA from '../components/PlanningCTA.vue'
import ContactForm from '../components/ContactForm.vue'
import FaqSection from '../components/FaqSection.vue'
import LocationSection from '../components/LocationSection.vue'
import RepeatedImageBanner from '../components/RepeatedImageBanner.vue'

export default defineComponent({
  name: 'LandingPage',
  components: {
    HeaderNav,
    TopBar,
    RepeatedImageBanner,
    HeroSection,
    UrgencyBanner,
    PlanningCTA,
    ContactForm,
    FaqSection,
    LocationSection,
  },
})
</script>

<style scoped></style>
