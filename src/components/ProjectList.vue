<template>
  <div class="projects-page">
    <h2>Projects</h2>
    <div class="card-container">
      <div v-for="project in projects" :key="project.ID" class="card">
        <div class="card-content">
          <h3>{{ project.Name }}</h3>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      projects: [],
    };
  },
  mounted() {
    this.fetchProjects();
  },
  methods: {
    async fetchProjects() {
      try {
        const backendApi = 'http://localhost/api/';
        const response = await axios.get(`${backendApi}entities?type=projects`);
        this.projects = response.data;
      } catch (error) {
        console.error('Failed to fetch projects:', error);
      }
    },
  },
};
</script>

<style scoped>
</style>