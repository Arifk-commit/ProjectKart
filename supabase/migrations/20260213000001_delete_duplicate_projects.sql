-- Delete duplicate AI projects with higher prices
-- This will remove the old entries before inserting new ones with ₹1,000-₹3,000 pricing

DELETE FROM public.projects 
WHERE title IN (
  'AI-Powered Customer Support Chatbot',
  'Real-Time Image Recognition & Classification',
  'AI-Driven Predictive Analytics Platform',
  'Custom Voice Assistant with NLP',
  'Social Media Sentiment Analysis Engine',
  'Personalized AI Recommendation Engine',
  'Real-Time Fraud Detection & Prevention',
  'Intelligent Document Processing System',
  'AI-Based Traffic Flow Optimization',
  'AI Medical Diagnosis Support System',
  'AI Content Writing & Generation Tool',
  'Advanced Facial Recognition Access Control',
  'AI Stock Market Prediction System',
  'AI-Powered Crop Health Monitoring',
  'Intelligent Email Spam Detection',
  'AR-Based Virtual Try-On Application',
  'Neural Machine Translation System',
  'AI Energy Optimization for Smart Homes',
  'AI-Powered Code Review & Bug Detection',
  'Real-Time Hand Gesture Recognition'
)
AND (
  price > 3000 
  OR min_price > 3000 
  OR max_price > 3000
);

-- Optional: Delete ALL instances of these projects if you want to start fresh
-- Uncomment the lines below and comment out the above query if needed
/*
DELETE FROM public.projects 
WHERE title IN (
  'AI-Powered Customer Support Chatbot',
  'Real-Time Image Recognition & Classification',
  'AI-Driven Predictive Analytics Platform',
  'Custom Voice Assistant with NLP',
  'Social Media Sentiment Analysis Engine',
  'Personalized AI Recommendation Engine',
  'Real-Time Fraud Detection & Prevention',
  'Intelligent Document Processing System',
  'AI-Based Traffic Flow Optimization',
  'AI Medical Diagnosis Support System',
  'AI Content Writing & Generation Tool',
  'Advanced Facial Recognition Access Control',
  'AI Stock Market Prediction System',
  'AI-Powered Crop Health Monitoring',
  'Intelligent Email Spam Detection',
  'AR-Based Virtual Try-On Application',
  'Neural Machine Translation System',
  'AI Energy Optimization for Smart Homes',
  'AI-Powered Code Review & Bug Detection',
  'Real-Time Hand Gesture Recognition'
);
*/
