<template>
  <img alt="Vue logo" src="./assets/logo.png">
  <ul>
    <li v-for="user in users" :key="user.id">
      {{user.name}}
    </li>
  </ul>
</template>

<script>
import axios from 'axios';
export default {
  name: 'App',
  data(){
    return ({
      users:[]
    })
  },

  mounted(){
    this.users = [{id:1,name:'ding'}]
    axios.get('http://47.103.206.94:80/api/users').then(res=>{
      console.log(res,'res')
      this.users = res.data;

    })
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
