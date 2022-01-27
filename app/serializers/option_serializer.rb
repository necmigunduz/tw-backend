class OptionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :o_text, :score, :question_id
  belongs_to :question
end
