-- ========================================
-- MANUAL MIGRATION FOR SUPABASE CLOUD
-- ========================================
-- This file adds min_price and max_price columns to the projects table
-- to support price ranges (e.g., ₹499 - ₹3,999)
-- 
-- HOW TO RUN THIS MIGRATION:
-- 1. Go to your Supabase Dashboard
-- 2. Navigate to: SQL Editor
-- 3. Click "New Query"
-- 4. Copy and paste this entire SQL script
-- 5. Click "Run" to execute
-- ========================================

-- Add min_price and max_price columns
ALTER TABLE projects
ADD COLUMN IF NOT EXISTS min_price NUMERIC(10, 2) DEFAULT 0.00,
ADD COLUMN IF NOT EXISTS max_price NUMERIC(10, 2) DEFAULT 0.00;

-- Add check constraints
ALTER TABLE projects
ADD CONSTRAINT projects_min_price_check CHECK (min_price >= 0),
ADD CONSTRAINT projects_max_price_check CHECK (max_price >= 0),
ADD CONSTRAINT projects_price_range_check CHECK (max_price >= min_price);

-- Add comments for documentation
COMMENT ON COLUMN projects.min_price IS 'Project minimum price in Indian Rupees (INR) for price ranges';
COMMENT ON COLUMN projects.max_price IS 'Project maximum price in Indian Rupees (INR) for price ranges';

-- Verify the columns were added
SELECT column_name, data_type, column_default
FROM information_schema.columns
WHERE table_name = 'projects' AND column_name IN ('min_price', 'max_price');
