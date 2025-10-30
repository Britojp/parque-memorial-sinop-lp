<template>
  <header class="bg-paper border-b border-default">
    <div class="mx-auto flex max-w-[var(--container-width)] flex-wrap items-center justify-between gap-4 px-4 py-3">
      <a href="/" class="flex items-center gap-3">
        <img :src="logoSrc" alt="Parque Memorial Sinop" class="h-24 w-auto md:h-28" />
        <span class="hidden border-l border-default pl-3 text-xs font-semibold uppercase tracking-wide text-muted md:block">
          Atendimento humano 24 horas
        </span>
      </a>
      <div class="flex w-full items-center justify-between gap-4 sm:w-auto">
        <div class="flex items-center gap-3 text-left">
          <div class="flex h-9 w-9 items-center justify-center rounded-full bg-brand/10 text-brand">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
              <path d="M6.62 10.79a15.053 15.053 0 006.59 6.59l2.2-2.2a1 1 0 011.01-.24c1.12.37 2.33.57 3.58.57a1 1 0 011 1V21a1 1 0 01-1 1C10.07 22 2 13.93 2 3a1 1 0 011-1h3.5a1 1 0 011 1c0 1.25.2 2.46.57 3.58a1 1 0 01-.25 1.01l-2.2 2.2z" />
            </svg>
          </div>
          <div class="leading-tight">
            <div class="text-xs font-semibold text-ink md:text-sm">Central 24h</div>
            <a href="tel:+5566999848877" class="text-sm font-semibold text-brand md:text-base">(66) 99984-8877</a>
          </div>
        </div>
        <a
          href="#contato"
          class="inline-flex items-center justify-center rounded-xl bg-brand px-4 py-2 text-xs font-semibold uppercase tracking-wide text-white shadow-lg transition hover:bg-brand-600 focus-ring-brand md:px-6 md:py-3 md:text-sm"
        >
          Quero falar com um consultor
        </a>
      </div>
    </div>
  </header>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent({
  name: 'HeaderNav',
  data() {
    return {
      logoSrc: new URL('@/assets/logos/logo-sf.png', import.meta.url).href,
    }
  },
})
</script>

<style scoped></style>
