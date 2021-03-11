<template>
  <form action="">
    <input name="busca" id="busca" v-model="busca" type="text" />
    <input
      id="lupa"
      type="submit"
      value="buscar"
      @click.prevent="buscarListas"
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
  },
};
</script>
<style scope>
form {
  visibility: hidden;
}
</style>
