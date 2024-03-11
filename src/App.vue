<template>
  <div id="app">
    <nav :class="{ 'open': isMenuOpen }">
      <div class="hamburger" @click="toggleMenu">
        <span></span>
        <span></span>
        <span></span>
      </div>
      <div class="menu" :class="{ 'show': isMenuOpen }">
        <router-link to="/" @click="closeMenu">
          <i class="fas fa-home"></i>
          <span>About</span>
        </router-link>
        <router-link to="/projects" @click="closeMenu">
          <i class="fas fa-folder"></i>
          <span>Projects</span>
        </router-link>
        <router-link to="/jobs" @click="closeMenu">
          <i class="fas fa-briefcase"></i>
          <span>Jobs</span>
        </router-link>
      </div>
    </nav>

    <div class="router-view-container">
      <div class="header">
      </div>
      <router-view></router-view>
    </div>
  </div>
</template>

<script>
export default {
  name: 'App',
  data() {
    return {
      isMenuOpen: false
    };
  },
  methods: {
    toggleMenu() {
      this.isMenuOpen = !this.isMenuOpen;
    },
    closeMenu() {
      this.isMenuOpen = false;
    }
  }
};
</script>

<style>
body {
  margin: 0;
  padding: 0;
  font-family: Arial, sans-serif;
  background-color: #222;
  color: #fff;
}

#app {
  display: flex;
  min-height: 100vh;
}

nav {
  background-color: #47515e;
  width: 3rem;
  transition: width 0.3s;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-items: auto;
  padding-top: 20px;
  position: fixed;
  left: 0;
  top: 0;
  bottom: 0;
}

nav.open {
  width: 7rem;
}

.hamburger {
  cursor: pointer;
  padding: 10px;
}

.hamburger span {
  display: block;
  width: 25px;
  height: 3px;
  background-color: #fff;
  margin-bottom: 5px;
}

.menu {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-top: 20px;
  width: fit-content;
}

.menu a {
  color: #fff;
  text-decoration: none;
  padding: 10px;
  width: 100%;
  text-align: center;
  transition: background-color 0.3s;
}

.menu a i {
  width: fit-content;
}

.menu a span {
  display: none;
  transition: opacity 0.3s;
}

.menu.show a span {
  display: inline;
  opacity: 1;
}

.menu a:hover {
  background-color: #696767;
}

.menu.show a.router-link-active {
  background-color: #696767;
}

.router-view-container {
  flex: 1;
  padding: 20px;
  display: flex;
  flex-direction: column;
  margin-left: 60px;
  transition: margin-left 0.3s;
}

.header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 20px;
}
</style>