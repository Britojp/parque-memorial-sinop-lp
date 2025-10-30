<template>
  <section class="bg-brand text-white">
    <div class="mx-auto flex max-w-[var(--container-width)] flex-col gap-3 px-4 py-3 text-center text-sm sm:flex-row sm:items-center sm:justify-between sm:text-left">
      <div class="flex flex-1 flex-col gap-1 sm:flex-row sm:items-center sm:gap-3">
        <span class="inline-flex items-center justify-center rounded-lg bg-white/15 px-3 py-1 text-xs uppercase tracking-wide">Oportunidade limitada</span>
        <p class="text-sm font-medium sm:text-base">Restam 3 horários para atendimento presencial ainda nesta semana.</p>
      </div>
      <a href="#contato" class="inline-flex items-center justify-center rounded-xl bg-white px-5 py-2 text-xs font-semibold uppercase tracking-wide text-brand transition hover:bg-brand-100 focus-ring-brand sm:text-sm">
        Quero falar com um consultor
      </a>
    </div>
  </section>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent({
  name: 'UrgencyBanner',
})
</script>

<style scoped></style>

