<template>
  <div id="nav">
    <Header />
    <router-view />
    <Footer />
    <!-- <router-link to="/">Home</router-link> -->
  </div>
</template>

<script>
import Header from "@/components/header.vue";
import Footer from "@/components/footer.vue";

export default {
  components: {
    Header,
    Footer,
  },
};
</script>

<style>
@import url("https://fonts.googleapis.com/css?family=Montserrat:400,500,80");

* {
  box-sizing: border-box;
}

body,
ul,
li,
h1,
h2,
p {
  padding: 0;
  margin: 0;
}

ul {
  list-style: none;
}

body {
  font-family: "Montserrat", Helvetica, sans-serif;
  color: #345;
  background: url("/assets/backgroung.jpg") repeat top;
}

a {
  color: #345;
  list-style: none;
  text-decoration: none;
}

img {
  max-width: 100%;
  display: block;
}

.btn {
  display: block;
  padding: 0.625rem 1.875rem;
  background: #87f;
  border-radius: 4px;
  color: #fff;
  text-align: center;
  font-size: 1rem;
  font-weight: bold;
  box-shadow: 0 4px 8px rgb(30, 60, 90, 0.2);
  transition: all 0.3s;
  border: none;
  font-family: "Montserrat", Helvetica, sans-serif;
  cursor: pointer;
  margin-bottom: 0.325rem;
}

.btn:hover {
  background: #65d;
  transform: scale(1.1);
}
</style>
