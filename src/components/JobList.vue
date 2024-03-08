<template>
  <div class="jobs-page">
    <h2>Jobs</h2>
    <div class="card-container">
      <div v-for="job in jobs" :key="job.id" class="card">
        <div class="card-content">
          <h3>{{ job.name }}</h3>
          <vue-markdown :source="job.content"></vue-markdown>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';
import VueMarkdown from 'vue-markdown';

export default {
  components: {
    VueMarkdown,
  },
  data() {
    return {
      jobs: [],
    };
  },
  mounted() {
    this.fetchJobs();
  },
  methods: {
    async fetchJobs() {
      try {
        const response = await axios.get('http://localhost/api/entities?type=jobs');
        this.jobs = response.data;
      } catch (error) {
        console.error('Failed to fetch jobs:', error);
      }
    },
  },
};
</script>

<style scoped>
.jobs-page {
  max-width: 1200px;
  margin: 0 auto;
  padding: 20px;
}

.card-container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 20px;
}

.card {
  border: 1px solid #ccc;
  border-radius: 4px;
  background-color: #f9f9f9;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s ease;
}

.card:hover {
  transform: translateY(-5px);
}

.card-content {
  padding: 20px;
}

.card h3 {
  margin-top: 0;
}
</style>