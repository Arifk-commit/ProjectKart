-- Add display_order column to projects table
ALTER TABLE public.projects 
ADD COLUMN IF NOT EXISTS display_order INTEGER DEFAULT 0;

-- Create index for better sorting performance
CREATE INDEX IF NOT EXISTS idx_projects_display_order ON public.projects(display_order ASC, created_at DESC);

-- Update existing projects with sequential display_order based on created_at
WITH numbered_projects AS (
  SELECT id, ROW_NUMBER() OVER (ORDER BY created_at DESC) as row_num
  FROM public.projects
)
UPDATE public.projects p
SET display_order = np.row_num * 10
FROM numbered_projects np
WHERE p.id = np.id;
