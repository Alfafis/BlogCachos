<template>
  <section class="produtos-container">
    <div v-if="listas && listas.length" class="listas">
      <div v-for="lista in listas" class="lista" :key="lista.ID">
        <router-link to="/" :tipo="lista.TIPO">
          <h2 class="materia">
            {{ lista.MATERIA }}
          </h2>
          <label>
            📆
            {{ lista.DATA.slice(0, 10) }}
          </label>
          <div class="card">
            <h3>
              {{ lista.TITULO }}
            </h3>
            <p>
              {{ lista.TEXTO }}
            </p>
            <img v-if="lista.FOTO" :src="lista.FOTO" alt="" />
            <div class="youtube-video">
              <iframe
                width="75%"
                height="200"
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
import { serialize } from "@/helpers.js";
import dados from "../assets/dados.json";

export default {
  name: "ArtigoLista",
  data() {
    return {
      listas: null,
      listasPorPagina: 9,
    };
  },
  computed: {
    url() {
      const query = serialize(this.$route.query);
      return `"/?_limit=${this.listasPorPagina}${query}"`;
    },
  },
  methods: {
    getListas() {
      api
        .get("/")
        .then((res) => {
          this.listas = res.data;
        })
        .catch((err) => console.log(err));
      if (this.listas == null) {
        this.listas = dados;
      }
    },
  },
  watch: {
    url() {
      this.getListas();
    },
  },
  created() {
    this.getListas();
  },
};
</script>
<style scope>
.listas {
  display: grid;
  grid-template-columns: auto auto;
  grid-column-gap: 2.4rem;
  margin: 0 2.4rem;
}
.lista {
  display: grid;
  border-radius: 1rem;
  padding: 0.625rem;
  grid-column-gap: 1rem;
  background-color: #ffb4af;
  grid-template-columns: 1fr;
  margin-bottom: 1rem;
}
.lista:hover {
  transition: 0.3s transform;
  transform: scale(1.1);
}
.lista + .lista {
  background-color: #b5ddda;
}
h2 {
  color: #333;
  text-transform: capitalize;
  font: bold 1.625rem "Quicksand";
}
.card {
  margin-top: 1rem;
  border-top: 1px solid #eee;
}
h3 {
  color: #333;
  text-transform: capitalize;
  font: bold 1rem "Quicksand";
}
label {
  color: #fff;
}
p {
  color: #fff;
  font: 500 16px "Quicksand";
  padding-bottom: 1.25rem;
}
.youtube-video {
  text-align: center;
  opacity: 0.5;
}
.youtube-video:hover {
  opacity: 1;
}
@media (max-width: 768px) {
  .listas {
    grid-template-columns: auto;
    margin: 0;
  }
}
</style>
