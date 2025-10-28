<template>
  <a
    :href="whatsAppUrl"
    target="_blank"
    rel="noopener noreferrer"
    aria-label="Abrir WhatsApp"
    class="fixed bottom-5 right-5 z-50"
  >
    <span
      class="inline-flex items-center justify-center rounded-full bg-[#25D366] text-white shadow-lg w-14 h-14 hover:scale-105 active:scale-95 transition-transform duration-150 focus-ring-brand wabounce"
    >
      <svg
        width="28"
        height="28"
        viewBox="0 0 32 32"
        fill="currentColor"
        xmlns="http://www.w3.org/2000/svg"
      >
        <path
          d="M19.11 17.41c-.27-.14-1.59-.79-1.84-.88-.25-.09-.43-.14-.62.14-.18.27-.71.88-.87 1.06-.16.18-.32.2-.59.07-.27-.14-1.13-.41-2.15-1.31-.79-.7-1.32-1.57-1.48-1.84-.16-.27-.02-.42.12-.55.12-.12.27-.32.41-.48.14-.16.18-.27.27-.45.09-.18.05-.34-.02-.48-.07-.14-.62-1.49-.85-2.04-.22-.53-.45-.46-.62-.46-.16 0-.34-.02-.52-.02-.18 0-.48.07-.73.34-.25.27-.96.94-.96 2.29 0 1.36.98 2.68 1.11 2.86.14.18 1.93 2.95 4.68 4.02.65.28 1.16.45 1.56.58.65.21 1.24.18 1.71.11.52-.08 1.59-.65 1.81-1.28.23-.63.23-1.17.16-1.28-.07-.11-.25-.18-.52-.32z"
        />
        <path
          d="M26.6 5.41C23.88 2.7 20.13 1.17 16.18 1.2 8.53 1.25 2.4 7.52 2.44 15.18c.01 2.45.65 4.79 1.86 6.85L2 30.8l8.95-2.3c1.99 1.09 4.24 1.67 6.53 1.67h.03c7.66-.04 13.79-6.31 13.75-13.96-.02-3.74-1.47-7.25-4.06-9.8zM16.5 27.1h-.02c-2.06 0-4.08-.55-5.85-1.6l-.42-.25-5.31 1.37 1.42-5.18-.27-.44c-1.15-1.86-1.76-3.99-1.77-6.2C4.26 8.7 9.57 3.33 16.2 3.29c3.34-.02 6.48 1.28 8.85 3.66 2.36 2.38 3.67 5.54 3.69 8.9.03 6.84-5.53 11.25-12.24 11.25z"
        />
      </svg>
    </span>
  </a>
</template>

<script lang="ts">
import { defineComponent, computed } from 'vue'

export default defineComponent({
  name: 'WhatsAppButton',
  props: {
    phone: { type: String, default: '5511999999999' },
    message: { type: String, default: 'Olá! Gostaria de saber mais.' },
  },
  setup(props) {
    const whatsAppUrl = computed(() => {
      const base = 'https://wa.me/'
      const text = encodeURIComponent(props.message)
      return `${base}${props.phone}?text=${text}`
    })
    return { whatsAppUrl }
  },
})
</script>

<style scoped>
@keyframes wabounce {
  0%,
  100% {
    transform: translateY(0);
  }
  50% {
    transform: translateY(-12%);
  }
}
.wabounce {
  animation: wabounce 1.6s ease-in-out infinite;
}
</style>
