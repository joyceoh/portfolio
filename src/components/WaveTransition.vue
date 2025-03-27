<!-- WaveTransition.vue -->
<template>
  <div class="wave-container">
    <svg
      class="wave"
      :style="{ transform: `translateY(${wavePosition}px)` }"
      xmlns="http://www.w3.org/2000/svg"
      viewBox="0 0 1440 120"
      preserveAspectRatio="none"
    >
      <path
        :d="wavePath"
        :fill="waveColor"
        fill-opacity="0.8"
      ></path>
    </svg>
    <div class="content">
      <slot></slot>
    </div>
  </div>
</template>

<script>
export default {
  name: 'WaveTransition',
  props: {
    waveColor: {
      type: String,
      default: '#4f46e5' // Indigo color by default
    },
    scrollSensitivity: {
      type: Number,
      default: 0.3 // Controls how fast wave responds to scroll
    }
  },
  data() {
    return {
      scrollY: 0,
      waveAmplitude: 30,
      waveFrequency: 0.01,
      wavePhase: 0
    }
  },
  computed: {
    wavePosition() {
      // Calculate wave position based on scroll
      return this.scrollY * this.scrollSensitivity
    },
    wavePath() {
      // Create a dynamic wave path
      const height = 120
      const width = 1440
      
      // Animate wave phase based on scroll position
      this.wavePhase = (this.scrollY * 0.002) % (Math.PI * 2)
      
      let path = `M0,${height / 2}`
      
      // Generate wave points
      for (let x = 0; x <= width; x += 20) {
        const y = Math.sin(x * this.waveFrequency + this.wavePhase) * this.waveAmplitude + (height / 2)
        path += ` L${x},${y}`
      }
      
      // Close the path
      path += ` L${width},${height} L0,${height} Z`
      
      return path
    }
  },
  mounted() {
    window.addEventListener('scroll', this.handleScroll)
  },
  beforeUnmount() {
    window.removeEventListener('scroll', this.handleScroll)
  },
  methods: {
    handleScroll() {
      this.scrollY = window.scrollY
      console.log('Scrolling detected:', this.scrollY)
    }
  }
}
</script>

<style scoped>
.wave-container {
  position: relative;
  overflow: hidden;
  width: 100%;
  height: 120px; /* Set a specific height */
  margin: -60px 0; /* Negative margin to overlap with sections */
}

.wave {
  position: absolute;
  width: 100%;
  height: 120px;
  top: -60px;
  left: 0;
  transition: transform 0.3s ease-out;
  z-index: 5;
  /* Make the wave more visible for debugging */
  filter: drop-shadow(0 0 5px rgba(0,0,0,0.3));
}

.content {
  position: relative;
  z-index: 10;
}
</style>
