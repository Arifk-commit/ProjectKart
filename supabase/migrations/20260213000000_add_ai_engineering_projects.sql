-- Insert 20 AI-based Engineering Projects
-- These projects include various AI/ML applications with realistic pricing and technologies

INSERT INTO public.projects (title, description, technologies, category, published, price, min_price, max_price, display_order) VALUES

-- 1. AI Chatbot
(
  'AI-Powered Customer Support Chatbot',
  'Intelligent chatbot with natural language processing capabilities. Handles customer queries, provides instant responses, and learns from interactions. Includes admin dashboard for monitoring conversations and training data.',
  '["Python", "TensorFlow", "Flask", "React", "OpenAI API", "PostgreSQL"]',
  'Artificial Intelligence',
  true,
  0,
  1500,
  2800,
  1
),

-- 2. Image Recognition System
(
  'Real-Time Image Recognition & Classification',
  'Advanced computer vision system for object detection and classification. Supports multiple image formats, batch processing, and custom model training. Perfect for security, inventory management, or quality control.',
  '["Python", "PyTorch", "OpenCV", "FastAPI", "React", "AWS S3"]',
  'Artificial Intelligence',
  true,
  0,
  2000,
  3000,
  2
),

-- 3. Predictive Analytics Dashboard
(
  'AI-Driven Predictive Analytics Platform',
  'Machine learning platform for business forecasting and trend analysis. Includes data visualization, automated insights, and customizable prediction models for sales, inventory, and customer behavior.',
  '["Python", "Scikit-learn", "Pandas", "Django", "Vue.js", "PostgreSQL"]',
  'Data Science',
  true,
  0,
  2200,
  3000,
  3
),

-- 4. Voice Assistant
(
  'Custom Voice Assistant with NLP',
  'Intelligent voice-controlled assistant for hands-free operations. Features speech-to-text, text-to-speech, and natural language understanding. Integrates with smart home devices and business systems.',
  '["Python", "Google Cloud Speech", "Dialogflow", "Node.js", "React Native", "MongoDB"]',
  'Artificial Intelligence',
  true,
  0,
  1800,
  2700,
  4
),

-- 5. Sentiment Analysis Tool
(
  'Social Media Sentiment Analysis Engine',
  'Real-time sentiment tracking for social media and customer feedback. Analyzes emotions, trends, and brand perception across multiple platforms. Includes reporting dashboard and alert system.',
  '["Python", "NLTK", "TextBlob", "Flask", "React", "Twitter API", "Redis"]',
  'Data Science',
  true,
  1500,
  0,
  0,
  5
),

-- 6. Recommendation System
(
  'Personalized AI Recommendation Engine',
  'Collaborative filtering and content-based recommendation system. Boosts engagement and sales with personalized product/content suggestions. Includes A/B testing and performance analytics.',
  '["Python", "Apache Spark", "TensorFlow", "FastAPI", "Angular", "Cassandra"]',
  'Artificial Intelligence',
  true,
  0,
  1700,
  2900,
  6
),

-- 7. Fraud Detection System
(
  'Real-Time Fraud Detection & Prevention',
  'AI-powered fraud detection for financial transactions. Uses anomaly detection and pattern recognition to identify suspicious activities. Includes risk scoring and automated alerts.',
  '["Python", "XGBoost", "Keras", "Django", "React", "PostgreSQL", "Kafka"]',
  'Cybersecurity',
  true,
  0,
  2500,
  3000,
  7
),

-- 8. Document Processing AI
(
  'Intelligent Document Processing System',
  'OCR and NLP-powered document extraction and classification. Automates data entry from invoices, forms, and contracts. Supports multiple languages and document formats.',
  '["Python", "Tesseract", "spaCy", "Flask", "Vue.js", "MongoDB"]',
  'Artificial Intelligence',
  true,
  0,
  1400,
  2500,
  8
),

-- 9. Smart Traffic Management
(
  'AI-Based Traffic Flow Optimization',
  'Intelligent traffic management system using computer vision and predictive analytics. Optimizes signal timing, predicts congestion, and provides real-time traffic insights.',
  '["Python", "YOLO", "OpenCV", "TensorFlow", "Django", "PostgreSQL", "MQTT"]',
  'IoT',
  true,
  0,
  2400,
  3000,
  9
),

