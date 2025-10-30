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
          <span class="inline-flex items-center gap-2 rounded-lg bg-brand/10 px-3 py-1 text-xs font-semibold uppercase tracking-wide text-brand">
            Confiança comprovada
          </span>
          <h2 class="mt-4 font-heading text-2xl font-semibold text-ink md:text-3xl">
            Planejamento imediato com acolhimento completo
          </h2>
          <p class="mt-4 text-sm text-ink/80 md:text-base">
            Resolva documentos, estrutura e cerimônia com uma equipe que conduz cada etapa ao seu lado. Atendimento híbrido e presença física garantem tranquilidade para a sua família.
          </p>
          <p class="mt-4 text-sm text-ink/80 md:text-base">
            Escolha o melhor plano junto a consultores especializados que respondem em minutos e apresentam condições flexíveis.
          </p>
          <div class="mt-6 flex flex-col gap-4 sm:flex-row sm:items-center">
            <a
              href="#contato"
              class="inline-flex items-center justify-center gap-2 rounded-xl bg-brand px-6 py-3 text-sm font-semibold uppercase tracking-wide text-white shadow-xl transition hover:bg-brand-600 focus-ring-brand"
            >
              Quero falar com um consultor
            </a>
            <div class="flex items-center gap-3 text-xs text-ink/60 md:text-sm">
              <div class="flex items-center gap-1 text-brand">
                <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path d="M12 17.27l6.18 3.73-1.64-7.03L21 9.24l-7.19-.61L12 2 10.19 8.63 3 9.24l4.46 4.73L5.82 21z" />
                </svg>
                <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path d="M12 17.27l6.18 3.73-1.64-7.03L21 9.24l-7.19-.61L12 2 10.19 8.63 3 9.24l4.46 4.73L5.82 21z" />
                </svg>
                <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path d="M12 17.27l6.18 3.73-1.64-7.03L21 9.24l-7.19-.61L12 2 10.19 8.63 3 9.24l4.46 4.73L5.82 21z" />
                </svg>
                <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path d="M12 17.27l6.18 3.73-1.64-7.03L21 9.24l-7.19-.61L12 2 10.19 8.63 3 9.24l4.46 4.73L5.82 21z" />
                </svg>
                <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path d="M12 17.27l6.18 3.73-1.64-7.03L21 9.24l-7.19-.61L12 2 10.19 8.63 3 9.24l4.46 4.73L5.82 21z" />
                </svg>
              </div>
              <span class="h-4 w-px bg-ink/10"></span>
              <span>5,0 no Google Reviews com 218 avaliações</span>
            </div>
          </div>
          <div class="mt-6 rounded-2xl bg-white p-6 shadow-xl ring-1 ring-ink/5 md:mt-8">
            <p class="text-sm text-ink/80">
              “Fomos acolhidos desde o primeiro contato. Em menos de uma hora toda a documentação estava pronta e a equipe já organizava a cerimônia. Não precisei me preocupar com nada.”
            </p>
            <div class="mt-4 flex items-center gap-3">
              <div class="flex h-10 w-10 items-center justify-center rounded-full bg-brand/10 text-brand font-semibold">
                MC
              </div>
              <div class="text-xs text-ink/70">
                <div class="font-semibold text-ink">Marcela Costa</div>
                <div>Cliente desde 2023</div>
              </div>
            </div>
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
  background: linear-gradient(180deg, rgba(20, 64, 118, 0.12) 0%, rgba(244, 248, 252, 0.96) 60%, #ffffff 100%);
}
.planning-section::before,
.planning-section::after {
  content: '';
  position: absolute;
  inset: 0;
  pointer-events: none;
}
.planning-section::before {
  background: radial-gradient(circle at 15% 25%, rgba(255, 255, 255, 0.75) 0%, rgba(255, 255, 255, 0) 55%);
}
.planning-section::after {
  background: radial-gradient(circle at 85% 75%, rgba(32, 94, 160, 0.14) 0%, rgba(32, 94, 160, 0) 65%);
}
</style>
