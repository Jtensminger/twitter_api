require 'request_helper'
require 'pry'

RSpec.describe "Users" do


  describe "#create" do
    it "creates user" do
      payload = {
        user: {
          email: "faker@fake.com",
          password: "password"
        }
      }
      post users_path, payload
      expect(response).to have_http_status(:created)
    end

    it "requires email" do
      payload = {
        user: {
          email: "",
          password: "dowhatnow"
        }
      }
      post users_path, payload
      expect(response).to have_http_status(:unprocessable_entity)
      expect(json["email"]).to_not be_empty
    end
  end


  describe "#index" do
    let(:user1) { FactoryGirl.create :user }
    it "shows multiple users" do
      user1
      get users_path, format: :json
      expect(response).to have_http_status(:success)
      expect(json.count).to eq 1
    end
  end

  describe "#show" do
    let(:user1) { FactoryGirl.create :user }
    it "shows a user" do
      get user_path(user1), format: :json
      expect(response).to have_http_status(:success)
      expect(json["email"]).to eq user1["email"]
    end
  end
end
