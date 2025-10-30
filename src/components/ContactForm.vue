<template>
  <section id="contato" class="bg-white">
    <div class="mx-auto max-w-[var(--container-width)] px-4 py-12 md:py-16">
      <div class="grid gap-10 md:grid-cols-[0.85fr_1.15fr] md:items-center">
        <div class="space-y-4">
          <h2 class="font-heading text-2xl font-semibold text-ink md:text-3xl">
            Fale agora com o consultor para receber mais informações
          </h2>
          <p class="text-sm text-ink/80 md:text-base">
            Conheça nossa estrutura: um ambiente acolhedor, acessível e humanizado, pensado para
            receber sua família com respeito.
          </p>
          <ul class="space-y-3 text-sm text-ink/70">
            <li v-for="(item, idx) in diffItems" :key="idx" class="flex items-start gap-3">
              <span
                class="mt-1 inline-flex h-6 w-6 items-center justify-center rounded-full bg-brand/10 text-brand"
              >
                <svg
                  width="14"
                  height="14"
                  viewBox="0 0 24 24"
                  fill="none"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                    d="M20 6L9 17l-5-5"
                    stroke="currentColor"
                    stroke-width="2"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                  />
                </svg>
              </span>
              <span>{{ item.title }}</span>
            </li>
          </ul>
        </div>
        <form
          class="rounded-3xl border border-ink/5 bg-paper p-6 shadow-xl md:p-8"
          @submit.prevent="onSubmit"
        >
          <div class="space-y-5">
            <div>
              <label class="block text-xs font-semibold uppercase tracking-wide text-ink/60"
                >Nome completo</label
              >
              <input
                v-model="formData.name"
                type="text"
                required
                class="mt-2 w-full rounded-2xl border border-transparent bg-white px-4 py-3 text-sm text-ink shadow-sm transition focus:border-brand focus:outline-none focus:ring-2 focus:ring-brand/30"
                placeholder="Como devemos chamar você?"
              />
            </div>
            <div>
              <label class="block text-xs font-semibold uppercase tracking-wide text-ink/60"
                >WhatsApp</label
              >
              <input
                v-model="formData.phone"
                type="tel"
                required
                class="mt-2 w-full rounded-2xl border border-transparent bg-white px-4 py-3 text-sm text-ink shadow-sm transition focus:border-brand focus:outline-none focus:ring-2 focus:ring-brand/30"
                placeholder="(00) 00000-0000"
              />
            </div>
            <div>
              <label class="block text-xs font-semibold uppercase tracking-wide text-ink/60"
                >Mensagem</label
              >
              <textarea
                v-model="formData.message"
                rows="4"
                required
                class="mt-2 w-full rounded-2xl border border-transparent bg-white px-4 py-3 text-sm text-ink shadow-sm transition focus:border-brand focus:outline-none focus:ring-2 focus:ring-brand/30"
                placeholder="Como podemos ajudar você?"
              ></textarea>
            </div>
            <div class="flex flex-col gap-4">
              <button
                type="submit"
                class="inline-flex items-center justify-center gap-2 rounded-xl bg-brand px-6 py-3 text-sm font-semibold uppercase tracking-wide text-white shadow-xl transition hover:bg-brand-600 focus:outline-none focus:ring-2 focus:ring-brand focus:ring-offset-2 focus:ring-offset-white md:text-base"
              >
                Enviar para o WhatsApp
              </button>
              <p class="text-[11px] text-ink/60">
                Seus dados são protegidos. Nossa equipe responderá pelo WhatsApp em poucos minutos.
              </p>
            </div>
          </div>
        </form>
      </div>
    </div>
  </section>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

type ContactFormState = {
  name: string
  phone: string
  message: string
}

export default defineComponent({
  name: 'ContactForm',
  data() {
    return {
      formData: {
        name: '',
        phone: '',
        message: '',
      } as ContactFormState,
      whatsAppNumber: '556692165440',
      diffItems: [
        { title: 'Planejado' },
        { title: 'Humanizado' },
        { title: 'Acessível com normas de acessibilidade' },
        { title: 'Complexo completo' },
        { title: 'Evita cortejos' },
        { title: 'Investimento seguro' },
        { title: 'Evolução contínua' },
      ],
    }
  },
  methods: {
    onSubmit() {
      if (!this.formData.name || !this.formData.phone || !this.formData.message) {
        return
      }
      const normalizedPhone = this.formData.phone.replace(/\D/g, '')
      const greeting = `Olá, meu nome é ${this.formData.name}.`
      const intent = 'Preciso de orientação completa para acolher minha família.'
      const contactDetails = `Telefone/WhatsApp informado: ${normalizedPhone}`
      const customMessage = `Mensagem: ${this.formData.message}`
      const finalMessage = `${greeting}\n${intent}\n${contactDetails}\n${customMessage}`
      const encodedMessage = encodeURIComponent(finalMessage)
      const targetPhone = this.whatsAppNumber
      const url = `https://wa.me/${targetPhone}?text=${encodedMessage}`
      window.open(url, '_blank')
    },
  },
})
</script>

<style scoped></style>
