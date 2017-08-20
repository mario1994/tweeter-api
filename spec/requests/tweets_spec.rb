require 'rails_helper'

RSpec.describe 'Tweet API', type: :request do
  # initialize test data 
  let!(:tweet) { create_list(:tweet, 10) }
  let(:tweet_id) { todos.first.id }

  # Test suite for GET /tweets
  describe 'GET /tweets' do
    # make HTTP get request before each example
    before { get '/tweets' }

    it 'returns tweets' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /tweets/:id
  describe 'GET /tweets/:id' do
    before { get "/tweets/#{tweet_id}" }

    context 'when the record exists' do
      it 'returns the tweet' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(tweet_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:tweet_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Tweet/)
      end
    end
  end

  # Test suite for POST /tweets
  describe 'POST /tweets' do
    # valid payload
    let(:valid_attributes) { { tweetAuthor: 'Mario Boban'} }

    context 'when the request is valid' do
      before { post '/tweets', params: valid_attributes }

      it 'creates a tweet' do
        expect(json['tweetAuthor']).to eq('Mario Boban')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/tweets', params: { title: 'Foobar' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: Created by can't be blank/)
      end
    end
  end

  # Test suite for PUT /tweets/:id
  describe 'PUT /tweets/:id' do
    let(:valid_attributes) { { tweetAuthor: 'Shopping' } }

    context 'when the record exists' do
      before { put "/tweets/#{tweet_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  # Test suite for DELETE /tweets/:id
  describe 'DELETE /tweets/:id' do
    before { delete "/tweets/#{tweet_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end