<template>
  <section>
    <h1>Artigo 👍</h1>
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
  padding: 15px;
}
h1 {
  color: #87f;
  font-size: 2rem;
  margin-top: 20px;
  text-align: center;
  border-top: 3px solid lightgrey;
}
</style>
