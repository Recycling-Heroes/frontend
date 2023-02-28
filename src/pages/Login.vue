<template>
  <div class="anmelden">


  <q-card class="my-card text-black login-card">
    <q-card-section>
      <div class="text-h6">Anmeldung</div>
    </q-card-section>

    <q-card-section>
      <q-input outlined v-model="text" label="Name" class="login-input" label-color="white"/>
      <q-input outlined v-model="text" label="Passwort" class="login-input" label-color="white" />
    </q-card-section>

    <q-separator dark />

    <q-card-actions class="anmelden-button-container">
      <q-btn class="anmelden-button">Anmelden</q-btn>
    </q-card-actions>
  </q-card>
  </div>
</template>

<script>
import {defineComponent, ref} from "vue";

export default defineComponent({
  name: "Login",
});
</script>

<style scoped>

</style>
