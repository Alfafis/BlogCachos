<template>
  <header>
    <div class="logo">
      <img src="@/assets/menu.png" alt="lorena-logo" />
    </div>
    <nav>
      <router-link id="home" to="/">Home</router-link>
      <div id="expanded">
        <router-link class="btn" to="/">Cabelos</router-link>
        <router-link class="btn" to="/">Vídeos</router-link>
        <router-link class="btn" to="/">Moda</router-link>
        <router-link class="btn" to="/">Música</router-link>
        <router-link class="btn" to="/">Dicas</router-link>
        <router-link class="btn" to="/">Motivação</router-link>
        <router-link class="btn" to="/">Contato</router-link>
      </div>
      <button id="home" v-on:click="handleEvent">Tags</button>
    </nav>
  </header>
</template>
<script>
export default {
  name: "Header",
};
// function handleEvent() {
//   // let home = document.querySelector("#home");
//   let expanded = document.querySelector("expanded");
//   expanded.classList.toggle("display");
// }
</script>

<style scoped>
nav {
  display: flex;
  align-items: center;
  justify-content: center;
  box-shadow: 0 2px 4px rgb(30, 60, 90, 0.1);
}
nav #expanded {
  padding: 15px 20px;
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
    background: #ddd;
    border-top: 2px solid #aaaa;
    border-bottom: 2px solid #aaa;
  }
  nav button {
    border-top-left-radius: 4px;
    border-bottom-left-radius: 4px;
  }
  nav #home {
    border-top-right-radius: 4px;
    border-bottom-right-radius: 4px;
  }
  nav button,
  nav #home {
    border: none;
    color: white;
    cursor: pointer;
    font-size: 1rem;
    background: #87f;
    padding: 15px 15px;
  }
  nav button:hover,
  nav #home:hover {
    background: #65d;
    transform: scale(1.1);
  }
  nav button:focus,
  nav #home:focus {
    outline: none;
  }
  #expanded {
    display: none;
  }
}
</style>
