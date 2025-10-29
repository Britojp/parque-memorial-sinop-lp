<template>
  <section class="bg-paper">
    <div class="mx-auto max-w-[var(--container-width)] px-4 py-8 md:py-12">
      <div
        class="relative overflow-hidden shadow-2xl ring-1 ring-white/10 px-6 md:px-12 py-8 md:py-12 bg-gradient-to-r from-brand to-brand-600"
      >
        <div class="mx-auto max-w-3xl text-center text-white">
          <h2 class="text-2xl md:text-3xl font-semibold font-heading">
            Reserve seu atendimento com nossa equipe
          </h2>
          <p class="mt-3 text-sm md:text-base/relaxed opacity-90">
            Atendimento dedicado, opções flexíveis e suporte completo para sua família. Faça sua
            reserva agora e receba orientação personalizada.
          </p>
          <div class="mt-6 flex flex-wrap justify-center gap-3">
            <a
              href="#contato"
              class="inline-flex items-center gap-2 px-6 py-3 bg-white text-ink font-medium shadow-2xl hover:bg-white/90 focus-ring-brand"
            >
              <svg
                width="16"
                height="16"
                viewBox="0 0 24 24"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path
                  d="M8 7h8M8 12h8M8 17h5"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                />
              </svg>
              <span>Ver opções</span>
            </a>
            <a
              href="#contato"
              class="inline-flex items-center gap-2 px-6 py-3 bg-brand-700 text-white font-medium shadow-2xl hover:bg-brand-800 focus-ring-brand"
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
              <span>Reservar agora</span>
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
  name: 'CtaBanner',
})
</script>

<style scoped></style>
