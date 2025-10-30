<template>
  <section class="relative w-full overflow-hidden">
    <div class="absolute inset-0">
      <div class="repeated-image-layer" :style="containerStyle"></div>
    </div>
    <div class="relative mx-auto flex max-w-6xl flex-col items-center gap-5 px-4 py-14 text-center text-white sm:py-20">
      <p v-if="badgeLabel" class="text-[11px] uppercase tracking-[0.45em] text-white/70">
        {{ badgeLabel }}
      </p>
      <h2 v-if="title" class="text-2xl font-semibold leading-tight text-white sm:text-[32px]">
        {{ title }}
      </h2>
      <p v-if="subtitle" class="max-w-4xl text-sm text-white/85 sm:text-base">
        {{ subtitle }}
      </p>
      <div class="flex flex-col items-center gap-3 sm:flex-row">
        <p v-if="featureHighlight" class="text-xs uppercase tracking-[0.28em] text-white/85">
          {{ featureHighlight }}
        </p>
        <a
          v-if="ctaLabel && ctaHref"
          :href="ctaHref"
          class="inline-flex items-center justify-center gap-2 rounded-xl bg-white px-6 py-3 text-xs font-semibold uppercase tracking-wide text-ink transition hover:bg-brand hover:text-white focus-ring-brand sm:text-sm"
        >
          {{ ctaLabel }}
        </a>
      </div>
    </div>
  </section>
</template>

<script lang="ts">
import { defineComponent } from 'vue'
import type { PropType } from 'vue'

export default defineComponent({
  name: 'RepeatedImageBanner',
  props: {
    src: {
      type: String,
      default: () => new URL('@/assets/pdf/image2.png', import.meta.url).href,
    },
    height: {
      type: Number,
      default: 220,
    },
    positionY: {
      type: String,
      default: 'center',
      validator: (value: string) => ['top', 'center', 'bottom'].includes(value),
    },
    overlayOpacity: {
      type: Number,
      default: 0.45,
    },
    title: {
      type: String,
      default: 'Estrutura completa que acolhe sua família com dignidade',
    },
    subtitle: {
      type: String,
      default:
        'Salas climatizadas, capela ecumênica e equipe humanizada garantem um ambiente sereno para a despedida.',
    },
    ctaLabel: {
      type: String as PropType<string | null>,
      default: null,
    },
    ctaHref: {
      type: String as PropType<string | null>,
      default: null,
    },
  },
  computed: {
    containerStyle(): Record<string, string> {
      const clampOverlay = Math.max(0, Math.min(1, this.overlayOpacity))
      const startAlpha = Math.min(1, clampOverlay + 0.25)
      const gradientLayer = `linear-gradient(90deg, rgba(9, 26, 44, ${startAlpha}), rgba(9, 26, 44, ${clampOverlay}), rgba(9, 26, 44, 0))`
      const layers = [gradientLayer, `url(${this.src})`]
      return {
        backgroundImage: layers.join(', '),
        minHeight: `${this.height}px`,
        backgroundPosition: `left ${this.positionY}`,
        backgroundRepeat: 'repeat-x',
        backgroundSize: 'auto 100%',
      }
    },
  },
})
</script>

<style scoped>
.repeated-image-layer {
  height: 100%;
  width: 100%;
}
</style>