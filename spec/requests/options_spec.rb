require 'rails_helper'

RSpec.describe "Options", type: :request do
# Initialize the test data
let!(:question) { create(:question) }
let!(:options) { create_list(:option, 20, question_id: question.id) }
let(:question_id) { question.id }
let(:id) { options.first.id }

# Test suite for GET /questions/:question_id/options
describe 'GET /questions/:question_id/options' do
  before { get "/questions/#{question_id}/options" }

  context 'when question exists' do
    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

    it 'returns all question options' do
      expect(json.size).to eq(20)
    end
  end

  context 'when question does not exist' do
    let(:question_id) { 0 }

    it 'returns status code 404' do
      expect(response).to have_http_status(404)
    end

    it 'returns a not found message' do
      expect(response.body).to match(/Couldn't find Question/)
    end
  end
end

# Test suite for GET /questions/:question_id/options/:id
describe 'GET /questions/:question_id/options/:id' do
  before { get "/questions/#{question_id}/options/#{id}" }

  context 'when question option exists' do
    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

    it 'returns the option' do
      expect(json['id']).to eq(id)
    end
  end

  context 'when question option does not exist' do
    let(:id) { 0 }

    it 'returns status code 404' do
      expect(response).to have_http_status(404)
    end

    it 'returns a not found message' do
      expect(response.body).to match(/Couldn't find Option/)
    end
  end
end

# Test suite for PUT /questions/:question_id/options
describe 'POST /questions/:question_id/options' do
  let(:valid_attributes) { { o_text: 'Eight years old!', score: 1 } }

  context 'when request attributes are valid' do
    before { post "/questions/#{question_id}/options", params: valid_attributes }

    it 'returns status code 201' do
      expect(response).to have_http_status(201)
    end
  end

  context 'when an invalid request' do
    before { post "/questions/#{question_id}/options", params: {} }

    it 'returns status code 422' do
      expect(response).to have_http_status(422)
    end

    it 'returns a failure message' do
      expect(response.body).to match(/Validation failed: O text can't be blank, Score can't be blank/)
    end
  end
end

# Test suite for PUT /questions/:question_id/options/:id
describe 'PUT /questions/:question_id/options/:id' do
  let(:valid_attributes) { { o_text: 'Mozart' } }

  before { put "/questions/#{question_id}/options/#{id}", params: valid_attributes }

  context 'when option exists' do
    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end

    it 'updates the option' do
      updated_option = Option.find(id)
      expect(updated_option.o_text).to match(/Mozart/)
    end
  end

  context 'when the option does not exist' do
    let(:id) { 0 }

    it 'returns status code 404' do
      expect(response).to have_http_status(404)
    end

    it 'returns a not found message' do
      expect(response.body).to match(/Couldn't find Option/)
    end
  end
end

# Test suite for DELETE /questions/:id
describe 'DELETE /questions/:id' do
  before { delete "/questions/#{question_id}/options/#{id}" }

  it 'returns status code 204' do
    expect(response).to have_http_status(204)
  end
end
end
