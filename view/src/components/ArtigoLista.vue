<template>
  <section class="produtos-container">
    <div v-if="listas && listas.length" class="listas">
      <div v-for="lista in listas" class="lista" :key="lista.ID">
        <router-link to="/" :tipo="lista.TIPO">
          <div class="card-title">
            <h2 class="materia">
              {{ lista.MATERIA }}
            </h2>
            <label> 📆 {{ getDate(lista.DATA) }} </label>
          </div>
          <div class="card">
            <h3>
              {{ lista.TITULO }}
            </h3>
            <p>
              {{ lista.TEXTO }}
            </p>
            <img v-if="lista.FOTO" :src="lista.FOTO" alt="" />
          </div>
          <div class="youtube-video">
            <iframe
              width="100%"
              height="250"
              :src="lista.VIDEO"
              frameborder="0"
              allowfullscreen
            ></iframe>
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
    getDate(date) {
      console.log("date", date);
      var dt = new Date(date);
      const format = (date) => {
        var ms = [
          "Janeiro",
          "Fevereiro",
          "Março",
          "Abril",
          "Maio",
          "Junho",
          "Julho",
          "Agosto",
          "Setembro",
          "Outubro",
          "Novembro",
          "Dezembro",
        ];
        return (
          date.getDate() +
          " de " +
          ms[date.getMonth()] +
          " de " +
          date.getFullYear()
        );
      };
      let dataFinal = format(dt);
      return dataFinal;
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
  grid-template-columns: repeat(2, auto);
  grid-column-gap: 2.4rem;
  margin: 0 2.4rem;
}
.lista {
  border-radius: 1rem;
  margin-bottom: 1rem;
  background-color: #ffb4af;
}
.lista + .lista {
  background-color: #b5ddda;
}
.lista a {
  display: grid;
  grid-template-columns: auto;
}
.card-title {
  border-bottom: 1px solid #eee;
}
.card-title,
.card {
  padding: 0.625rem;
}
h2 {
  color: #333;
  margin-bottom: 0.5rem;
  text-transform: capitalize;
  font: bold 1.625rem "Quicksand";
}
.card {
  height: 12rem;
  margin-bottom: 1rem;
}
h3 {
  color: #333;
  margin: 0.5rem 0;
  text-transform: capitalize;
  font: bold 1.25rem "Quicksand";
}
label {
  float: right;
  color: #fff;
}
p {
  color: #fff;
  font: 500 16px "Quicksand";
}
.youtube-video {
  margin: 0;
  padding: 0;
  opacity: 0.5;
  margin-bottom: -4px;
}
.youtube-video iframe {
  border-bottom-left-radius: 1rem;
  border-bottom-right-radius: 1rem;
}
.lista:hover .youtube-video {
  opacity: 1;
}
@media (max-width: 768px) {
  .listas {
    grid-template-columns: auto;
    margin: 0;
  }
}
</style>
