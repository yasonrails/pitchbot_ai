# app/services/emotion_analysis_service.rb
class EmotionAnalysisService
  def initialize(text)
    @text = text
  end

  def analyze
    # Appel API de traitement d'analyse émotionnelle
    { tone: "positif", score: 0.85 }
  end
end
