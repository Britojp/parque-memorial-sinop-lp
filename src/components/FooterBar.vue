<template>
  <footer class="bg-zinc-50 border-t border-zinc-200">
    <div
      class="mx-auto max-w-[var(--container-width)] px-4 py-10 grid md:grid-cols-3 gap-6 text-sm text-zinc-700"
    >
      <div class="space-y-2">
        <img :src="logoSrc" alt="Logo" class="h-9 w-auto" />
        <div>Atendimento 24h</div>
      </div>
      <div>
        <div class="font-medium text-zinc-900 mb-2">Institucional</div>
        <ul class="space-y-1">
          <li><a href="#servicos">Serviços</a></li>
          <li><a href="#estrutura">Estrutura</a></li>
          <li><a href="#faq">Dúvidas</a></li>
        </ul>
      </div>
      <div>
        <div class="font-medium text-zinc-900 mb-2">Contato</div>
        <ul class="space-y-1">
          <li><a href="#contato">Fale conosco</a></li>
        </ul>
      </div>
    </div>
    <div class="px-4 py-6 text-center text-xs text-zinc-500">© {{ year }}</div>
  </footer>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent({
  name: 'FooterBar',
  data() {
    return {
      year: new Date().getFullYear(),
      logoSrc: new URL('@/assets/pdf/ap_parquememorial-imagens-7.jpg', import.meta.url).href,
    }
  },
})
</script>

<style scoped></style>
