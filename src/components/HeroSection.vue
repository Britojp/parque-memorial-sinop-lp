  <template>
  <section id="hero" class="relative overflow-hidden text-white">
    <div class="absolute inset-0" :style="{ transform: bgTransform, willChange: 'transform' }">
      <img :src="bgImage" class="w-full h-full object-cover hero-kenburns" />
      <div
        class="absolute inset-0 bg-gradient"
        :style="{ transform: overlayTransform, willChange: 'transform' }"
      ></div>
    </div>
    <div class="relative mx-auto max-w-[var(--container-width)] px-4 py-20 md:py-28">
      <div class="max-w-3xl">
        <h1 class="font-heading text-4xl md:text-6xl font-semibold leading-tight animate-fadeUp">
          Cuidado, respeito e acolhimento em cada detalhe
        </h1>
        <p class="mt-4 text-white/90 text-base md:text-lg animate-fadeUp delay-150">
          Atendimento 24 horas para amparar sua família nos momentos mais delicados.
        </p>
        <div class="mt-8 flex flex-wrap gap-3 animate-fadeUp delay-300">
          <a
            href="#contato"
            class="px-5 py-3 bg-white text-ink text-sm md:text-base hover:bg-brand-600 hover:text-white focus-ring-brand"
            >Falar com um consultor</a
          >
          <a
            href="#canal"
            class="px-5 py-3 border border-white/40 text-white text-sm md:text-base hover:bg-white hover:text-ink focus-ring-brand"
            >Conheça nossa estrutura</a
          >
        </div>
      </div>
    </div>
    <div
      class="absolute inset-x-0 bottom-6 flex flex-col items-center gap-1 pointer-events-none select-none"
    >
      <div
        class="w-9 h-9 rounded-full border border-white/40 text-white/90 flex items-center justify-center animate-float"
      >
        <svg
          width="18"
          height="18"
          viewBox="0 0 24 24"
          fill="currentColor"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            d="M12 16a1 1 0 0 1-.7-.29l-6-6a1 1 0 1 1 1.4-1.42L12 13.59l5.3-5.3a1 1 0 1 1 1.4 1.42l-6 6A1 1 0 0 1 12 16z"
          />
        </svg>
      </div>
      <span class="text-[11px] uppercase tracking-wide text-white/80">Arraste</span>
    </div>
    <div class="absolute inset-x-0 bottom-0 h-2 bg-white/15"></div>
  </section>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent({
  name: 'HeroSection',
  data() {
    return {
      bgImage: new URL('@/assets/homem-senior-comemorando-seu-aniversario.jpg', import.meta.url)
        .href,
      enableParallax: true as boolean,
      rafId: null as number | null,
      targetX: 0 as number,
      targetY: 0 as number,
      currentX: 0 as number,
      currentY: 0 as number,
      bgTransform: '' as string,
      overlayTransform: '' as string,
    }
  },
  methods: {
    onMouseMove(e: MouseEvent) {
      if (!this.enableParallax) return
      const cx = window.innerWidth * 0.5
      const cy = window.innerHeight * 0.5
      const nx = (e.clientX - cx) / cx
      const ny = (e.clientY - cy) / cy
      this.targetX = Math.max(-1, Math.min(1, nx))
      this.targetY = Math.max(-1, Math.min(1, ny))
      if (this.rafId === null) this.rafId = window.requestAnimationFrame(this.tick)
    },
    onMouseLeave() {
      if (!this.enableParallax) return
      this.targetX = 0
      this.targetY = 0
      if (this.rafId === null) this.rafId = window.requestAnimationFrame(this.tick)
    },
    tick() {
      const lerp = 0.08
      this.currentX += (this.targetX - this.currentX) * lerp
      this.currentY += (this.targetY - this.currentY) * lerp
      const bgMax = 12
      const ovMax = -8
      const bx = (this.currentX * bgMax).toFixed(2)
      const by = (this.currentY * bgMax).toFixed(2)
      const ox = (this.currentX * ovMax).toFixed(2)
      const oy = (this.currentY * ovMax).toFixed(2)
      this.bgTransform = `translate3d(${bx}px, ${by}px, 0)`
      this.overlayTransform = `translate3d(${ox}px, ${oy}px, 0)`
      const done =
        Math.abs(this.currentX - this.targetX) < 0.002 &&
        Math.abs(this.currentY - this.targetY) < 0.002
      if (!done) {
        this.rafId = window.requestAnimationFrame(this.tick)
      } else {
        this.rafId = null
      }
    },
  },
  mounted() {
    const reduce = window.matchMedia('(prefers-reduced-motion: reduce)').matches
    const coarse = window.matchMedia('(pointer: coarse)').matches
    this.enableParallax = !(reduce || coarse)
    if (this.enableParallax) {
      window.addEventListener('mousemove', this.onMouseMove)
      window.addEventListener('mouseleave', this.onMouseLeave)
    }
  },
  beforeUnmount() {
    if (this.enableParallax) {
      window.removeEventListener('mousemove', this.onMouseMove)
      window.removeEventListener('mouseleave', this.onMouseLeave)
    }
    if (this.rafId !== null) cancelAnimationFrame(this.rafId)
  },
})
</script>

<style scoped>
@keyframes kenburns {
  0% {
    transform: scale(1) translateY(0);
  }
  100% {
    transform: scale(1.08) translateY(-1.5%);
  }
}
.hero-kenburns {
  animation: kenburns 18s ease-in-out infinite alternate;
}
@keyframes fadeUp {
  0% {
    opacity: 0;
    transform: translateY(12px);
  }
  100% {
    opacity: 1;
    transform: translateY(0);
  }
}
.animate-fadeUp {
  animation: fadeUp 700ms ease forwards;
}
.delay-150 {
  animation-delay: 150ms;
}
.delay-300 {
  animation-delay: 300ms;
}
@keyframes floatY {
  0% {
    transform: translateY(0);
    opacity: 0.9;
  }
  50% {
    transform: translateY(4px);
    opacity: 1;
  }
  100% {
    transform: translateY(0);
    opacity: 0.9;
  }
}
.animate-float {
  animation: floatY 1.6s ease-in-out infinite;
}
</style>
