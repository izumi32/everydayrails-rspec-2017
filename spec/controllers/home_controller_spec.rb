require 'rails_helper'

RSpec.describe HomeController, type: :controller do
<<<<<<< HEAD
  describe "#index" do
=======

  describe "#index" do

>>>>>>> my-05-controllers
    it "responds successfully" do
      get :index
      expect(response).to be_success
    end
<<<<<<< HEAD
  end

  it "returns a 200 response" do
    get :index
    expect(response).to have_http_status "200"
=======

    it "returns a 200 response" do
      get :index
      expect(response).to have_http_status "200"
    end
>>>>>>> my-05-controllers
  end
end
