<script setup lang="ts">
definePageMeta({ middleware: 'auth' })
const user = useSupabaseUser()
const supabase = useSupabaseClient()

async function signOut() {
  await supabase.auth.signOut()
  await navigateTo('/login')
}
</script>

<template>
  <main>
    <h1>Dashboard</h1>
    <p>Zalogowany: {{ user?.email }}</p>
    <button @click="signOut">Wyloguj</button>
  </main>
</template>
