import Vue from 'vue';
import axios from 'axios';
import VueMeta from 'vue-meta';
import { InertiaApp } from '@inertiajs/inertia-vue';
import { InertiaForm } from 'laravel-jetstream';
import PortalVue from 'portal-vue';
import ziggyMixin from '@/Mixins/ZiggyMixin.js';

// Configure axios
window.axios = axios;
window.axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';

Vue.mixin(ziggyMixin());
Vue.mixin({ methods: { route } });

Vue.use(VueMeta);
Vue.use(InertiaApp);
Vue.use(InertiaForm);
Vue.use(PortalVue);

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
          import(`./Pages/${name}`).then((module) => module.default),
      },
    }),
}).$mount(app);
