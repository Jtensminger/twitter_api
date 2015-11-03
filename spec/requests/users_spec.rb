require 'request_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "works! (now write some real specs)" do
      get users_path
      expect(response).to have_http_status(200)
    end
  end
  describe "POST /users/login" do
    let(:payload) {{ email: 'joe@example.com', password: 'password'}}

    it "allows user to login" do
      User.create(payload)
      post login_users_path, payload
      expect(response).to have_http_status(:success)
      expect(json['token']).to_not be_empty
    end
    it "denies user to login" do
      User.create(payload)
      post login_users_path, {email: 'joe@example', password: 'duckit'}
      expect(response).to have_http_status(:unauthorized)
      expect(json['token']).to be_nil
    end
  end
end
