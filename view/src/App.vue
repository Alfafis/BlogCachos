<template>
  <div id="nav">
    <Header />
    <main id="main">
      <router-view />
    </main>
    <Footer />
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
@import url("https://fonts.googleapis.com/css?family=Montserrat:400,500,800");

* {
  box-sizing: border-box;
  font-family: "Montserrat", Helvetica, sans-serif;
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
  color: #345;
  position: relative;
  background-size: 100%;
  background: url("./assets/backgroung.jpg") repeat top;
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
  border: none;
  display: block;
  color: #fff;
  cursor: pointer;
  font-size: 1rem;
  background: #87f;
  border-radius: 4px;
  text-align: center;
  transition: all 0.3s;
  margin-bottom: 0.325rem;
  padding: 0.625rem 1.875rem;
  box-shadow: 0 4px 8px rgb(30, 60, 90, 0.2);
  font-family: "Montserrat", Helvetica, sans-serif;
}
.btn:hover {
  background: #65d;
  transform: scale(1.1);
}
#app {
  display: flex;
  min-width: 100vh;
  flex-direction: column;
}
#main {
  flex: 1;
}
@media (max-width: 900px) {
  #app {
    display: unset;
  }
  #main {
    flex: unset;
  }
}
</style>
