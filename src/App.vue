<script setup lang="ts">
import WhatsAppButton from './components/WhatsAppButton.vue'
</script>

<template>
  <router-view />
  <WhatsAppButton />
</template>

<style scoped>
:deep(#app) {
  display: contents;
}
</style>
