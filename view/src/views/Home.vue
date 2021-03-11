<template>
  <section>
    <h1>Artigo</h1>
    <ArtigoBusca />
    <ArtigoLista />
  </section>
</template>

<script>
import ArtigoBusca from "@/components/ArtigoBusca.vue";
import ArtigoLista from "@/components/ArtigoLista.vue";
export default {
  name: "Home",
  components: {
    ArtigoBusca,
    ArtigoLista,
  },
};
</script>
<style scoped>
section {
  display: block;
}
h1 {
  color: #87f;
  font: 600 2rem "Quicksand";
  margin-top: 1rem;
}
</style>
