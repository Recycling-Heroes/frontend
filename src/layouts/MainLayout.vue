<template>
  <div class="everything">


  <q-layout view="lHh Lpr lFf">
    <q-header elevated>
      <q-toolbar>


        <q-toolbar-title class="title"> Categorize E-Waste</q-toolbar-title>

        <q-btn
          flat
          dense
          round
          icon="menu"
          aria-label="Menu"
          @click="toggleLeftDrawer"
        >
          <q-popup-proxy>
            <q-banner>
                <q-btn outline rounded color="negative" label="Abmelden" class="abmelden" to="/login"></q-btn>
            </q-banner>
          </q-popup-proxy>
        </q-btn>
      </q-toolbar>
    </q-header>


    <q-page-container class="content-container">
      <router-view/>
    </q-page-container>
  </q-layout>
  </div>
</template>

<script>

const linksList = [
  {
    title: "Docs",
    caption: "quasar.dev",
    icon: "school",
    link: "https://quasar.dev",
  },
];

import {defineComponent, ref} from "vue";

export default defineComponent({
  name: "MainLayout",
});
</script>
