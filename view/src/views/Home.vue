<template>
  <section>
    <div id="flex">
      <h1>Artigo</h1>
      <ArtigoBusca />
    </div>
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
  max-width: 80%;
  margin: 0 auto;
  display: block;
}
h1 {
  color: #87f;
  font: 600 2rem "Quicksand";
}
#flex {
  display: flex;
  margin: 1rem 0;
  align-items: center;
  justify-content: space-between;
}
@media (max-width: 768px) {
  section {
    max-width: 100%;
  }
}
</style>
