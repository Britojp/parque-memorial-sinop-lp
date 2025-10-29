<template>
  <section class="bg-paper">
    <div class="mx-auto max-w-[var(--container-width)] px-4 py-12 md:py-16">
      <div class="grid md:grid-cols-2 gap-8 items-center">
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
          <div
            class="absolute -bottom-5 left-6 bg-white text-ink shadow-2xl ring-1 ring-black/10 px-4 py-3 flex items-center gap-3"
          >
            <span
              class="inline-flex items-center justify-center w-8 h-8 rounded-full bg-brand text-white"
            >
              <svg
                width="16"
                height="16"
                viewBox="0 0 24 24"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path
                  d="M20 6L9 17l-5-5"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                />
              </svg>
            </span>
            <div class="text-sm">
              <div class="font-medium">Qualidade e acolhimento</div>
              <div class="text-xs opacity-80">Avaliação 5.0 ★★★★★</div>
            </div>
          </div>
        </div>
        <div class="md:pl-4">
          <h2 class="text-2xl md:text-3xl font-semibold font-heading">
            Cuidado completo e planejamento tranquilo
          </h2>
          <p class="mt-4 text-sm md:text-base/relaxed opacity-90">
            Planos flexíveis, atendimento dedicado e estrutura pronta para apoiar sua família em
            todas as etapas com segurança e respeito.
          </p>
          <p class="mt-4 text-sm md:text-base/relaxed opacity-90">
            Fale com um consultor e encontre a solução ideal para hoje e para o futuro.
          </p>
          <div class="mt-6 flex flex-wrap items-center gap-3">
            <a
              href="#contato"
              class="inline-flex items-center gap-2 px-6 py-3 bg-brand text-white shadow-2xl hover:bg-brand-600 focus-ring-brand"
            >
              <svg
                width="16"
                height="16"
                viewBox="0 0 24 24"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path
                  d="M12 5l7 7-7 7M5 12h14"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                />
              </svg>
              <span>Reservar conversa</span>
            </a>
            <a
              href="#contato"
              class="inline-flex items-center px-6 py-3 ring-1 ring-white/30 text-white/90 hover:bg-white/10 focus-ring-brand"
              >Saiba mais</a
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
