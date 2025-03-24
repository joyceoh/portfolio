<script setup>
  defineProps({
    title: String,
    description: String,
    technologies: Array,
    imageUrl: String,
    githubUrl: String,
    liveUrl: String
  })

</script>

<template>
  <div class="project-card">
    <div class="project-image">
      <img v-if="imageUrl" :src="imageUrl" :alt="title" />
      <div v-else class="placeholder-image">{{ title }}</div>
    </div>
    <div class="project-content">
      <h4>{{ title }}</h4>
      <p>{{ description }}</p>
      
      <div class="tech-stack">
        <span v-for="tech in technologies" :key="tech" class="tech-tag">
          {{ tech }}
        </span>
      </div>
      
      <div class="project-links">
        <a v-if="githubUrl" :href="githubUrl" target="_blank" class="project-link">
          <img src="@/assets/icons8-github.svg" alt="GitHub" class="link-icon" />
          Code
        </a>
        <a v-if="liveUrl" :href="liveUrl" target="_blank" class="project-link">
          <img src="@/assets/icons8-link-100.png" alt="Live Demo" class="link-icon" />
          Live Demo
        </a>
      </div>
    </div>
  </div>
</template>

<style scoped>
.project-card {
  display: flex;
  flex-direction: column;
  background-color: #f0efeb;
  border-radius: 8px;
  overflow: hidden;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  margin-bottom: 2rem;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.project-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
}

.project-image img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.placeholder-image {
  width: 100%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: #ddbea9;
  color: white;
  font-size: 1.5rem;
}

.project-content {
  padding: 1.5rem;
}

h4 {
  color: #cb997e;
  margin-top: 0;
  font-size: 1.4rem;
}

.tech-stack {
  display: flex;
  flex-wrap: wrap;
  margin: 1rem 0;
}

.tech-tag {
  background-color: #a5a58d;
  color: white;
  padding: 0.4rem 0.9rem;
  border-radius: 20px;
  font-size: 0.8rem;
  margin-right: 0.5rem;
  margin-bottom: 0.5rem;
}

.project-links {
  display: flex;
  margin-top: 1rem;
}

.project-link {
  display: flex;
  align-items: center;
  margin-right: 1rem;
  padding: 0.5rem 1rem;
  border-radius: 4px;
  background-color: #ddbea9;
  color: white;
  text-decoration: none;
  transition: background-color 0.3s;
}

.project-link:hover {
  background-color: #cb997e;
}

.link-icon {
  width: 20px;
  height: 20px;
  margin-right: 0.5rem;
}

@media (min-width: 768px) {
  /*.project-card {
    flex-direction: column;
    max-height: 950px;
  }*/
  
  .project-image {
    flex: 0 0 40%;
    height: auto;
  }
  
  .project-content {
    flex: 1;
  }
}
</style>
