require 'request_helper'

describe '#create' do
  it "creates user" do
    payload = {
      user: {
        email: "examplexoxo@gmail.com",
        password: "password"
      }
    }
    post users_path, payload
    expect(response).to have_http_status(:created)
  end



describe '#show' do
  it "show user" do
    payload = {
      "user": {
        "email": "example123@gmail.com",
        "password": "password"
      }
    }

    post users_path, payload
    binding.pry
    expect(response).to have_http_status(:created)
    expect(json["user"]["email"]).to eq payload["user"]["email"]
  end
end
end
