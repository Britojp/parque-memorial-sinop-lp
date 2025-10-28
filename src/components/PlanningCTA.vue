<template>
  <section class="bg-paper">
    <div class="mx-auto max-w-[var(--container-width)] px-4 py-12 md:py-16">
      <div class="relative">
        <div class="rounded-2xl overflow-hidden shadow-2xl">
          <video
            :src="videoUrl"
            class="w-full h-auto object-contain"
            autoplay
            muted
            playsinline
            loop
          ></video>
        </div>
        <div
          class="mt-4 md:mt-0 md:absolute md:right-10 md:top-1/2 md:-translate-y-1/2 bg-brand text-white rounded-2xl p-6 md:p-8 shadow-2xl ring-1 ring-white/10 md:w-[460px]"
        >
          <h2 class="text-2xl md:text-3xl font-semibold font-heading">Começar a planejar</h2>
          <p class="mt-4 text-sm md:text-base/relaxed opacity-90">
            Oferecemos opções de planejamento personalizadas para atender às necessidades da sua
            família. Com alternativas para uso futuro, contamos com estrutura moderna e completa
            para dar total suporte.
          </p>
          <p class="mt-4 text-sm md:text-base/relaxed opacity-90">
            Fale com nossa equipe de consultores para encontrar a solução ideal e trazer
            tranquilidade para sua família.
          </p>
          <div class="mt-6">
            <a
              href="#contato"
              class="inline-block px-5 py-3 rounded bg-white text-ink font-medium hover:bg-brand-600 hover:text-white focus-ring-brand"
              >Planejar agora!</a
            >
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

<style scoped></style>
