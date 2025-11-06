# Database Migration Guide

This guide covers all database migrations needed for the ProjectKart application.

## Migration 1: Add Multiple Images Support

### Step 1: Run the SQL Migration

1. Go to your Supabase dashboard: https://supabase.com/dashboard
2. Select your project
3. Click on "SQL Editor" in the left sidebar
4. Click "New Query"
5. Copy and paste the contents of `ADD_IMAGE_URLS_COLUMN.sql`
6. Click "Run" or press Ctrl+Enter

### Step 2: Verify the Migration

After running the SQL, you should see a success message. The query will also show the first 5 projects with their new `image_urls` column.

### What This Does

- Adds a new `image_urls` column to store multiple images as JSON array
- Migrates existing `image_url` data to the new `image_urls` array
- Keeps the original `image_url` column for backward compatibility

### After Migration

Your app will now support:
- Uploading multiple images per project
- Setting any image as the main image
- Displaying images in a carousel on the project details page

---

## Migration 2: Add Price Column

### Step 1: Run the SQL Migration

1. Go to your Supabase dashboard: https://supabase.com/dashboard
2. Select your project
3. Click on "SQL Editor" in the left sidebar
4. Click "New Query"
5. Copy and paste the contents of `ADD_PRICE_COLUMN.sql`
6. Click "Run" or press Ctrl+Enter

### Step 2: Verify the Migration

After running the SQL, you should see output confirming the `price` column was added to the projects table.

### What This Does

- Adds a new `price` column (NUMERIC(10,2)) with a default value of 0.00
- Adds a check constraint to ensure price is non-negative
- Adds a comment for documentation

### After Migration

Your app will now support:
- Setting prices for projects in the admin panel (USD format)
- Displaying formatted prices on project cards ($1,234.00)
- Showing prices on project detail pages
- Free projects will show $0.00

---

## Troubleshooting

If you get an error that a column already exists, that's fine - it means it's already been added. You can skip that migration and just verify your data.

