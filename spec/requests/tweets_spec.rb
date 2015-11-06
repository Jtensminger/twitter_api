require 'request_helper'

RSpec.describe "Tweets" do

  let(:tweet) { FactoryGirl.create :tweet }
  let(:tweet2) { FactoryGirl.create :tweet }
  describe "#index" do
    it "shows all tweets" do
      tweet
      tweet2
      get tweets_path
      expect(response).to have_http_status(:success)
      expect(json.count).to eq 2
    end
  end

  describe "#show" do
    let(:tweet) { FactoryGirl.create :tweet }
    it "show a tweet" do
      get tweets_path, tweet
      expect(response).to have_http_status(:success)
      expect(json[0]["body"]).to eq tweet["body"]
    end
  end

  describe "#create" do

    it "creates a tweet" do
      token = get_token['access_token']
      post tweet_path, payload, { 'Authenticate' => "Bearer #{token}"}
      expect(response).to have_http_status(:created)
      expect(json["body"]).to eq payload.body
    end
  end
end
