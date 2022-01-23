class Question < ApplicationRecord
    has_many :options, dependent: :destroy

    validates_presence_of :q_text, :image
end
