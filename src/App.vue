<script setup>
  import HelloWorld from './components/HelloWorld.vue'
  import AboutMe from './components/AboutMe.vue'
  import Background from './components/Background.vue'
  import Projects from './components/Projects.vue'
  import Contact from './components/Contact.vue'
  import { ref, onMounted, onBeforeUnmount } from 'vue';

  const originalTitle = ref(document.title);
  const inactiveTitle = ref("Come back!");
  const activeFavicon = ref("@/assets/heart.png");
  const inactiveFavicon = ref("@/assets/cry.png");

  const changeFavicon = (iconPath) => {
    let link = document.querySelector("link[rel~='icon']");
    if (!link) {
      link = document.createElement("link");
      link.rel = "icon";
      document.head.appendChild(link);
    }
    link.href = iconPath;
  };

  const handleVisibilityChange = () => {
    if (document.hidden) {
      document.title = inactiveTitle.value;
      changeFavicon(inactiveFavicon.value);
    } else {
      document.title = originalTitle.value;
      changeFavicon(activeFavicon.value);
    }
  };

  onMounted(() => {
    document.addEventListener("visibilitychange", handleVisibilityChange);
  });

  onBeforeUnmount(() => {
    document.removeEventListener("visibilitychange", handleVisibilityChange);
  });
</script>

<template>
  <HelloWorld/>
  <AboutMe/>
  <Background/>
  <Projects/>
  <Contact/>
</template>

<style>
</style>
