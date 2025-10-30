<template>
  <div
    class="carouselContainer"
    :style="{ '--duration': duration, '--height': heightPx, minHeight: heightPx }"
  >
    <div class="carouselTrack" :class="{ reverse }">
      <img
        v-for="(src, index) in doubledImages"
        :key="index"
        :src="src"
        :alt="`carousel-image-${index % images.length}`"
        class="carouselImage"
        draggable="false"
      />
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

const modules = import.meta.glob('@/assets/carousel/*', { eager: true, as: 'url' }) as Record<
  string,
  string
>

export default defineComponent({
  name: 'InfiniteCarousel',
  props: {
    speedSeconds: { type: Number, default: 40 },
    height: { type: Number, default: 260 },
    reverse: { type: Boolean, default: false },
  },
  computed: {
    images(): string[] {
      return Object.entries(modules)
        .sort((a, b) => a[0].localeCompare(b[0]))
        .map(([, url]) => url)
    },
    doubledImages(): string[] {
      return this.images.concat(this.images)
    },
    duration(): string {
      return `${this.speedSeconds}s`
    },
    heightPx(): string {
      return `${this.height}px`
    },
  },
})
</script>

<style scoped>
.carouselContainer {
  width: 100%;
  overflow: hidden;
}

.carouselTrack {
  display: flex;
  flex-wrap: nowrap;
  align-items: center;
  animation-name: scroll;
  animation-duration: var(--duration);
  animation-timing-function: linear;
  animation-iteration-count: infinite;
}

.carouselTrack.reverse {
  animation-direction: reverse;
}

.carouselImage {
  flex: 0 0 auto;
  height: var(--height);
  width: auto;
  user-select: none;
  filter: brightness(0.7) saturate(1.05);
  transition:
    transform 400ms ease,
    filter 300ms ease;
  transform-origin: center;
  will-change: transform;
  position: relative;
}

.carouselImage:hover {
  filter: none;
  transform: scale(1.04);
  z-index: 1;
}

@keyframes scroll {
  0% {
    transform: translateX(0);
  }
  100% {
    transform: translateX(-50%);
  }
}

@media (max-width: 640px) {
  .carouselTrack {
    animation-duration: calc(var(--duration) * 0.6);
  }
}
</style>
