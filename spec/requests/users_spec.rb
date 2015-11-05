require 'request_helper'
RSpec.describe "Users" do
  describe '#create' do
    it "creates user" do
      payload = {
        "user": {
         "email": "examplexoxo@gmail.com",
          "password": "password"
        }
      }
      post users_path, payload
      expect(response).to have_http_status(:created)
    end



    describe '#show' do
      it "show user" do
        payload = {
            "username": "example123@gmail.com",
            "password": "password"
        }
        user = User.create(payload)
        get user_path(user)
        binding.pry
        expect(response).to have_http_status(:success)
        expect(json["username"]).to eq payload["username"]
      end
    end
  end
end
