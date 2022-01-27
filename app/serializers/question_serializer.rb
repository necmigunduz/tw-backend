class QuestionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :q_text, :image
  has_many :options
end
