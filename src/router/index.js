import { createRouter, createWebHistory } from 'vue-router';
import AboutView from '@/views/AboutView.vue';
import JobView from '@/views/JobView.vue';
import ProjectView from '@/views/ProjectView.vue';

const routes = [
  {
    path: '/',
    name: 'About',
    component: AboutView,
  },
  {
    path: '/projects',
    name: 'Projects',
    component: ProjectView,
  },
  {
    path: '/jobs',
    name: 'Jobs',
    component: JobView,
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;