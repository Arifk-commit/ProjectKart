-- Update AI Projects with Images from Public Folder
-- Maps each project to its corresponding image in /projectKart-project-photos/

-- 1. AI Chatbot
UPDATE public.projects
SET image_url = '/projectKart-project-photos/Chat1.jpg'
WHERE title = 'AI-Powered Customer Support Chatbot';

-- 2. Image Recognition System
UPDATE public.projects
SET image_url = '/projectKart-project-photos/image1.jpg'
WHERE title = 'Real-Time Image Recognition & Classification';

-- 3. Predictive Analytics Dashboard
UPDATE public.projects
SET image_url = '/projectKart-project-photos/pred1.png'
WHERE title = 'AI-Driven Predictive Analytics Platform';

-- 4. Voice Assistant
UPDATE public.projects
SET image_url = '/projectKart-project-photos/voice1.webp'
WHERE title = 'Custom Voice Assistant with NLP';

-- 5. Sentiment Analysis Tool
UPDATE public.projects
SET image_url = '/projectKart-project-photos/sent1.jpg'
WHERE title = 'Social Media Sentiment Analysis Engine';

-- 6. Recommendation System
UPDATE public.projects
SET image_url = '/projectKart-project-photos/rec1.webp'
WHERE title = 'Personalized AI Recommendation Engine';

-- 7. Fraud Detection System
UPDATE public.projects
SET image_url = '/projectKart-project-photos/fraud1.jpg'
WHERE title = 'Real-Time Fraud Detection & Prevention';

-- 8. Document Processing AI
UPDATE public.projects
SET image_url = '/projectKart-project-photos/doc1.png'
WHERE title = 'Intelligent Document Processing System';

-- 9. Smart Traffic Management
UPDATE public.projects
SET image_url = '/projectKart-project-photos/home1.png'
WHERE title = 'AI-Based Traffic Flow Optimization';

-- 10. Medical Diagnosis Assistant
UPDATE public.projects
SET image_url = '/projectKart-project-photos/med1.webp'
WHERE title = 'AI Medical Diagnosis Support System';

-- 11. Automated Content Generator
UPDATE public.projects
SET image_url = '/projectKart-project-photos/cont1.webp'
WHERE title = 'AI Content Writing & Generation Tool';

-- 12. Facial Recognition Security
UPDATE public.projects
SET image_url = '/projectKart-project-photos/face1.webp'
WHERE title = 'Advanced Facial Recognition Access Control';

-- 13. Stock Price Predictor
UPDATE public.projects
SET image_url = '/projectKart-project-photos/stock1.jpeg'
WHERE title = 'AI Stock Market Prediction System';

-- 14. Smart Agriculture Monitor
UPDATE public.projects
SET image_url = '/projectKart-project-photos/agri1.jpg'
WHERE title = 'AI-Powered Crop Health Monitoring';

-- 15. Email Spam Classifier
UPDATE public.projects
SET image_url = '/projectKart-project-photos/email1.png'
WHERE title = 'Intelligent Email Spam Detection';

-- 16. Virtual Try-On System
UPDATE public.projects
SET image_url = '/projectKart-project-photos/virtual1.jpg'
WHERE title = 'AR-Based Virtual Try-On Application';

-- 17. Language Translation API
UPDATE public.projects
SET image_url = '/projectKart-project-photos/lang1.webp'
WHERE title = 'Neural Machine Translation System';

-- 18. Smart Home Energy Manager
UPDATE public.projects
SET image_url = '/projectKart-project-photos/home1.png'
WHERE title = 'AI Energy Optimization for Smart Homes';

-- 19. Code Review Assistant
UPDATE public.projects
SET image_url = '/projectKart-project-photos/code1.webp'
WHERE title = 'AI-Powered Code Review & Bug Detection';

-- 20. Gesture Recognition System
UPDATE public.projects
SET image_url = '/projectKart-project-photos/gest1.png'
WHERE title = 'Real-Time Hand Gesture Recognition';
