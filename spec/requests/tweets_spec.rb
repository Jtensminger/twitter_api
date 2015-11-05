require 'rails_helper'

RSpec.describe "Tweets" do

  describe "#index" do
    let(:tweet) { FactoryGirl.create :tweet }
    it "show all tweets" do
      get tweets_path, tweet
      expect(response).to have_http_status(:success)
      expect(json.count).to eq 1
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
    let(:user1) { FactoryGirl.create :user }
    let(:payload) { { tweet: FactoryGirl.attributes_for(:tweet) } }
    it "show a tweet" do
      post tweets_path, payload
      expect(response).to have_http_status(:created)
      expect(json["body"]).to eq payload.body
    end
  end
end
