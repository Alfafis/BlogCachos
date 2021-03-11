<template>
  <form action="">
    <button
      class="btn"
      id="lupa"
      type="submit"
      value="buscar"
      title="buscar"
      @click.prevent="search"
    >
      <i class="fas fa-search"></i>
    </button>
    <input
      name="busca"
      id="busca"
      v-model="busca"
      type="text"
      placeholder="Digite para buscar"
    />
  </form>
</template>
<script>
export default {
  name: "ArtigoBusca",
  data() {
    return {
      busca: "",
    };
  },
  methods: {
    buscarListas() {
      this.$router.push({ query: { q: this.busca } });
    },
    search() {
      console.log("clicou");
      let input = document.querySelector("#busca");
      if (input.value == "") {
        input.classList.toggle("display");
      } else {
        this.$router.push({ query: { q: this.busca } });
        input.value = "";
      }
    },
  },
};
</script>
<style scope>
form {
  display: flex;
  justify-content: flex-end;
}
input#busca {
  width: 0;
  border: none;
  font-size: 1rem;
  font-weight: 500;
  padding: 0.325rem 0.625rem;
  visibility: hidden;
  transition: 0.5s width;
  border-bottom: 2px solid #87f;
}
input#busca:focus {
  outline: none;
  padding: 0rem 0.625rem;
  border-bottom: 3px solid #65d;
}
input#busca::placeholder {
  color: #838383;
  font-size: 1rem;
  font-weight: 500;
}
input#busca:focus::placeholder {
  color: #65d;
}
#busca.display {
  width: 100%;
  visibility: visible;
  transition: 0.5s width;
}
#lupa {
  font-size: 1rem;
  margin: 0;
}
#lupa:hover i {
  color: #ccc;
  transition: 0.2s scale;
  transform: scale(1.1);
}
#lupa:focus {
  outline: none;
}
</style>
