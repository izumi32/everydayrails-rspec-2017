require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
<<<<<<< HEAD
  describe "#index" do
    context "as an authenticated user" do
=======

  describe "#index" do

    context "as an authenticated user" do

>>>>>>> my-05-controllers
      before do
        @user = FactoryBot.create(:user)
      end

      it "responds successfully" do
        sign_in @user
        get :index
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> my-08-dry-specs
        aggregate_failures do
          expect(response).to be_success
          expect(response).to have_http_status "200"
        end
<<<<<<< HEAD
=======
        expect(response).to be_success
      end

      it "returns 200 response" do
        sign_in @user
        get :index
        expect(response).to have_http_status "200"
>>>>>>> my-05-controllers
=======
>>>>>>> my-08-dry-specs
      end
    end

    context "as a guest" do
<<<<<<< HEAD
      it "returns a 302 response" do
=======

      it "returns 302 response" do
>>>>>>> my-05-controllers
        get :index
        expect(response).to have_http_status "302"
      end

      it "redirects to the sign-in page" do
        get :index
        expect(response).to redirect_to "/users/sign_in"
      end
    end
  end

  describe "#show" do
<<<<<<< HEAD
    context "as an authorized user" do
=======

    context "as an authorized user" do

>>>>>>> my-05-controllers
      before do
        @user = FactoryBot.create(:user)
        @project = FactoryBot.create(:project, owner: @user)
      end

      it "responds successfully" do
        sign_in @user
        get :show, params: { id: @project.id }
        expect(response).to be_success
      end
    end

    context "as an unauthorized user" do
<<<<<<< HEAD
=======

>>>>>>> my-05-controllers
      before do
        @user = FactoryBot.create(:user)
        other_user = FactoryBot.create(:user)
        @project = FactoryBot.create(:project, owner: other_user)
      end

      it "redirects to the dashboard" do
        sign_in @user
        get :show, params: { id: @project.id }
        expect(response).to redirect_to root_path
      end
    end
  end

  describe "#create" do
<<<<<<< HEAD
    context "as an authenticated user" do
=======

    context "as an authorized user" do

>>>>>>> my-05-controllers
      before do
        @user = FactoryBot.create(:user)
      end

      context "with valid attributes" do
<<<<<<< HEAD
=======

>>>>>>> my-05-controllers
        it "adds a project" do
          project_params = FactoryBot.attributes_for(:project)
          sign_in @user
          expect {
            post :create, params: { project: project_params }
          }.to change(@user.projects, :count).by(1)
        end
      end

      context "with invalid attributes" do
<<<<<<< HEAD
=======

>>>>>>> my-05-controllers
        it "does not add a project" do
          project_params = FactoryBot.attributes_for(:project, :invalid)
          sign_in @user
          expect {
            post :create, params: { project: project_params }
          }.to_not change(@user.projects, :count)
        end
      end
    end

    context "as a guest" do
<<<<<<< HEAD
=======

>>>>>>> my-05-controllers
      it "returns a 302 response" do
        project_params = FactoryBot.attributes_for(:project)
        post :create, params: { project: project_params }
        expect(response).to have_http_status "302"
      end

<<<<<<< HEAD
      it "redirects to the sign-in page" do
=======
      it "redirects to sign-in page" do
>>>>>>> my-05-controllers
        project_params = FactoryBot.attributes_for(:project)
        post :create, params: { project: project_params }
        expect(response).to redirect_to "/users/sign_in"
      end
    end
  end

  describe "#update" do
<<<<<<< HEAD
    context "as an authorized user" do
=======

    context "as an authorized user" do

>>>>>>> my-05-controllers
      before do
        @user = FactoryBot.create(:user)
        @project = FactoryBot.create(:project, owner: @user)
      end

      it "updates a project" do
<<<<<<< HEAD
        project_params = FactoryBot.attributes_for(:project,
          name: "New Project Name")
=======
        project_params = FactoryBot.attributes_for(:project, name: "New Project Name")
>>>>>>> my-05-controllers
        sign_in @user
        patch :update, params: { id: @project.id, project: project_params }
        expect(@project.reload.name).to eq "New Project Name"
      end
    end

    context "as an unauthorized user" do
<<<<<<< HEAD
      before do
        @user = FactoryBot.create(:user)
        other_user = FactoryBot.create(:user)
        @project = FactoryBot.create(:project,
          owner: other_user,
          name: "Same Old Name")
      end

      it "does not update the project" do
        project_params = FactoryBot.attributes_for(:project,
          name: "New Name")
