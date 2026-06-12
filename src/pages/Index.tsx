import { useEffect, useState } from "react";
import { ProjectCard } from "@/components/ProjectCard";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Search, Menu, X } from "lucide-react";
import { useNavigate } from "react-router-dom";
import { Sheet, SheetContent, SheetHeader, SheetTitle, SheetTrigger } from "@/components/ui/sheet";
import { HARDCODED_PROJECTS } from "@/data/hardcodedProjects";

interface Project {
  id: string;
  title: string;
  description: string;
  technologies: string[];
  image_url?: string;
  category?: string;
  price?: number;
  min_price?: number;
  max_price?: number;
}

const PROJECT_CATEGORIES = [
  "All Categories",
  "Artificial Intelligence",
  "Data Science",
  "Cybersecurity",
  "IoT",
  "Healthcare",
  "Finance",
  "E-commerce",
  "Software Development"
];

const Index = () => {
  const [projects] = useState<Project[]>(HARDCODED_PROJECTS);
  const [filteredProjects, setFilteredProjects] = useState<Project[]>(HARDCODED_PROJECTS);
  const [searchQuery, setSearchQuery] = useState("");
  const [selectedCategories, setSelectedCategories] = useState<string[]>([]);
  const [sidebarOpen, setSidebarOpen] = useState(false);
  const navigate = useNavigate();

  useEffect(() => {
    let filtered = projects;

    // Filter by categories
    if (selectedCategories.length > 0) {
      filtered = filtered.filter(project => 
        selectedCategories.includes(project.category || 'Artificial Intelligence')
      );
    }

    // Filter by search query
    if (searchQuery.trim() !== "") {
      const query = searchQuery.toLowerCase();
      filtered = filtered.filter(project => 
        project.title.toLowerCase().includes(query) ||
        project.description.toLowerCase().includes(query) ||
        project.technologies.some(tech => tech.toLowerCase().includes(query)) ||
        (project.category || '').toLowerCase().includes(query)
      );
    }

    setFilteredProjects(filtered);
  }, [searchQuery, selectedCategories, projects]);

  const handleContactClick = () => {
    const phoneNumber = "919137106851";
    const message = encodeURIComponent("Hello, I'd like to discuss a project with you!");
    const url = `https://wa.me/${phoneNumber}?text=${message}`;
    window.open(url, '_blank');
  };

  const toggleCategory = (category: string) => {
    if (category === "All Categories") {
      setSelectedCategories([]);
      return;
    }
    
    setSelectedCategories(prev => {
      if (prev.includes(category)) {
        return prev.filter(c => c !== category);
      } else {
        return [...prev, category];
      }
    });
  };

  return (
    <div className="min-h-screen bg-white">
      {/* Header */}
      <header className="bg-gradient-to-br from-[#1a4d8f] via-[#2563eb] to-[#0ea5e9] border-b border-white/20">
        <div className="container mx-auto px-4 sm:px-4 py-4 sm:py-4">
          <div className="flex items-center justify-between gap-3 sm:gap-4 mb-4 sm:mb-4">
            <div className="flex items-center gap-3 sm:gap-3">
              <Sheet open={sidebarOpen} onOpenChange={setSidebarOpen}>
                <SheetTrigger asChild className="lg:hidden">
                  <Button variant="ghost" size="icon" className="text-white hover:bg-white/10 shrink-0">
                    <Menu className="h-5 w-5" />
                  </Button>
                </SheetTrigger>
                <SheetContent side="left" className="w-[280px] p-0">
                  <SheetHeader className="p-6 pb-4 border-b">
                    <SheetTitle>Categories</SheetTitle>
                  </SheetHeader>
                  <div className="p-4">
                    <div className="space-y-2">
                      {PROJECT_CATEGORIES.map((category) => (
                        <Button
                          key={category}
                          variant={
                            category === "All Categories"
                              ? selectedCategories.length === 0 ? "default" : "ghost"
                              : selectedCategories.includes(category) ? "default" : "ghost"
                          }
                          className="w-full justify-start text-left"
                          onClick={() => toggleCategory(category)}
                        >
                          {category}
                        </Button>
                      ))}
                    </div>
                  </div>
                </SheetContent>
              </Sheet>

              <div className="flex items-center gap-2 sm:gap-3">
                <div className="w-8 h-8 sm:w-10 sm:h-10 bg-white/10 backdrop-blur-sm rounded-lg flex items-center justify-center border border-white/20 shrink-0">
                  <span className="text-lg sm:text-xl font-bold text-white">P</span>
                </div>
                <h1 className="text-lg sm:text-2xl font-bold text-white whitespace-nowrap">ProjectKart</h1>
              </div>
            </div>

            <Button 
              onClick={handleContactClick}
              className="bg-white/10 backdrop-blur-sm hover:bg-white/20 text-white border border-white/20 shrink-0 text-xs sm:text-sm px-3 sm:px-4"
            >
              Contact
            </Button>
          </div>

          <div className="relative">
            <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 sm:h-5 sm:w-5 text-white/60" />
            <Input
              type="text"
              placeholder="Search projects..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="w-full pl-10 sm:pl-11 bg-white/10 backdrop-blur-sm border-white/20 text-white placeholder:text-white/60 focus:bg-white/20 focus:border-white/40 h-10 sm:h-11 text-sm sm:text-base"
            />
          </div>
        </div>
      </header>

      <div className="container mx-auto px-4 py-6 sm:py-8">
        <div className="flex flex-col lg:flex-row gap-6 lg:gap-8">
          {/* Desktop Sidebar */}
          <aside className="hidden lg:block w-64 shrink-0">
            <div className="sticky top-6 bg-white rounded-lg border border-gray-200 p-6">
              <h2 className="text-lg font-semibold mb-4 text-gray-900">Categories</h2>
              <div className="space-y-2">
                {PROJECT_CATEGORIES.map((category) => (
                  <Button
                    key={category}
                    variant={
                      category === "All Categories"
                        ? selectedCategories.length === 0 ? "default" : "ghost"
                        : selectedCategories.includes(category) ? "default" : "ghost"
                    }
                    className="w-full justify-start text-left"
                    onClick={() => toggleCategory(category)}
                  >
                    {category}
                  </Button>
                ))}
              </div>
            </div>
          </aside>

          {/* Main Content */}
          <main className="flex-1 min-w-0">
            <div className="mb-6">
              <h2 className="text-2xl sm:text-3xl font-bold text-gray-900 mb-2">
                Browse Projects
              </h2>
              <p className="text-sm sm:text-base text-gray-600">
                {filteredProjects.length} {filteredProjects.length === 1 ? 'project' : 'projects'} available
              </p>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-4 sm:gap-6">
              {filteredProjects.map((project) => (
                <ProjectCard key={project.id} project={project} />
              ))}
            </div>

            {filteredProjects.length === 0 && (
              <div className="text-center py-12">
                <p className="text-lg text-gray-500">No projects found matching your criteria.</p>
              </div>
            )}
          </main>
        </div>
      </div>
    </div>
  );
};

export default Index;
