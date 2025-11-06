-- ========================================
-- MANUAL MIGRATION FOR SUPABASE CLOUD
-- ========================================
-- This file adds a price column to the projects table
-- 
-- HOW TO RUN THIS MIGRATION:
-- 1. Go to your Supabase Dashboard
-- 2. Navigate to: SQL Editor
-- 3. Click "New Query"
-- 4. Copy and paste this entire SQL script
-- 5. Click "Run" to execute
-- ========================================

-- Add price columns to projects table
ALTER TABLE projects
ADD COLUMN IF NOT EXISTS price NUMERIC(10, 2) DEFAULT 0.00,
ADD COLUMN IF NOT EXISTS min_price NUMERIC(10, 2) DEFAULT 0.00,
ADD COLUMN IF NOT EXISTS max_price NUMERIC(10, 2) DEFAULT 0.00;

-- Add check constraints to ensure prices are non-negative
ALTER TABLE projects
ADD CONSTRAINT projects_price_check CHECK (price >= 0),
ADD CONSTRAINT projects_min_price_check CHECK (min_price >= 0),
ADD CONSTRAINT projects_max_price_check CHECK (max_price >= 0),
ADD CONSTRAINT projects_price_range_check CHECK (max_price >= min_price);

-- Add comments for documentation
COMMENT ON COLUMN projects.price IS 'Project fixed price in Indian Rupees (INR)';
COMMENT ON COLUMN projects.min_price IS 'Project minimum price in Indian Rupees (INR) for price ranges';
COMMENT ON COLUMN projects.max_price IS 'Project maximum price in Indian Rupees (INR) for price ranges';

-- Verify the column was added
SELECT column_name, data_type, column_default
FROM information_schema.columns
WHERE table_name = 'projects' AND column_name = 'price';
