-- Add survey answer columns to waitlist table
alter table public.waitlist
  add column if not exists survey_domain         text[],
  add column if not exists survey_usecase        text[],
  add column if not exists survey_priority       text,
  add column if not exists survey_contrib        text,
  add column if not exists survey_notes          text,
  add column if not exists survey_completed_at   timestamptz;

-- Allow anonymous users to update their waitlist row (survey answers only)
create policy "anyone can update waitlist survey"
  on public.waitlist
  for update
  using (true)
  with check (true);
