<template>
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
              You have lost connection to the internet. This app is offline.
              <q-btn outline rounded color="negative" label="Abmelden" class="abmelden"
                     :to="{ path: '/pages/Error404' }"/>
            </q-banner>
          </q-popup-proxy>
        </q-btn>
      </q-toolbar>
    </q-header>


    <q-page-container>
      <router-view/>
    </q-page-container>
  </q-layout>
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
