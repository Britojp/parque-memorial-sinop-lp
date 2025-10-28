<template>
  <header class="bg-paper border-b border-default">
    <div class="mx-auto max-w-[var(--container-width)] px-4 py-3 grid grid-cols-3 items-center">
      <div class="flex items-center gap-3">
        <a href="/">
          <img :src="logoSrc" alt="Logo" class="h-24 w-auto" />
        </a>
      </div>
      <nav
        class="hidden md:flex items-center justify-center gap-8 text-xs font-semibold tracking-wide uppercase text-muted flex-nowrap"
      >
        <a href="#servicos" class="hover:text-ink inline-flex items-center gap-1 whitespace-nowrap"
          >Conheça-nos</a
        >
        <a
          href="#obituarios"
          class="hover:text-ink inline-flex items-center gap-1 whitespace-nowrap"
          >Velório Online</a
        >
        <a href="#contato" class="hover:text-ink inline-flex items-center gap-1 whitespace-nowrap"
          >Painel Cliente</a
        >
        <a href="#contato" class="hover:text-ink inline-flex items-center gap-1 whitespace-nowrap"
          >Minha Conta</a
        >
      </nav>
      <div class="hidden md:flex items-center justify-end gap-3">
        <div class="h-8 w-8 rounded-full bg-mist text-brand flex items-center justify-center">
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
          <div class="text-xs font-semibold text-ink">Fale Conosco</div>
          <div class="text-[11px] text-muted uppercase">Atendimento 24h</div>
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
      logoSrc: new URL('@/assets/logos/1.png', import.meta.url).href,
    }
  },
})
</script>

<style scoped></style>
