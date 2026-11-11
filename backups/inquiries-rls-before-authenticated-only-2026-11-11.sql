-- Backup of public.inquiries RLS state before the authenticated-only change.
-- Captured from pg_policies on 2026-11-11. No rows or auth users are part of this backup.
-- Original table state: RLS enabled, FORCE RLS disabled.

ALTER TABLE public.inquiries ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.inquiries NO FORCE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "authenticated delete inquiries" ON public.inquiries;
DROP POLICY IF EXISTS "authenticated insert inquiries" ON public.inquiries;
DROP POLICY IF EXISTS "authenticated read inquiries" ON public.inquiries;
DROP POLICY IF EXISTS "authenticated update inquiries" ON public.inquiries;

CREATE POLICY "public delete inquiries"
  ON public.inquiries FOR DELETE TO anon USING (true);

CREATE POLICY "public insert inquiries"
  ON public.inquiries FOR INSERT TO anon WITH CHECK (true);

CREATE POLICY "public read inquiries"
  ON public.inquiries FOR SELECT TO anon USING (true);

CREATE POLICY "public update inquiries"
  ON public.inquiries FOR UPDATE TO anon USING (true) WITH CHECK (true);
