import { createRouter, createWebHistory } from "vue-router";
import routes from "~pages"; //增加這一段

const base = import.meta.env.MODE === "production" ? "/piliWeb_text/" : "/";

const router = createRouter({
  history: createWebHistory(base),
  routes,
});

export default router;
