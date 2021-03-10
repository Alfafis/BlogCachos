import { createApp } from "vue";
import App from "./App.vue";
import router from "./router.js";
import store from "./store.js";
import VueDragscroll from "vue-dragscroll";

createApp(App)
  .use(store)
  .use(router)
  .use(VueDragscroll)
  .mount("#app");
