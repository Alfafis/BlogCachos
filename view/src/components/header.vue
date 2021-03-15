<template>
  <header>
    <div class="logo">
      <button class="icon-button" @click.prevent="login">
        <i class="fas fa-grip-horizontal"></i>
      </button>
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
  methods: {
    login() {
      console.log("alert");
    },
  },
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
  margin: 5rem 0;
  color: #838383;
  font: bold 1rem "Quicksand";
}
h2 {
  color: #222;
  font: bold 2rem "Quicksand";
}
.logo {
  right: 0;
  display: block;
  position: absolute;
}
.logo img {
  float: right;
  width: 10rem;
  margin: 0;
  border-radius: 50%;
}
.icon-button {
  display: none;
  cursor: pointer;
  border: none;
  background: none;
  font-size: 1.625rem;
  padding: 0 0 1.5rem 1.5rem;
}
.icon-button:focus {
  outline: none;
}
.icon-button i {
  color: #b1b1b1;
}
.icon-button i:hover {
  color: #87f;
  transform: scale(1.1);
}
nav#scrolling {
  overflow: auto;
  display: flex;
  justify-content: center;
  padding: 1rem;
  height: fit-content;
}
nav#scrolling::-webkit-scrollbar {
  display: none;
}
nav#scrolling a {
  width: 100vw;
  margin-right: 0.625rem;
}
@media (max-width: 768px) {
  .logo {
    position: unset;
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  .logo img {
    width: 6rem;
    padding: 0.625rem;
    margin: 0.625rem;
  }
  span {
    margin: 0;
  }
  .icon-button {
    display: block;
  }
  nav#scrolling {
    max-width: 30rem;
    justify-content: flex-start;
  }
}
</style>
