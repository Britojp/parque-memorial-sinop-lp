<template>
  <section id="hero" class="relative overflow-hidden text-white">
    <div class="absolute inset-0">
      <img :src="bgImage" class="w-full h-full object-cover hero-kenburns" />
      <div
        class="absolute inset-0"
        style="
          background: linear-gradient(
            180deg,
            rgba(31, 2, 103, 0.85) 0%,
            rgba(31, 2, 103, 0.55) 40%,
            rgba(31, 2, 103, 0.35) 100%
          );
        "
      ></div>
    </div>
    <div class="relative mx-auto max-w-[var(--container-width)] px-4 py-20 md:py-28">
      <div class="max-w-3xl">
        <h1 class="font-heading text-4xl md:text-6xl font-semibold leading-tight animate-fadeUp">
          Cuidado, respeito e acolhimento em cada detalhe
        </h1>
        <p class="mt-4 text-white/90 text-base md:text-lg animate-fadeUp delay-150">
          Atendimento 24 horas para amparar sua família nos momentos mais delicados.
        </p>
        <div class="mt-8 flex flex-wrap gap-3 animate-fadeUp delay-300">
          <a
            href="#contato"
            class="px-5 py-3 rounded bg-white text-ink text-sm md:text-base hover:bg-brand-600 hover:text-white focus-ring-brand"
            >Falar com um consultor</a
          >
          <a
            href="#canal"
            class="px-5 py-3 rounded border border-white/40 text-white text-sm md:text-base hover:bg-white hover:text-ink focus-ring-brand"
            >Conheça nossa estrutura</a
          >
        </div>
      </div>
    </div>
    <div class="absolute inset-x-0 bottom-0 h-2 bg-white/15"></div>
  </section>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent({
  name: 'HeroSection',
  data() {
    return {
      bgImage: new URL('@/assets/homem-senior-comemorando-seu-aniversario.jpg', import.meta.url)
        .href,
    }
  },
})
</script>

<style scoped>
@keyframes kenburns {
  0% {
    transform: scale(1) translateY(0);
  }
  100% {
    transform: scale(1.08) translateY(-1.5%);
  }
}
.hero-kenburns {
  animation: kenburns 18s ease-in-out infinite alternate;
}
@keyframes fadeUp {
  0% {
    opacity: 0;
    transform: translateY(12px);
  }
  100% {
    opacity: 1;
    transform: translateY(0);
  }
}
.animate-fadeUp {
  animation: fadeUp 700ms ease forwards;
}
.delay-150 {
  animation-delay: 150ms;
}
.delay-300 {
  animation-delay: 300ms;
}
</style>
