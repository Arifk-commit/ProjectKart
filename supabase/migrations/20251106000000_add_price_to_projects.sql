-- Add price column to projects table
ALTER TABLE projects
ADD COLUMN IF NOT EXISTS price NUMERIC(10, 2) DEFAULT 0.00;

-- Add check constraint to ensure price is non-negative
ALTER TABLE projects
ADD CONSTRAINT projects_price_check CHECK (price >= 0);

-- Add comment for documentation
COMMENT ON COLUMN projects.price IS 'Project price in Indian Rupees (INR)';
