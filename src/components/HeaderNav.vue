<template>
  <header class="bg-paper border-b border-default">
    <div
      class="mx-auto flex max-w-[var(--container-width)] items-center justify-between gap-3 px-4 py-3 md:gap-5"
    >
      <a href="/" class="flex items-center gap-3 shrink-0">
        <img :src="logoSrc" alt="Parque Memorial Sinop" class="h-20 w-auto md:h-28" />
        <span
          class="hidden border-l border-default pl-3 text-xs font-semibold uppercase tracking-wide text-muted md:block"
        >
        </span>
      </a>
      <div class="flex items-center gap-3 shrink-0 md:gap-4">
        <div class="flex items-center gap-2 text-left">
          <div
            class="flex h-8 w-8 items-center justify-center rounded-full bg-brand/10 text-brand md:h-9 md:w-9"
          >
            <svg
              width="18"
              height="18"
              viewBox="0 0 24 24"
              fill="currentColor"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                d="M6.62 10.79a15.053 15.053 0 006.59 6.59l2.2-2.2a1 1 0 011.01-.24c1.12.37 2.33.57 3.58.57a1 1 0 011 1V21a1 1 0 01-1 1C10.07 22 2 13.93 2 3a1 1 0 011-1h3.5a1 1 0 011 1c0 1.25.2 2.46.57 3.58a1 1 0 01-.25 1.01l-2.2 2.2z"
              />
            </svg>
          </div>
          <div class="leading-tight">
            <div class="text-[11px] font-semibold text-ink md:text-xs">Central de atendimento</div>
            <a href="tel:+556692165440" class="text-xs font-semibold text-brand md:text-sm"
              >(66) 9216-5440</a
            >
          </div>
        </div>
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
