-- Add category column to projects table
ALTER TABLE public.projects 
ADD COLUMN IF NOT EXISTS category TEXT DEFAULT 'Web Development';

-- Create index for faster category filtering
CREATE INDEX IF NOT EXISTS idx_projects_category ON public.projects(category);
