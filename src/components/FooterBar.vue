<template>
  <footer class="bg-topbar text-white">
    <div class="px-4 py-6 text-center text-xs text-white/80 border-t border-white/10">
      <div class="mx-auto max-w-[var(--container-width)] flex flex-col items-center gap-2">
        <a href="#" class="hover:underline">Política de Privacidade</a>
        <div>© {{ year }} PARQUE MEMORIAL DE SINOP – Todos os direitos reservados</div>
      </div>
    </div>
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
      mapEmbedUrl: `https://www.google.com/maps?q=${encodeURIComponent('-11.8857166,-55.4457212')}&output=embed`,
      phone: '556692165440',
    }
  },
  computed: {
    displayPhone(): string {
      return '(66) 9216-5440'
    },
    telHref(): string {
      return `tel:+${this.phone}`
    },
    waHref(): string {
      return `https://wa.me/${this.phone}`
    },
  },
})
</script>

<style scoped></style>
