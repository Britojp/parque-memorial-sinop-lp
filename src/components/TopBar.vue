<template>
  <div class="bg-topbar text-white">
    <div
      class="mx-auto max-w-[var(--container-width)] px-4 py-2 flex items-center justify-center gap-4"
    >
      <transition name="fade-slide" mode="out-in">
        <span :key="messageIndex" class="text-xs md:text-sm" aria-live="polite">{{
          messages[messageIndex]
        }}</span>
      </transition>
      <div class="flex items-center gap-4 text-xs">
        <a href="#" class="inline-flex items-center gap-2 opacity-90 hover:opacity-100">
          <svg
            width="16"
            height="16"
            viewBox="0 0 24 24"
            fill="currentColor"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              d="M22 12.07C22 6.48 17.52 2 11.93 2S2 6.48 2 12.07C2 17.1 5.66 21.22 10.44 22v-7.03H7.9v-2.9h2.54V9.41c0-2.5 1.49-3.88 3.77-3.88 1.09 0 2.23.2 2.23.2v2.46h-1.26c-1.24 0-1.63.77-1.63 1.56v1.87h2.78l-.44 2.9h-2.34V22C18.34 21.22 22 17.1 22 12.07z"
            />
          </svg>
          <span>Facebook</span>
        </a>
        <a href="#" class="inline-flex items-center gap-2 opacity-90 hover:opacity-100">
          <svg
            width="16"
            height="16"
            viewBox="0 0 24 24"
            fill="currentColor"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              d="M7 2C4.243 2 2 4.243 2 7v10c0 2.757 2.243 5 5 5h10c2.757 0 5-2.243 5-5V7c0-2.757-2.243-5-5-5H7zm0 2h10c1.654 0 3 1.346 3 3v10c0 1.654-1.346 3-3 3H7c-1.654 0-3-1.346-3-3V7c0-1.654 1.346-3 3-3zm5 3a5 5 0 100 10 5 5 0 000-10zm0 2a3 3 0 110 6 3 3 0 010-6zm5.5-.75a1.25 1.25 0 100 2.5 1.25 1.25 0 000-2.5z"
            />
          </svg>
          <span>Instagram</span>
        </a>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent({
  name: 'TopBar',
  data() {
    return {
      messages: ['Siga-nos nas redes sociais!', 'Atendimento 24h - (XX) XXXXX-XXX'],
      messageIndex: 0 as number,
      intervalId: null as number | null,
    }
  },
  mounted() {
    this.intervalId = window.setInterval(() => {
      this.messageIndex = (this.messageIndex + 1) % this.messages.length
    }, 5000)
  },
  beforeUnmount() {
    if (this.intervalId !== null) {
      clearInterval(this.intervalId)
    }
  },
})
</script>

<style scoped>
.fade-slide-enter-active,
.fade-slide-leave-active {
  transition:
    opacity 300ms ease,
    transform 300ms ease;
}
.fade-slide-enter-from {
  opacity: 0;
  transform: translateY(6px);
}
.fade-slide-leave-to {
  opacity: 0;
  transform: translateY(-6px);
}
</style>
