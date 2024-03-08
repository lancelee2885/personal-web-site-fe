<template>
  <div id="app">
    <nav>
      <router-link to="/">About</router-link> |
      <router-link to="/projects">Projects</router-link> |
      <router-link to="/jobs">Jobs</router-link>
    </nav>

    <router-view></router-view>
  </div>
</template>

<script>
export default {
  name: 'App',
};
</script>