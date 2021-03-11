<template>
  <section class="produtos-container">
    <div v-if="listas && listas.length" class="listas">
      <div v-for="lista in listas" class="lista" :key="lista.ID">
        <router-link to="/">
          <h2 class="materia">
            {{ lista.MATERIA }}
          </h2>
          <div>
            <label>
              {{ lista.DATA.slice(0, 10) }}
            </label>
            <span>
              {{ lista.TIPO }}
            </span>
            <h3>
              {{ lista.TITULO }}
            </h3>
            <p>
              {{ lista.TEXTO }}
            </p>
            <img v-if="lista.FOTO" :src="lista.FOTO" alt="" />
            <div class="youtube-video">
              <iframe
                width="320"
                height="320"
                :src="lista.VIDEO"
                frameborder="0"
                allowfullscreen
              ></iframe>
            </div>
          </div>
        </router-link>
      </div>
    </div>
    <div v-else-if="listas && listas.length === 0">
      <p>Busca sem resultados. Tente buscar outro termo.</p>
    </div>
  </section>
</template>
<script>
import { api } from "@/services.js";
// import { serialize } from "@/helpers.js";

export default {
  name: "ArtigoLista",
  data() {
    return {
      listas: null,
      listasPorPagina: 9,
    };
  },
  // computed: {
  //   url() {
  //     const query = serialize(this.$route.query);
  //     return `"/?_limit=${this.listasPorPagina}${query}"`;
  //   },
  // },
  methods: {
    getListas() {
      api
        .get("/")
        .then((res) => {
          console.log(res.data);
          this.listas = res.data;
        })
        .catch((err) => console.log(err));
    },
  },
  // watch: {
  //   url() {
  //     this.getListas();
  //   },
  // },
  created() {
    this.getListas();
  },
};
</script>
<style scope>
.lista {
  display: grid;
  border-radius: 4px;
  grid-column-gap: 1rem;
  background-color: white;
  grid-template-columns: 1, 1fr;
  padding: 0.625rem;
}
</style>
