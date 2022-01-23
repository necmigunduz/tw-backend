require 'rails_helper'

RSpec.describe Option, type: :model do
  # Association test
  it { should belong_to(:question) }

  # Feature presence test
  it { should validate_presence_of(:o_text) }
  it { should validate_presence_of(:score) }
end
