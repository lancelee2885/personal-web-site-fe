<template>
<div class="project-view">
    <h2>Projects</h2>
    <div class="project-list">
    <ProjectItem v-for="project in projects" :key="project.ID" :project="project" />
    </div>
</div>
</template>
  
<script>
import axios from 'axios';
import ProjectItem from '../components/ProjectItem.vue';

export default {
components: {
    ProjectItem,
},
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
        const BACKEND_API = import.meta.env.VITE_BACKEND_API  || 'http://localhost/api/';
        const response = await axios.get(`${BACKEND_API}entities?type=projects`);
        this.projects = response.data;
    } catch (error) {
        console.error('Failed to fetch projects:', error);
    }
    },
},
};
</script>
  
<style scoped>
.project-view {
max-width: 1000px;
margin: 0 auto;
padding: 40px 20px;
}

.project-view h2 {
font-size: 2.5rem;
font-weight: bold;
margin-bottom: 20px;
text-align: center;
}

.project-list {
display: grid;
grid-template-columns: repeat(2, 1fr);
gap: 20px;
}

@media (max-width: 768px) {
.project-list {
    grid-template-columns: 1fr;
}
}
</style>