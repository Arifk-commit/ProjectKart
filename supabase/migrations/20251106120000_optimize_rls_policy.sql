-- Optimize RLS policy to prevent re-evaluation of auth.uid() for each row
-- This improves query performance at scale

-- Drop the existing policy
DROP POLICY IF EXISTS "Anyone can view published projects" ON public.projects;

-- Create optimized policy using (select auth.uid()) instead of auth.uid()
CREATE POLICY "Anyone can view published projects"
  ON public.projects
  FOR SELECT
  USING (published = true OR (select auth.uid()) IS NOT NULL);
