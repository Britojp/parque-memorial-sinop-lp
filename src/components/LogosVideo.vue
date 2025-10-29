<template>
  <section class="bg-paper">
    <div class="mx-auto max-w-[var(--container-width)] px-4 py-12">
      <video
        class="w-full h-auto border border-white/15"
        :src="videoSrc"
        autoplay
        muted
        loop
        playsinline
        preload="metadata"
      ></video>
    </div>
  </section>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent({
  name: 'LogosVideo',
  data() {
    return {
      videoSrc: new URL('@/assets/apresentacoes-logos.mp4', import.meta.url).href,
    }
  },
})
</script>

<style scoped></style>
