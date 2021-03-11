<template>
  <header>
    <div class="logo">
      <button class="icon-button">⬜</button>
      <img src="@/assets/bio.jpg" alt="lorena-logo" />
    </div>
    <span
      >Olá meus seguidores, Aqui é
      <h2>Lorena Theressa</h2>
    </span>
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
span {
  color: #838383;
  font: bold 1.25rem "Quicksand";
}
h2 {
  color: #222;
  font: bold 3.2rem "Quicksand";
}
.logo {
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.logo img {
  width: 10rem;
  margin: 0 auto;
  border-radius: 50%;
}
.logo .icon-button {
  border: none;
  background: none;
  font-size: 1.625rem;
  padding: 0 0 1.5rem 1.5rem;
}
.logo .icon-button:focus {
  outline: none;
}
nav#scrolling {
  overflow: auto;
  display: flex;
  max-width: 30rem;
  padding: 1rem 0;
  height: fit-content;
}
nav#scrolling::-webkit-scrollbar {
  display: none;
}
nav#scrolling a {
  cursor: default;
  margin-right: 0.625rem;
  box-shadow: 0px 3px 4px 1px #6e6e6e80;
}
@media (max-width: 900px) {
  .logo img {
    width: 7.2rem;
    padding: 0.625rem;
    margin: 0.625rem;
  }
}
</style>
