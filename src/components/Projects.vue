<script setup>
import { ref } from 'vue'
import Project from './Project.vue'

const projects = ref([
  {
    id: 1,
    title: "Alki",
    description: "A platform to study using a learning technique called spaced repeition. The application features customizability for personalized studying.",
    technologies: ["TypeScript", "React", "Tailwind", "Spring Boot", "Java", "MongoDB"],
    imageUrl: "/alki.gif",  // Make sure to add this image to your public folder
    githubUrl: "https://github.com/joyceoh/portfolio",
    liveUrl: "alkiprep.com"  // Replace with actual URL when deployed
  },
  {
    id: 2,
    title: "SusCode",
    description: "A security vulnerbility checker for VSCode extensions. Analyzing the extension source code's various patterns and dependencies.",
    technologies: ["React", "Typescript", "Node.js", "MongoDB", "Express", "Vue"],
    imageUrl: "/SusCode_Demo.gif",
    liveUrl: "https://www.suscode.dev/"
  },
  {
    id: 3,
    title: "Valorant Randomizer",
    description: "Using the offical Valorant API, the project is meant to be used with a duo to randomly pick an agent and weapon.",
    technologies: ["JavaScript", "HTML5", "CSS3", "API Integration"],
    imageUrl: "valorant.gif",
    githubUrl: "https://github.com/joyceoh/project3",
    liveUrl: ""
  },
  {
    id: 4,
    title: "PawMatch",
    description: "An application focused on two different user bases -users and shelters - to create greater accessibility for pet adoption.",
    technologies: ["React", "Node.js", "MongoDB", "Express"],
    imageUrl: "/project2-preview.png",
    githubUrl: "https://github.com/joyceoh/project2",
    liveUrl: ""
  },
  {
    id: 5,
    title: "Marvin",
    description: "A Marvel guessing game using OpenAI API",
    technologies: ["Vue", "Vite", "Express"],
    imageUrl: "/project2-preview.png",
    githubUrl: "https://github.com/joyceoh/project2",
    liveUrl: ""
  },
  {
    id: 6,
    title: "Arcus",
    description: "A social treatment tracker for cancer patients.",
    technologies: ["React", "Vite", "Python", "SQL"],
    imageUrl: "/project2-preview.png",
    githubUrl: "https://github.com/joyceoh/project2",
    liveUrl: ""
  },

  // Add more projects as needed
])
</script>

<template>
  <section class="projects-section">
    <h3>Projects</h3>
    <div class="projects-container">
      <Project 
        v-for="project in projects" 
        :key="project.id"
        :title="project.title"
        :description="project.description"
        :technologies="project.technologies"
        :imageUrl="project.imageUrl"
        :githubUrl="project.githubUrl"
        :liveUrl="project.liveUrl"
      />
    </div>
  </section>
</template>

<style scoped>
.projects-section {
  padding: 3em;
  background-color: #fff1e6;
}

.projects-container {
  display: grid;
  grid-template-columns: 1fr;
  gap: 2rem;
  max-width: 1200px;
  margin: 0 auto;
  padding: 1rem;
}

h3 {
  margin-bottom: 2rem;
  text-align: center;
}

@media (min-width: 768px) {
  .projects-container {
    grid-template-columns: repeat(2, 1fr);
  }
}
</style>
