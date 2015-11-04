require 'request_helper'

describe "#tokens" do
 it "logs in" do
   user = User.create!(email: "example@example.com", password: "password")
   payload = {
     grant_type: "password",
     username: user.email,
     password: "password"
   }
   post oauth_token_path, payload
   expect(response).to have_http_status(:success)
   expect(json["access_token"]).to_not be_empty
 end
end
