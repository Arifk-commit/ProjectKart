# Database Migration Instructions

## Adding Category Field to Projects

A new migration has been created to add the `category` field to your projects table.

⚠️ **IMPORTANT:** You must run this migration before creating new projects, or you'll get an error.

### Quick Fix Option (If Getting Errors NOW):

**Option 1: Run via Supabase Dashboard (Recommended)**
1. Go to your Supabase Dashboard: https://supabase.com/dashboard
2. Select your project
3. Click on "SQL Editor" in the left menu
4. Click "New Query"
5. Copy and paste this SQL:

```sql
-- Add category column to projects table
ALTER TABLE public.projects 
ADD COLUMN IF NOT EXISTS category TEXT DEFAULT 'Web Development';

-- Create index for faster category filtering
CREATE INDEX IF NOT EXISTS idx_projects_category ON public.projects(category);
```

6. Click "Run" or press Ctrl+Enter
7. You should see "Success. No rows returned"
8. Refresh your app and try creating a project again

**Option 2: Using Supabase CLI**
```bash
supabase db reset
```

### Verification:

After running the migration, verify it worked:

1. Go to Supabase Dashboard → Table Editor → projects
2. You should see a new "category" column
3. Try creating a new project - it should work now!

### What This Migration Does:

```sql
-- Add category column to projects table
ALTER TABLE public.projects 
ADD COLUMN IF NOT EXISTS category TEXT DEFAULT 'Web Development';

-- Create index for faster category filtering
CREATE INDEX IF NOT EXISTS idx_projects_category ON public.projects(category);
```

This will:
- Add a `category` column to all existing and new projects
- Set default value as 'Web Development' for existing projects
- Create an index for fast category filtering

### After Migration:
- All existing projects will have category = 'Web Development'
- You can edit them in the admin dashboard to set the correct category
- New projects will require category selection during creation

### Troubleshooting:

**If you still get errors after migration:**
1. Check browser console (F12) for detailed error message
2. Verify the migration ran successfully in Supabase Dashboard
3. Make sure you're logged in to admin panel
4. Try clearing browser cache and refreshing

**Common Error Messages:**
- "column category does not exist" → Migration not run yet
- "Failed to create project" → Check browser console for details
- "Unauthorized" → Make sure you're logged in
