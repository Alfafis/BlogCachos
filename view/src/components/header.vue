<template>
  <header>
    <div class="logo-topo">
      <img class="smart" src="@/assets/menu.png" alt="lorena-logo" />
    </div>
    <nav>
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
export default {
  name: "Header",
};
</script>

<style></style>
