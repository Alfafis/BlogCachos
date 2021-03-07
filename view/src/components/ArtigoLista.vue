<template>
  <section class="produtos-container">
    <div v-for="lista in listas" :key="lista.ID">
      <h2 class="materia">
        {{ lista.MATERIA }}
      </h2>
      <div>
        <label for="">
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
            width="674"
            height="380"
            :src="lista.VIDEO"
            frameborder="0"
            allowfullscreen
          ></iframe>
        </div>
      </div>
    </div>
  </section>
</template>
<script>
export default {
  name: "ArtigoLista",
  data() {
    return {
      listas: null,
    };
  },
  methods: {
    getListas() {
      fetch("http://localhost:3030/")
        .then((res) => res.json())
        .then((res) => {
          this.listas = res;
        })
        .catch((err) => console.log(err));
    },
  },
  created() {
    this.getListas();
  },
};
</script>
<style scope></style>
