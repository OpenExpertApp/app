<script setup lang="ts">
const supabase = useSupabaseClient()
const email = ref('')
const sent = ref(false)
const error = ref<string | null>(null)

async function signIn() {
  error.value = null
  const { error: err } = await supabase.auth.signInWithOtp({ email: email.value })
  if (err) {
    error.value = err.message
    return
  }
  sent.value = true
}
</script>

<template>
  <main>
    <h1>Zaloguj się</h1>
    <form v-if="!sent" @submit.prevent="signIn">
      <label>
        Email
        <input v-model="email" type="email" required>
      </label>
      <button type="submit">Wyślij link</button>
      <p v-if="error" role="alert">{{ error }}</p>
    </form>
    <p v-else>Sprawdź skrzynkę — wysłaliśmy link logowania.</p>
  </main>
</template>
