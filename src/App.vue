<template>
<div class="h-full flex">
  <SideNav />
  <Home />
</div>

</template>
<script>

import SideNav from './components/SideNav.vue';
import Home from './views/Home.vue'
export default {
  components:{
    SideNav,
    Home
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  height: 100%;
  color: #2c3e50;
}
html, body {
  height: 100%;
}
</style>
