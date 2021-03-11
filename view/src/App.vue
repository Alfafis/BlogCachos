<template>
  <div>
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
@import url("https://fonts.googleapis.com/css2?family=Quicksand:wght@300;500;700&display=swap");

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
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
  background-image: url("../src/assets/background-web.jpg");
}
header,
main {
  max-width: 70%;
  margin: 0 auto;
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
  border-radius: 25px;
  text-align: center;
  transition: all 0.3s;
  margin-bottom: 0.325rem;
  padding: 0.625rem 1.875rem;
  box-shadow: 0px 3px 4px 1px #6e6e6e80;
  font-family: "Montserrat", Helvetica, sans-serif;
}
.btn:hover {
  background: #65d;
  transform: scale(1.1);
  transition: 0.3s transform;
}
#app {
  display: flex;
  min-width: 100vh;
  flex-direction: column;
}
#main {
  flex: 1;
}
@media (max-width: 768px) {
  body {
    background-image: url("../src/assets/background-mobile.jpg");
    background-repeat: repeat-y;
  }
  header,
  main {
    max-width: 90%;
    margin: 0 auto;
  }
  #app {
    display: unset;
  }
  #main {
    flex: unset;
  }
  .btn {
    padding: 0.625rem 1.25rem;
  }
}
</style>
