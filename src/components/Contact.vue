<script>
export default {

  
}
</script>
<template>
  <section class='contact'>
    <div>
    <h3>Contact Me: </h3>
    <a href="mailto:joyceoh246@gmail.com">
      <img src="@/assets/icons8-mail.svg" alt="Email icon" />
    </a>
    <a href='https://www.linkedin.com/in/joyce-oh/' target="_blank">
      <img src="@/assets/icons8-linkedin.svg" alt="linkedin icon"/>
    </a>
    <a href="https://github.com/joyceoh" target="_blank">
      <img src='@/assets/icons8-github.svg' alt="github icon">
    </a>
    <a href="https://bsky.app/profile/joyceoh.bsky.social" target="_blank">
      <img src='@/assets/icons8-bluesky.svg' style="height: 55px; padding-bottom: 10px" alt="bluesky icon"/>
    </a>
    </div>
  </section>
</template>

<style scoped>
  .contact {
    padding: 3em;
    background-color: #eddcd2;
    display: flex column;
    
  }
  h3 {
    color: #A5A58D;
  }

  img {
    width: 75px;
  }
  img:focus,
  img:focus-visible {
    outline: 2px auto -webkit-focus-ring-color/Users/jeoh/Downloads/icons8-bluesky-colored.svg ;
    
  }
</style>
