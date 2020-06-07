import Vue from 'vue';
import axios from 'axios';
import VueMeta from 'vue-meta';
import { InertiaApp } from '@inertiajs/inertia-vue';
import ziggyMixin from '@/mixins/ZiggyMixin.js';

// Load global mixins
ziggyMixin();

// Configure axios
window.axios = axios;
window.axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';

Vue.use(VueMeta);
Vue.use(InertiaApp);

// Initiate the Vue app
const app = document.getElementById('app');
new Vue({
  metaInfo: {
    titleTemplate: (title) => {
      return title;
    },
  },
  render: (h) =>
    h(InertiaApp, {
      props: {
        initialPage: JSON.parse(app.dataset.page),
        resolveComponent: (name) =>
          import(`./pages/${name}`).then((module) => module.default),
      },
    }),
}).$mount(app);
