<template>
  <section class="bg-paper">
    <div class="mx-auto max-w-[var(--container-width)] px-4 py-12 md:py-16">
      <h2 class="text-2xl md:text-3xl font-semibold font-heading">Perguntas frequentes</h2>
      <ul class="mt-8 space-y-4 border-t border-black/10">
        <li
          v-for="(item, index) in items"
          :key="item.id"
          :class="[
            'relative border-t border-black/10',
            activeIndex === index ? 'bg-gradient-to-r from-brand/10 to-white' : 'bg-transparent',
          ]"
        >
          <h3>
            <button
              type="button"
              class="w-full grid grid-cols-[auto,1fr] items-start gap-4 text-left px-6 py-5 pr-14 hover:bg-white/5 transition-colors"
              :aria-expanded="activeIndex === index ? 'true' : 'false'"
              :aria-controls="`faq-panel-${item.id}`"
              :id="`faq-button-${item.id}`"
              @click="toggle(index)"
              @keydown="onKeydown($event, index)"
            >
              <span class="text-brand font-semibold tabular-nums">{{ formatIndex(index) }}</span>
              <span class="font-medium text-base md:text-lg">{{ item.q }}</span>
            </button>
          </h3>
          <button
            class="absolute top-3 right-4 text-brand p-2"
            type="button"
            :aria-expanded="activeIndex === index ? 'true' : 'false'"
            :aria-controls="`faq-panel-${item.id}`"
            :id="`faq-toggle-${item.id}`"
            @click="toggle(index)"
          >
            <svg
              v-if="activeIndex !== index"
              width="18"
              height="18"
              viewBox="0 0 24 24"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
              class="block"
            >
              <path
                d="M12 5v14M5 12h14"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
              />
            </svg>
            <svg
              v-else
              width="18"
              height="18"
              viewBox="0 0 24 24"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
              class="block"
            >
              <path
                d="M6 6l12 12M18 6L6 18"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
              />
            </svg>
          </button>
          <div
            v-show="activeIndex === index"
            :id="`faq-panel-${item.id}`"
            role="region"
            :aria-labelledby="`faq-button-${item.id}`"
            class="px-6 pb-6 text-sm md:text-base/relaxed opacity-90"
          >
            <p class="pt-2">{{ item.a }}</p>
          </div>
        </li>
      </ul>
    </div>
  </section>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

type FaqItem = { id: string; q: string; a: string }

export default defineComponent({
  name: 'FaqSection',
  data() {
    return {
      activeIndex: -1 as number,
      items: [
        {
          id: 'planos',
          q: 'Quais são as opções de planos e formas de pagamento?',
          a: 'Oferecemos planos com pagamento à vista ou parcelado. Parcelas são flexíveis e podem ser adaptadas ao seu orçamento após uma avaliação com nossos consultores.',
        },
        {
          id: 'documentacao',
          q: 'Quais documentos são necessários para contratar?',
          a: 'Documento de identificação com foto e CPF. Em alguns casos, comprovante de residência e certidão podem ser solicitados conforme o tipo de plano.',
        },
        {
          id: 'atendimento',
          q: 'O atendimento é 24 horas em casos de urgência?',
          a: 'Sim. Nossa equipe está disponível 24 horas para atendimento emergencial e orientações imediatas.',
        },
        {
          id: 'cerimonias',
          q: 'Como funcionam os prazos e a organização das cerimônias?',
          a: 'Os prazos são definidos com a família, respeitando procedimentos legais e a disponibilidade de capelas e espaços. Nossa equipe coordena toda a logística.',
        },
        {
          id: 'manutencao',
          q: 'Como é feita a manutenção dos jardins e espaços?',
          a: 'Contamos com equipe própria para manutenção contínua das áreas verdes, limpeza e conservação das estruturas.',
        },
        {
          id: 'transferencia',
          q: 'É possível transferir ou cancelar um plano?',
          a: 'Transferências seguem regras contratuais e avaliação da administração. Cancelamentos podem envolver prazos e condições específicas do contrato.',
        },
        {
          id: 'acessibilidade',
          q: 'Há acessibilidade e estacionamento no local?',
          a: 'Sim. Temos acessos acessíveis, vagas reservadas e áreas internas preparadas para receber pessoas com mobilidade reduzida.',
        },
        {
          id: 'visitas',
          q: 'Quais são os horários de visitação?',
          a: 'Os horários variam por dia da semana e feriados. Consulte nossa equipe para confirmar o melhor horário para sua visita.',
        },
        {
          id: 'contato',
          q: 'Como falar com um consultor?',
          a: 'Você pode usar o botão Planejar agora na página, o WhatsApp ou nosso telefone de atendimento para agendar uma conversa com um consultor.',
        },
      ] as FaqItem[],
    }
  },
  methods: {
    formatIndex(index: number) {
      const n = index + 1
      return n < 10 ? `0${n}` : String(n)
    },
    toggle(index: number) {
      this.activeIndex = this.activeIndex === index ? -1 : index
    },
    onKeydown(event: KeyboardEvent, index: number) {
      if (event.key === 'Enter' || event.key === ' ') {
        event.preventDefault()
        this.toggle(index)
      }
      if (event.key === 'ArrowDown') {
        event.preventDefault()
        const next = Math.min(this.items.length - 1, index + 1)
        const targetNext = this.items[next]
        if (!targetNext) return
        const id = `faq-button-${targetNext.id}`
        const el = document.getElementById(id)
        if (el) el.focus()
      }
      if (event.key === 'ArrowUp') {
        event.preventDefault()
        const prev = Math.max(0, index - 1)
        const targetPrev = this.items[prev]
        if (!targetPrev) return
        const id = `faq-button-${targetPrev.id}`
        const el = document.getElementById(id)
        if (el) el.focus()
      }
    },
  },
})
</script>

<style scoped></style>
