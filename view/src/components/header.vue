<template>
  <header>
    <div class="logo">
      <div class="">Olá meus seguidores, Aqui é Lorena Theressa</div>
      <img src="@/assets/menu.png" alt="lorena-logo" />
    </div>
    <nav id="scrolling" v-dragscroll>
      <router-link class="btn" to="/">Cabelos</router-link>
      <router-link class="btn" to="/">Vídeos</router-link>
      <router-link class="btn" to="/">Moda</router-link>
      <router-link class="btn" to="/">Música</router-link>
      <router-link class="btn" to="/">Dicas</router-link>
      <router-link class="btn" to="/">Motivação</router-link>
      <router-link class="btn" to="/">Contato</router-link>
    </nav>
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
.logo {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.logo img {
  width: 10rem;
  margin: 0 auto;
}
nav#scrolling {
  overflow: auto;
  display: flex;
  max-width: 30rem;
}
nav#scrolling::-webkit-scrollbar {
  display: none;
}
nav#scrolling a {
  cursor: default;
  margin-left: 0.625rem;
}
@media (max-width: 900px) {
  .logo img {
    width: 10rem;
    padding: 0.625rem 0;
  }
}
</style>