-- 10. Medical Diagnosis Assistant
(
  'AI Medical Diagnosis Support System',
  'Machine learning system for medical image analysis and diagnosis assistance. Detects abnormalities in X-rays, MRIs, and CT scans. Includes patient record management and reporting.',
  '["Python", "PyTorch", "SimpleITK", "FastAPI", "React", "PostgreSQL"]',
  'Healthcare',
  true,
  0,
  2800,
  3000,
  10
),

-- 11. Automated Content Generator
(
  'AI Content Writing & Generation Tool',
  'GPT-powered content creation platform for blogs, social media, and marketing copy. Includes SEO optimization, tone customization, and multi-language support.',
  '["Python", "OpenAI API", "Flask", "React", "Redis", "PostgreSQL"]',
  'Artificial Intelligence',
  true,
  0,
  1200,
  2200,
  11
),

-- 12. Facial Recognition Security
(
  'Advanced Facial Recognition Access Control',
  'Biometric authentication system with live face detection and anti-spoofing. Supports multiple cameras, real-time alerts, and visitor management.',
  '["Python", "dlib", "OpenCV", "FastAPI", "React", "PostgreSQL"]',
  'Cybersecurity',
  true,
  0,
  2100,
  2900,
  12
),

-- 13. Stock Price Predictor
(
  'AI Stock Market Prediction System',
  'LSTM-based stock price forecasting with technical analysis. Provides buy/sell signals, portfolio optimization, and risk assessment. Includes backtesting capabilities.',
  '["Python", "LSTM", "Pandas", "Django", "React", "Alpha Vantage API"]',
  'Finance',
  true,
  2000,
  0,
  0,
  13
),

-- 14. Smart Agriculture Monitor
(
  'AI-Powered Crop Health Monitoring',
  'Computer vision and IoT-based agriculture monitoring system. Detects plant diseases, predicts yield, and optimizes irrigation. Includes drone integration support.',
  '["Python", "TensorFlow", "OpenCV", "Flask", "React", "InfluxDB", "MQTT"]',
  'IoT',
  true,
  0,
  2300,
  3000,
  14
),

-- 15. Email Spam Classifier
(
  'Intelligent Email Spam Detection',
  'Advanced spam filtering using machine learning. Adapts to new spam patterns, supports custom rules, and integrates with email servers. Includes reporting dashboard.',
  '["Python", "Scikit-learn", "NLTK", "FastAPI", "Vue.js", "PostgreSQL"]',
  'Cybersecurity',
  true,
  1300,
  0,
  0,
  15
),

-- 16. Virtual Try-On System
(
  'AR-Based Virtual Try-On Application',
  'Augmented reality solution for trying clothes, glasses, or makeup virtually. Uses facial landmarks and pose estimation. Includes e-commerce integration.',
  '["Python", "TensorFlow.js", "Three.js", "Node.js", "React", "MongoDB"]',
  'E-commerce',
  true,
  0,
  2600,
  3000,
  16
),

-- 17. Language Translation API
(
  'Neural Machine Translation System',
  'High-quality translation API supporting 50+ languages. Includes context-aware translation, custom glossaries, and domain-specific models. RESTful API with documentation.',
  '["Python", "Transformers", "Hugging Face", "FastAPI", "React", "PostgreSQL"]',
  'Artificial Intelligence',
  true,
  0,
  1600,
  2600,
  17
),

-- 18. Smart Home Energy Manager
(
  'AI Energy Optimization for Smart Homes',
  'Intelligent energy management system predicting consumption patterns and optimizing usage. Controls smart devices, reduces bills, and provides sustainability insights.',
  '["Python", "Prophet", "MQTT", "Django", "React Native", "MongoDB"]',
  'IoT',
  true,
  1800,
  0,
  0,
  18
),

-- 19. Code Review Assistant
(
  'AI-Powered Code Review & Bug Detection',
  'Automated code analysis tool detecting bugs, security vulnerabilities, and code smells. Provides improvement suggestions and coding best practices. Supports 15+ languages.',
  '["Python", "AST", "CodeBERT", "FastAPI", "Vue.js", "PostgreSQL"]',
  'Software Development',
  true,
  0,
  1400,
  2400,
  19
),

-- 20. Gesture Recognition System
(
  'Real-Time Hand Gesture Recognition',
  'Computer vision system for touchless control using hand gestures. Perfect for presentations, gaming, or accessibility applications. Includes custom gesture training.',
  '["Python", "MediaPipe", "OpenCV", "Flask", "React", "WebSocket"]',
  'Artificial Intelligence',
  true,
  1100,
  0,
  0,
  20
);

-- Update the sequence for display_order if needed
-- This ensures future manual inserts start after these 20 projects