=======

      before do
        @user = FactoryBot.create(:user)
        other_user = FactoryBot.create(:user)
        @project = FactoryBot.create(:project, owner: other_user, name: "Same Old Name")
      end

      it "does not update the project" do
        project_params = FactoryBot.attributes_for(:project, name: "New Name")
>>>>>>> my-05-controllers
        sign_in @user
        patch :update, params: { id: @project.id, project: project_params }
        expect(@project.reload.name).to eq "Same Old Name"
      end

<<<<<<< HEAD
      it "redirects to the dashboard" do
=======
      it "redirects to dashboard" do
>>>>>>> my-05-controllers
        project_params = FactoryBot.attributes_for(:project)
        sign_in @user
        patch :update, params: { id: @project.id, project: project_params }
        expect(response).to redirect_to root_path
      end
    end

    context "as a guest" do
<<<<<<< HEAD
=======

>>>>>>> my-05-controllers
      before do
        @project = FactoryBot.create(:project)
      end

      it "returns a 302 response" do
        project_params = FactoryBot.attributes_for(:project)
        patch :update, params: { id: @project.id, project: project_params }
        expect(response).to have_http_status "302"
      end

      it "redirects to the sign-in page" do
        project_params = FactoryBot.attributes_for(:project)
        patch :update, params: { id: @project.id, project: project_params }
        expect(response).to redirect_to "/users/sign_in"
      end
    end
  end

  describe "#destroy" do
<<<<<<< HEAD
    context "as an authorized user" do
=======

    context "as an authorized user" do

>>>>>>> my-05-controllers
      before do
        @user = FactoryBot.create(:user)
        @project = FactoryBot.create(:project, owner: @user)
      end

      it "deletes a project" do
        sign_in @user
        expect {
          delete :destroy, params: { id: @project.id }
        }.to change(@user.projects, :count).by(-1)
      end
    end

    context "as an unauthorized user" do
<<<<<<< HEAD
=======

>>>>>>> my-05-controllers
      before do
        @user = FactoryBot.create(:user)
        other_user = FactoryBot.create(:user)
        @project = FactoryBot.create(:project, owner: other_user)
      end

<<<<<<< HEAD
      it "does not delete the project" do
        sign_in @user
        expect {
          delete :destroy, params: { id: @project.id }
        }.to_not change(Project, :count)
=======
      it "does not delete a project" do
        sign_in @user
        expect{
          delete :destroy, params: { id: @project.id }
        }.to_not change(@user.projects, :count)
>>>>>>> my-05-controllers
      end

      it "redirects to the dashboard" do
        sign_in @user
        delete :destroy, params: { id: @project.id }
        expect(response).to redirect_to root_path
      end
    end

    context "as a guest" do
<<<<<<< HEAD
=======

>>>>>>> my-05-controllers
      before do
        @project = FactoryBot.create(:project)
      end

      it "returns a 302 response" do
        delete :destroy, params: { id: @project.id }
        expect(response).to have_http_status "302"
      end

<<<<<<< HEAD
      it "redirects to the sign-in page" do
=======
      it "redirects to sign-in page" do
>>>>>>> my-05-controllers
        delete :destroy, params: { id: @project.id }
        expect(response).to redirect_to "/users/sign_in"
      end

<<<<<<< HEAD
      it "does not delete the project" do
        expect {
=======
      it "does not delete a the project" do
        expect{
>>>>>>> my-05-controllers
          delete :destroy, params: { id: @project.id }
        }.to_not change(Project, :count)
      end
    end
  end
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> my-11-tdd

  describe "#complete" do
    context "as an authenticated user" do
      let!(:project) { FactoryBot.create(:project, completed: nil) }

      before do
        sign_in project.owner
      end

      describe "an unsuccessful completion" do
        before do
<<<<<<< HEAD
          allow_any_instance_of(Project).
            to receive(:update_attributes).
            with(completed: true).
            and_return(false)
=======
          allow_any_instance_of(Project).to receive(:update_attributes).with(completed: true).and_return(false)
>>>>>>> my-11-tdd
        end

        it "redirects to the project page" do
          patch :complete, params: { id: project.id }
          expect(response).to redirect_to project_path(project)
        end

        it "sets the flash" do
          patch :complete, params: { id: project.id }
          expect(flash[:alert]).to eq "Unable to complete project."
        end

        it "doesn't mark the project as completed" do
          expect {
            patch :complete, params: { id: project.id }
          }.to_not change(project, :completed)
        end
      end
    end
  end
<<<<<<< HEAD
=======
>>>>>>> my-05-controllers
=======
>>>>>>> my-11-tdd
end
