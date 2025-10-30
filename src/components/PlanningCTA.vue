<template>
  <section class="planning-section relative overflow-hidden">
    <div class="relative z-10 mx-auto max-w-[var(--container-width)] px-4 py-12 md:py-16">
      <div class="grid items-center gap-10 md:grid-cols-2">
        <div class="relative">
          <div class="overflow-hidden shadow-2xl ring-1 ring-white/10">
            <video
              :src="videoUrl"
              class="w-full h-auto object-cover"
              autoplay
              muted
              playsinline
              loop
              preload="metadata"
            ></video>
          </div>
        </div>
        <div class="md:pl-4">
          <h2 class="mt-4 font-heading text-2xl font-semibold text-ink md:text-3xl">
            Cuidando de você, hoje e por toda a eternidade
          </h2>
          <p class="mt-4 text-sm text-ink/80 md:text-base">
            O Parque Memorial de Sinop nasce com o propósito de transformar a experiência de
            homenagem e preservação da memória, oferecendo um espaço planejado, acolhedor e
            inovador.
          </p>
          <div class="mt-6 flex flex-col gap-4 sm:flex-row sm:items-center">
            <a
              href="#contato"
              class="inline-flex items-center justify-center gap-2 rounded-xl bg-brand px-6 py-3 text-sm font-semibold uppercase tracking-wide text-white shadow-xl transition hover:bg-brand-600 focus-ring-brand"
            >
              Quero falar com um consultor
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent({
  name: 'PlanningCTA',
  data() {
    return {
      videoUrl: new URL('@/assets/apresentacao-pm.mp4', import.meta.url).href,
    }
  },
})
</script>

<style scoped>
.planning-section {
  background: linear-gradient(
    180deg,
    rgba(20, 64, 118, 0.12) 0%,
    rgba(244, 248, 252, 0.96) 60%,
    #ffffff 100%
  );
}
.planning-section::before,
.planning-section::after {
  content: '';
  position: absolute;
  inset: 0;
  pointer-events: none;
}
.planning-section::before {
  background: radial-gradient(
    circle at 15% 25%,
    rgba(255, 255, 255, 0.75) 0%,
    rgba(255, 255, 255, 0) 55%
  );
}
.planning-section::after {
  background: radial-gradient(
    circle at 85% 75%,
    rgba(32, 94, 160, 0.14) 0%,
    rgba(32, 94, 160, 0) 65%
  );
}
</style>
