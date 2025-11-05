# Display Order Feature

## Overview
Added the ability for admins to control which projects appear first on the website by setting a display priority number.

## What Was Changed

### 1. Database Migration
**File:** `supabase/migrations/20251106000000_add_display_order_to_projects.sql`
- Added `display_order` column to the projects table (INTEGER, default: 0)
- Created an index for better sorting performance
- Updated existing projects with sequential display orders

### 2. TypeScript Types
**File:** `src/integrations/supabase/types.ts`
- Added `display_order: number` to the projects table Row, Insert, and Update types

### 3. Admin Project Form
**File:** `src/pages/admin/ProjectForm.tsx`
- Added `displayOrder` state variable
- Added input field for "Display Priority" with helpful description
- Included `display_order` in the project data when creating/updating projects
- Loads existing display_order value when editing a project

### 4. Admin Dashboard
**File:** `src/pages/admin/Dashboard.tsx`
- Updated project interface to include `display_order`
- Changed fetch query to order by `display_order DESC, created_at DESC`
- Added visual "Priority" badge to show display_order value on project cards

### 5. Browse Projects Page
**File:** `src/pages/BrowseProjects.tsx`
- Updated fetch query to order by `display_order DESC, created_at DESC`

### 6. Portfolio Page
**File:** `src/pages/Portfolio.tsx`
- Updated fetch query to order by `display_order DESC, created_at DESC`

## How to Use

1. **Apply the database migration:**
   ```powershell
   cd c:\Projects\ProjectKart\get-proj
   npx supabase db reset
   ```
   Or apply the migration manually in your Supabase dashboard.

2. **Set display priorities:**
   - Go to Admin Dashboard
   - Edit any project
   - Set the "Display Priority" field (higher numbers appear first)
   - Example: Use 100, 90, 80, etc. for your top projects
   - Default is 0 for all projects

3. **Projects will now appear in this order:**
   - First: Projects with highest display_order value
   - Then: Projects with same display_order sorted by creation date (newest first)

## Examples

- Project A: display_order = 100
- Project B: display_order = 90
- Project C: display_order = 0
- Project D: display_order = 0 (created before C)

**Display Order:** A → B → C → D

## Benefits

✅ Control which projects visitors see first
✅ Highlight your best or newest work
✅ No need to change creation dates
✅ Easy to reorganize by changing numbers
✅ Backward compatible (existing projects default to 0)
