import { createRouter, createWebHistory } from 'vue-router';
import ProjectList from '../components/ProjectList.vue';
import JobList from '../components/JobList.vue';
import HelloWorld from '@/components/HelloWorld.vue';

const routes = [
  {
    path: '/',
    name: 'HelloWorld',
    component: HelloWorld,
  },
  {
    path: '/projects',
    name: 'Projects',
    component: ProjectList,
  },
  {
    path: '/jobs',
    name: 'Jobs',
    component: JobList,
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;