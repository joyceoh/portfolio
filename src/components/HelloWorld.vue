<script setup>
import { ref } from 'vue'

defineProps({
  msg: String,
})

const count = ref(0)
</script>

<template>
  <section class='title'>
  <h1>Welcome! <br> My name is  
    <span class="boldedname">Joyce Oh</span>.
  </h1>
  <h3>A full stack software engineer devoted to pushing creative boundries and creating user centered application.</h3>
  </section>

  <div class="card">
    <button type="button" @click="count++">count is {{ count }}</button>
  </div>

</template>

<style scoped>
  .title {
    padding: 3em;
  }

</style>
