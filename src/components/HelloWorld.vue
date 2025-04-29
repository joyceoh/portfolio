<script setup>
</script>

<template>
    <section class='title'>
      <h1>Welcome! <br> My name is 
        <span class='name-container'>
          <span class="typed-out"> joyce oh</span>
        </span>
      </h1>
      <p>A full stack software engineer devoted to pushing creative boundries and creating user centered application.</p>
    </section>
</template>

<style scoped>
.title {
  padding: 3em;
  word-spacing: 1em;
  position: relative;
  z-index: 10; /* Ensure content appears above the animation */
  color: #333; /* Dark text for light background */
  min-height: 50vh; /* Ensure a minimum height for the section */
  display: flex;
  flex-direction: column;
  justify-content: center;
}

p {
  padding: 0 10em;
  font-size: 1.2em;
  word-spacing: 0;
}

.name-container {
  display: inline-flex;
  position: relative;
  vertical-align: baseline;
}

.typed-out{
  font-size: 1em;
  color: #CB997E;
  display: inline-block;
  overflow: hidden;
  letter-spacing: .1em; 
  border-right: .5em solid;
  white-space: nowrap;
  width: 0;
  font-family: "Ubuntu Sans Mono", monospace;
  font-optical-sizing: auto;
  font-style: normal;
  animation: 
    typing 3s steps(9, end) forwards,
    blinking 1s infinite;
}

@keyframes typing {
  from { width: 0 }
  to { width: 100% }
}

@keyframes blinking {
  from, to { border-color: transparent }
  50% { border-color: #CB997E }
}
</style>
