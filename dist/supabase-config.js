// Shared browser client for the existing Supabase project.
// The publishable key is intended for browser use; protect table access with RLS.
(() => {
  const createClient = window.supabase?.createClient;
  if (!createClient) throw new Error("Supabase JS SDK did not load.");

  window.supabaseClient = createClient(
    "https://ssiqydwuwsjssgreqfgz.supabase.co",
    "sb_publishable_cSikUgnX6vpK_aMcXL7B-w_72-Fweqo"
  );
})();
