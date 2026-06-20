import { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { useToast } from "@/hooks/use-toast";
import { ArrowLeft } from "lucide-react";
import { z } from "zod";

const settingsSchema = z.object({
  whatsapp_number: z.string()
    .trim()
    .min(1, "WhatsApp number is required")
    .regex(/^\+?[1-9]\d{1,14}$/, "Invalid phone number format. Use international format (e.g., +1234567890)")
    .max(15, "Phone number too long"),
});

export default function Settings() {
  const [loading, setLoading] = useState(false);
  const [whatsappNumber, setWhatsappNumber] = useState("");
  const navigate = useNavigate();
  const { toast } = useToast();

  useEffect(() => {
    checkAuth();
    fetchSettings();
  }, []);

  const checkAuth = async () => {
    // Auth check disabled - no database
    toast({
      title: "Note",
      description: "Settings are read-only without a database.",
    });
  };

  const fetchSettings = async () => {
    try {
      // Database queries disabled - using defaults only
      setWhatsappNumber('919137106851');
    } catch (error: any) {
      toast({
        variant: "destructive",
        title: "Error",
        description: "Failed to load settings.",
      });
    }
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();

    // Validate input
    const validation = settingsSchema.safeParse({ whatsapp_number: whatsappNumber });
    if (!validation.success) {
      toast({
        variant: "destructive",
        title: "Validation Error",
        description: validation.error.errors[0].message,
      });
      return;
    }

    setLoading(true);
    try {
      toast({
        variant: "destructive",
        title: "Database Disabled",
        description: "Settings cannot be saved without a database.",
      });
    } catch (error: any) {
      toast({
        variant: "destructive",
        title: "Error",
        description: "Failed to update settings.",
      });
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="min-h-screen bg-[var(--gradient-dark)] p-4">
      <div className="container mx-auto max-w-2xl py-8">
        <Button
          onClick={() => navigate('/admin/dashboard')}
          variant="outline"
          className="mb-6"
        >
          <ArrowLeft className="mr-2 h-4 w-4" />
          Back to Dashboard
        </Button>

        <Card className="border-border bg-card shadow-[var(--shadow-card)]">
          <CardHeader>
            <CardTitle className="text-2xl bg-gradient-to-r from-primary to-accent bg-clip-text text-transparent">
              Settings
            </CardTitle>
            <CardDescription className="text-muted-foreground">
              Configure your portfolio settings
            </CardDescription>
          </CardHeader>
          <CardContent>
            <form onSubmit={handleSubmit} className="space-y-6">
              <div className="space-y-2">
                <Label htmlFor="whatsapp">WhatsApp Number</Label>
                <Input
                  id="whatsapp"
                  type="tel"
                  value={whatsappNumber}
                  onChange={(e) => setWhatsappNumber(e.target.value)}
                  placeholder="+1234567890"
                  required
                  maxLength={15}
                  className="bg-input border-border"
                />
                <p className="text-sm text-muted-foreground">
                  Enter your WhatsApp number in international format (e.g., +1234567890).
                  This number will be used for the "Get a Quote" buttons on project cards.
                </p>
              </div>

              <div className="flex gap-4">
                <Button
                  type="button"
                  variant="outline"
                  onClick={() => navigate('/admin/dashboard')}
                  className="flex-1"
                  disabled={loading}
                >
                  Cancel
                </Button>
                <Button
                  type="submit"
                  className="flex-1 bg-primary text-primary-foreground hover:bg-primary/90"
                  disabled={loading}
                >
                  {loading ? 'Saving...' : 'Save Changes'}
                </Button>
              </div>
            </form>
          </CardContent>
        </Card>
      </div>
    </div>
  );
}
