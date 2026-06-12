-- Add min_price and max_price columns to projects table for price ranges
ALTER TABLE projects
ADD COLUMN IF NOT EXISTS min_price NUMERIC(10, 2) DEFAULT 0.00,
ADD COLUMN IF NOT EXISTS max_price NUMERIC(10, 2) DEFAULT 0.00;

-- Add check constraints to ensure prices are non-negative and range is valid
ALTER TABLE projects
ADD CONSTRAINT projects_min_price_check CHECK (min_price >= 0),
ADD CONSTRAINT projects_max_price_check CHECK (max_price >= 0),
ADD CONSTRAINT projects_price_range_check CHECK (max_price >= min_price);

-- Add comments for documentation
COMMENT ON COLUMN projects.min_price IS 'Project minimum price in Indian Rupees (INR) for price ranges';
COMMENT ON COLUMN projects.max_price IS 'Project maximum price in Indian Rupees (INR) for price ranges';
