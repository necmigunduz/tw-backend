require 'rails_helper'

RSpec.describe Question, type: :model do
  # Association test
  it { should have_many(:options) }
  
  # Feature presence test
  it { should validate_presence_of(:q_text) }
  it { should validate_presence_of(:image) }
end
