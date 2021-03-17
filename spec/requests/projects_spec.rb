require 'rails_helper'

RSpec.describe "Projects", type: :request do
<<<<<<< HEAD
  context "as an authenticated user" do
=======

  context "as an authenticated" do

>>>>>>> my-07-requests
    before do
      @user = FactoryBot.create(:user)
    end

    context "with valid attributes" do
<<<<<<< HEAD
=======

>>>>>>> my-07-requests
      it "adds a project" do
        project_params = FactoryBot.attributes_for(:project)
        sign_in @user
        expect {
          post projects_path, params: { project: project_params }
        }.to change(@user.projects, :count).by(1)
      end
    end

    context "with invalid attributes" do
<<<<<<< HEAD
=======

>>>>>>> my-07-requests
      it "does not add a project" do
        project_params = FactoryBot.attributes_for(:project, :invalid)
        sign_in @user
        expect {
          post projects_path, params: { project: project_params }
        }.to_not change(@user.projects, :count)
      end
    end
  end
end
