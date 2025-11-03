import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { MessageCircle } from "lucide-react";

interface ProjectCardProps {
  title: string;
  description: string;
  technologies: string[];
  imageUrl?: string;
  whatsappNumber: string;
}

export const ProjectCard = ({ 
  title, 
  description, 
  technologies, 
  imageUrl,
  whatsappNumber 
}: ProjectCardProps) => {
  const handleWhatsAppClick = () => {
    const phoneNumber = "919137106851"; // Direct WhatsApp number with country code
    const message = encodeURIComponent(`Hello, I'm interested in this project: ${title}`);
    const url = `https://wa.me/${phoneNumber}?text=${message}`;
    window.open(url, '_blank');
  };

  return (
    <Card className="group overflow-hidden border-0 bg-white hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-2">
      {imageUrl && (
        <div className="aspect-video overflow-hidden bg-gradient-to-br from-blue-100 to-cyan-100">
          <img 
            src={imageUrl} 
            alt={title}
            className="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500"
          />
        </div>
      )}
      {!imageUrl && (
        <div className="aspect-video overflow-hidden bg-gradient-to-br from-blue-500 via-blue-600 to-cyan-500 flex items-center justify-center">
          <svg className="w-20 h-20 text-white/30" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
          </svg>
        </div>
      )}
      <CardHeader className="pb-3">
        <CardTitle className="text-gray-900 group-hover:text-blue-600 transition-colors text-xl">
          {title}
        </CardTitle>
        <CardDescription className="text-gray-600 line-clamp-2">
          {description}
        </CardDescription>
      </CardHeader>
      <CardContent className="space-y-4">
        <div className="flex flex-wrap gap-2">
          {technologies.map((tech, index) => (
            <Badge 
              key={index} 
              variant="secondary"
              className="bg-blue-50 text-blue-700 hover:bg-blue-100 border border-blue-200 transition-colors font-medium"
            >
              {tech}
            </Badge>
          ))}
        </div>
        <Button 
          onClick={handleWhatsAppClick}
          className="w-full bg-gradient-to-r from-blue-600 to-cyan-500 text-white hover:from-blue-700 hover:to-cyan-600 shadow-lg hover:shadow-xl transition-all font-semibold py-6 rounded-xl"
        >
          <MessageCircle className="mr-2 h-5 w-5" />
          Get a Quote
        </Button>
      </CardContent>
    </Card>
  );
};
