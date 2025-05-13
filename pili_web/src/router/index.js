import { createRouter, createWebHistory } from 'vue-router'
import routes from "~pages";  //增加這一段

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router
