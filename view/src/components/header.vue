<template>
  <header>
    <div class="logo">
      <img src="@/assets/menu.png" alt="lorena-logo" />
    </div>
    <nav>
      <router-link id="home" to="/">🌎</router-link>
    </nav>
    <div id="scrolling" v-dragscroll>
      <router-link class="btn" to="/">Cabelos</router-link>
      <router-link class="btn" to="/">Vídeos</router-link>
      <router-link class="btn" to="/">Moda</router-link>
      <router-link class="btn" to="/">Música</router-link>
      <router-link class="btn" to="/">Dicas</router-link>
      <router-link class="btn" to="/">Motivação</router-link>
      <router-link class="btn" to="/">Contato</router-link>
    </div>
  </header>
</template>
<script>
import { dragscroll } from "vue-dragscroll";

export default {
  name: "Header",
  methods: {},
  directives: {
    dragscroll,
  },
};
</script>

<style scoped>
header {
  display: flex;
  position: relative;
  flex-direction: column;
  justify-content: space-between;
}
nav {
  box-shadow: 0 2px 4px rgb(30, 60, 90, 0.1);
}
#scrolling {
  display: flex;
  overflow: auto;
  max-width: 800px;
  overflow: hidden;
  height: 3.4rem;
  align-items: center;
}

#scrolling a {
  cursor: default;
  margin-left: 0.625rem;
}
.logo img {
  width: 25%;
  margin: 0 auto;
}
@media (max-width: 900px) {
  .logo img {
    width: 50%;
    margin: 0 auto;
    padding-top: 3.5rem;
  }
  nav {
    top: 0;
    width: 100%;
    display: flex;
    justify-content: space-between;
    position: absolute;
  }
  nav #home {
    border-top-right-radius: 4px;
    border-bottom-right-radius: 4px;
  }
  nav #home {
    border: none;
    color: white;
    cursor: pointer;
    font-size: 1rem;
    background: #87f;
    padding: 10px 15px;
  }
  nav #home:hover {
    background: #65d;
    transform: scale(1.1);
  }
  nav #home:focus {
    outline: none;
  }
}
</style>
