<template>
  <section class="bg-paper">
    <div class="mx-auto max-w-[var(--container-width)] px-4 py-12 md:py-16">
      <div class="grid items-stretch gap-10 md:grid-cols-[1.1fr_0.9fr]">
        <div
          class="relative h-[280px] overflow-hidden rounded-2xl shadow-2xl ring-1 ring-ink/10 md:h-[360px]"
        >
          <iframe
            :src="tourUrl"
            class="h-full w-full"
            style="border: 0"
            loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"
            allowfullscreen
          ></iframe>
          <div
            class="pointer-events-none absolute inset-0 bg-gradient-to-t from-ink/30 via-transparent"
          ></div>
          <div v-if="!tourInteractive" class="absolute inset-0 flex items-end p-4 bg-black/10">
            <div class="max-w-[80%] rounded-xl bg-ink/60 p-4 text-white backdrop-blur-sm">
              <p class="text-xs sm:text-sm">Faça um tour virtual pela nossa estrutura.</p>
              <button
                type="button"
                @click="enableTour"
                class="mt-2 inline-flex items-center justify-center gap-2 rounded-lg bg-brand px-4 py-2 text-xs font-semibold uppercase tracking-wide text-white shadow-md transition hover:bg-brand-600 focus-ring-brand"
              >
                <span>Ativar tour 360º</span>
              </button>
            </div>
          </div>
        </div>
        <div class="space-y-5 md:pl-6">
          <span
            class="inline-flex items-center gap-2 rounded-lg bg-brand/10 px-3 py-1 text-xs font-semibold uppercase tracking-wide text-brand"
          >
            Visite nossa estrutura
          </span>
          <h2 class="font-heading text-2xl font-semibold text-ink md:text-3xl">
            Estrutura completa em localização estratégica
          </h2>
          <p class="text-sm text-ink/75 md:text-base">{{ placeName }} · {{ address }}</p>
          <!-- <ul class="grid gap-4 sm:grid-cols-2">
            <li
              v-for="feature in features"
              :key="feature.title"
              class="rounded-2xl border border-ink/5 bg-white p-5 shadow-sm"
            >
              <div class="flex items-start gap-3">
                <div class="flex h-10 w-10 items-center justify-center rounded-full bg-brand/10 text-brand">
                  <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M20 6L9 17l-5-5" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                  </svg>
                </div>
                <div>
                  <p class="text-sm font-semibold text-ink">{{ feature.title }}</p>
                  <p class="mt-1 text-xs text-ink/70">{{ feature.description }}</p>
                </div>
              </div>
            </li>
          </ul>
          -->
          <div class="flex flex-col gap-3 pt-2 sm:flex-row sm:items-center">
            <a
              :href="directionsUrl"
              target="_blank"
              rel="noopener"
              class="inline-flex items-center justify-center gap-2 rounded-xl bg-brand px-6 py-3 text-sm font-semibold uppercase tracking-wide text-white shadow-lg transition hover:bg-brand-600 focus-ring-brand"
            >
              <svg
                width="18"
                height="18"
                viewBox="0 0 24 24"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path
                  d="M12 3l9 9-9 9-9-9 9-9zm0 0l9 9m-9-9L3 12m9-9v18"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                />
              </svg>
              <span>Quero visitar agora</span>
            </a>
            <a
              :href="mapsUrl"
              target="_blank"
              rel="noopener"
              class="inline-flex items-center justify-center gap-2 text-sm font-semibold text-brand underline-offset-4 transition hover:underline"
            >
              Ver no Google Maps
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
  name: 'LocationSection',
  data() {
    const placeName = 'Futuro – Cemitério Parque Memorial Sinop'
    const address = 'Rod. Emanuel Pinheiro, km 2 · Sinop - MT'
    const features = [
      {
        title: 'Salas climatizadas 24h',
        description: 'Ambientes privativos com apoio completo para famílias e convidados.',
      },
      {
        title: 'Capela ecumênica integrada',
        description: 'Espaço preparado para cerimônias personalizadas e acolhedoras.',
      },
      {
        title: 'Estacionamento amplo e seguro',
        description: 'Mais de 80 vagas iluminadas e monitoradas para conforto dos visitantes.',
      },
      {
        title: 'Sala de apoio psicológico',
        description: 'Profissionais parceiros disponíveis durante todo o atendimento.',
      },
    ]
    const latitude = -11.8857166
    const longitude = -55.4457212
    const query = encodeURIComponent(`${latitude},${longitude}`)
    const mapsPlaceUrl =
      'https://www.google.com/maps/place/Futuro+-+Cemit%C3%A9rio+Parque+Memorial+Sinop/@-11.8847189,-55.4450683,17z/data=!4m12!1m5!3m4!2zMTHCsDUzJzA1LjAiUyA1NcKwMjYnMzMuMCJX!8m2!3d-11.8847189!4d-55.4424934!3m5!1s0x9309d50012d87d57:0x662613f1a7893274!8m2!3d-11.8857166!4d-55.4457212!16s%2Fg%2F11yh0d61xl'
    return {
      placeName,
      address,
      features,
      mapsUrl: mapsPlaceUrl,
      directionsUrl: `https://www.google.com/maps/dir/?api=1&destination=${query}`,
      mapEmbedUrl: `https://www.google.com/maps?q=${query}&output=embed`,
      tourUrl: 'https://seuproduto360.com/p/paulo28/027/',
      tourInteractive: false as boolean,
    }
  },
  methods: {
    enableTour() {
      this.tourInteractive = true
    },
  },
})
</script>

<style scoped></style>
