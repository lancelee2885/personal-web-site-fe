<template>
  <div class="job-view">
    <h2>Jobs</h2>
    <div class="job-list">
      <JobItem v-for="job in jobs" :key="job.ID" :job="job" />
    </div>
  </div>
</template>

<script>
import axios from 'axios';
import JobItem from '../components/JobItem.vue';

export default {
  components: {
    JobItem,
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
        const BACKEND_API = import.meta.env.VITE_BACKEND_API || 'http://localhost/api/';
        const response = await axios.get(`${BACKEND_API}entities?type=jobs`);
        this.jobs = response.data;
      } catch (error) {
        console.error('Failed to fetch jobs:', error);
      }
    },
  },
};
</script>

<style scoped>
.job-view {
  max-width: 1000px;
  margin: 0 auto;
  padding: 40px 20px;
}

.job-view h2 {
  font-size: 2.5rem;
  font-weight: bold;
  margin-bottom: 20px;
  text-align: center;
}

.job-list {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 20px;
}

@media (max-width: 768px) {
  .job-list {
    grid-template-columns: 1fr;
  }
}
</style>