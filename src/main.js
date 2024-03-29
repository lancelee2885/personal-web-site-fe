import { createApp } from 'vue'
import { createPinia } from 'pinia'
import { VueShowdownPlugin } from 'vue-showdown';

import App from './App.vue'
import router from './router'

const app = createApp(App)
app.use(createPinia())
app.use(router)
app.use(VueShowdownPlugin, {
    flavor: 'github',
    options: {
        emoji: false,
    },
});

app.mount('#app')
