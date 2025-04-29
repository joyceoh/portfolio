<template>
  <div class="animated-background">
    <div class="dots-element"></div>
    <div class="dots-element-2"></div>
    <slot></slot>
  </div>
</template>

<script setup>
// Component can be further customized with props if needed
</script>

<style scoped>
.animated-background {
  position: relative;
  width: 100%;
  min-height: 100%;
  background: #123;
  overflow: hidden;
}

.dots-element {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 0;
}

.dots-element::before, .dots-element::after {
  position: fixed;
  top: 50%;
  left: 50%;
  width: 3em;
  height: 3em;
  content: '.';
  color: transparent;
  mix-blend-mode: screen;
}

.dots-element::before {
  text-shadow: 
    0.4em 1.2em 7px hsla(120, 100%, 50%, 0.9),
    -0.3em 0.5em 7px hsla(240, 100%, 50%, 0.9),
    1.2em -0.2em 7px hsla(60, 100%, 50%, 0.9),
    0.8em 0.8em 7px hsla(0, 100%, 50%, 0.9),
    -0.2em -0.3em 7px hsla(180, 100%, 50%, 0.9),
    0.6em -1.1em 7px hsla(300, 100%, 50%, 0.9),
    -0.5em 0.9em 7px hsla(150, 100%, 50%, 0.9),
    1.1em -0.7em 7px hsla(210, 100%, 50%, 0.9);
  animation: dots-move-1 44s -27s infinite ease-in-out alternate;
}

.dots-element::after {
  text-shadow: 
    -0.5em 0.7em 7px hsla(30, 100%, 50%, 0.9),
    0.7em -0.3em 7px hsla(210, 100%, 50%, 0.9),
    -1.2em -0.5em 7px hsla(90, 100%, 50%, 0.9),
    0.3em 1.3em 7px hsla(330, 100%, 50%, 0.9),
    -0.8em -1.1em 7px hsla(150, 100%, 50%, 0.9),
    1.1em 0.2em 7px hsla(270, 100%, 50%, 0.9),
    0.2em -1.3em 7px hsla(45, 100%, 50%, 0.9),
    -1em -0.4em 7px hsla(315, 100%, 50%, 0.9);
  animation: dots-move-2 43s -32s infinite ease-in-out alternate;
}

.dots-element-2 {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 0;
}

.dots-element-2::before {
  position: fixed;
  top: 50%;
  left: 50%;
  width: 3em;
  height: 3em;
  content: '.';
  color: transparent;
  mix-blend-mode: screen;
  text-shadow: 
    0.9em -0.8em 7px hsla(45, 100%, 50%, 0.9),
    -1.1em 0.4em 7px hsla(135, 100%, 50%, 0.9),
    0.3em 0.9em 7px hsla(225, 100%, 50%, 0.9),
    -0.4em -0.5em 7px hsla(315, 100%, 50%, 0.9),
    1em 0.1em 7px hsla(180, 100%, 50%, 0.9),
    -0.6em 0.7em 7px hsla(100, 100%, 50%, 0.9),
    0.5em -1.2em 7px hsla(75, 100%, 50%, 0.9),
    -0.9em -0.3em 7px hsla(255, 100%, 50%, 0.9);
  animation: dots-move-3 42s -23s infinite ease-in-out alternate;
}

.dots-element-2::after {
  position: fixed;
  top: 50%;
  left: 50%;
  width: 3em;
  height: 3em;
  content: '.';
  color: transparent;
  mix-blend-mode: screen;
  text-shadow: 
    -0.3em 1.1em 7px hsla(75, 100%, 50%, 0.9),
    0.5em -0.9em 7px hsla(165, 100%, 50%, 0.9),
    -1.2em -0.3em 7px hsla(255, 100%, 50%, 0.9),
    0.7em 0.5em 7px hsla(345, 100%, 50%, 0.9),
    -0.5em -0.8em 7px hsla(20, 100%, 50%, 0.9),
    1.3em 0.3em 7px hsla(290, 100%, 50%, 0.9),
    -0.7em 0.6em 7px hsla(200, 100%, 50%, 0.9),
    0.8em -0.5em 7px hsla(320, 100%, 50%, 0.9);
  animation: dots-move-4 41s -19s infinite ease-in-out alternate;
}

@keyframes dots-move-1 {
  from {
    transform: rotate(0deg) scale(12) translateX(-20px);
  }
  to {
    transform: rotate(360deg) scale(18) translateX(20px);
  }
}

@keyframes dots-move-2 {
  from {
    transform: rotate(20deg) scale(13) translateX(-15px);
  }
  to {
    transform: rotate(380deg) scale(17) translateX(25px);
  }
}

@keyframes dots-move-3 {
  from {
    transform: rotate(-10deg) scale(11) translateX(-25px);
  }
  to {
    transform: rotate(350deg) scale(19) translateX(15px);
  }
}

@keyframes dots-move-4 {
  from {
    transform: rotate(40deg) scale(10) translateX(-10px);
  }
  to {
    transform: rotate(400deg) scale(16) translateX(30px);
  }
}
</style>
