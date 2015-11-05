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
      binding.pry
      expect(json[0]["body"]).to eq tweet["body"]
    end
  end
end
