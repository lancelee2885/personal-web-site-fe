<template>
    <div class="project-item">
      <div class="project-content">
        <h3>{{ project.Name }}</h3>
        <VueShowdown :markdown="project.Content" flavor="github" />
      </div>
    </div>
  </template>
  
  <script>
  
  export default {
    props: {
      project: {
        type: Object,
        required: true,
      },
    },
  };
  </script>
  
  <style scoped>
  .project-item {
    background-color: #6b6b6b;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    padding: 20px;
    height: 20vh;
    width: 20vh;
    display: flex;
    flex-direction: column;
  }
  
  .project-content {
    flex: 1;
    overflow: hidden;
  }
  
  .project-content h3 {
    font-size: 1.5rem;
    font-weight: bold;
    margin-bottom: 10px;
  }
  
  .project-content p {
    font-size: 1.2rem;
    line-height: 1.6;
    display: -webkit-box;
    -webkit-line-clamp: 4;
    -webkit-box-orient: vertical;
    overflow: hidden;
    text-overflow: ellipsis;
  }
  </style>