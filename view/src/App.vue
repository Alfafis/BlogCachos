<template>
  <div>
    <Header />
    <main id="main">
      <router-view />
    </main>
    <Footer />
    <div id="bck"></div>
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
}
#bck {
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  width: 99vw;
  height: 99vh;
  z-index: -1;
  opacity: 0.8;
  filter: blur(3px);
  position: absolute;
  background-size: cover;
  transform: rotateY(180deg);
  background-position: center;
  background-repeat: no-repeat;
  background-image: url("../src/assets/background-web.jpg");
}
header,
main {
  max-width: 90%;
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
  #bck {
    width: 100%;
    background-repeat: repeat-y;
    background-image: url("../src/assets/background-mobile.jpg");
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
