<template>
  <section class="bg-paper">
    <div class="mx-auto max-w-[var(--container-width)] px-4 py-12 md:py-16">
      <div class="grid md:grid-cols-2 gap-8 items-stretch">
        <div class="overflow-hidden shadow-2xl ring-1 ring-white/10 h-[300px] md:h-[380px]">
          <iframe
            :src="mapEmbedUrl"
            class="w-full h-full"
            style="border: 0"
            loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"
            allowfullscreen
          ></iframe>
        </div>
        <div class="md:pl-4">
          <h2 class="text-2xl md:text-3xl font-semibold font-heading">Onde estamos</h2>
          <p class="mt-4 text-sm md:text-base/relaxed opacity-90">{{ placeName }}</p>
          <p class="mt-2 text-sm md:text-base/relaxed opacity-90">{{ address }}</p>
          <div class="mt-6 flex flex-wrap gap-3">
            <a
              :href="directionsUrl"
              target="_blank"
              rel="noopener"
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
                  d="M12 3l9 9-9 9-9-9 9-9zm0 0l9 9m-9-9L3 12m9-9v18"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                />
              </svg>
              <span>Ver rotas</span>
            </a>
            <a
              :href="mapsUrl"
              target="_blank"
              rel="noopener"
              class="inline-flex items-center px-6 py-3 ring-1 ring-white/30 text-white/90 hover:bg-white/10 focus-ring-brand"
              >Abrir no mapa</a
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
  name: 'LocationSection',
  data() {
    const placeName = 'Parque Memorial'
    const address = 'Av. Exemplo, 123 - Centro, Cidade - UF'
    const query = encodeURIComponent(`${placeName} ${address}`)
    return {
      placeName,
      address,
      mapsUrl: `https://www.google.com/maps/search/?api=1&query=${query}`,
      directionsUrl: `https://www.google.com/maps/dir/?api=1&destination=${query}`,
      mapEmbedUrl: `https://www.google.com/maps?q=${query}&output=embed`,
    }
  },
})
</script>

<style scoped></style>
