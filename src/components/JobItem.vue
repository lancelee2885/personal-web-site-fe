<template>
  <div class="job-item">
    <div class="job-content">
      <h3>{{ job.Name }}</h3>
      <VueShowdown :markdown="job.Content" flavor="github" />
    </div>
  </div>
</template>

<script>

export default {
  props: {
    job: {
      type: Object,
      required: true,
    },
  },
};
</script>

<style scoped>
.job-item {
  background-color: #6b6b6b;
  border-radius: 8px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  padding: 20px;
  height: 20vh;
  width: 20vh;
  display: flex;
  flex-direction: column;
}

.job-content {
  flex: 1;
  overflow: hidden;
}

.job-content h3 {
  font-size: 1.5rem;
  font-weight: bold;
  margin-bottom: 10px;
}

.job-content p {
  font-size: 1.2rem;
  line-height: 1.6;
  display: -webkit-box;
  -webkit-line-clamp: 4;
  -webkit-box-orient: vertical;
  overflow: hidden;
  text-overflow: ellipsis;
}
</style>