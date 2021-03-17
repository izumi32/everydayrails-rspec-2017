require 'rails_helper'

RSpec.describe TasksController, type: :controller do
<<<<<<< HEAD
<<<<<<< HEAD
  include_context "project setup"

  describe "#show" do
    it "responds with JSON formatted output" do
      sign_in user
      get :show, format: :json,
        params: { project_id: project.id, id: task.id }
      expect(response).to have_content_type :json
=======

  before do
    @user = FactoryBot.create(:user)
    @project = FactoryBot.create(:project, owner: @user)
    @task = @project.tasks.create!(name: "Test task")
  end
=======
  include_context "project setup"
>>>>>>> my-08-dry-specs

  describe "#show" do

    it "responds with JSON formatted output" do
<<<<<<< HEAD
      sign_in @user
      get :show, format: :json, params: { project_id: @project.id, id: @task.id }
      expect(response.content_type).to eq "application/json"
>>>>>>> my-05-controllers
=======
      sign_in user
      get :show, format: :json,
        params: { project_id: project.id, id: task.id }
      expect(response).to have_content_type :json
>>>>>>> my-08-dry-specs
    end
  end

  describe "#create" do
<<<<<<< HEAD
    it "responds with JSON formatted output" do
      new_task = { name: "New test task" }
      sign_in user
      post :create, format: :json,
        params: { project_id: project.id, task: new_task }
      expect(response).to have_content_type :json
    end

    it "adds a new task to the project" do
      new_task = { name: "New test task" }
      sign_in user
      expect {
        post :create, format: :json,
          params: { project_id: project.id, task: new_task }
      }.to change(project.tasks, :count).by(1)
    end

    it "requires authentication" do
      new_task = { name: "New test task" }
      # Don't sign in this time ...
      expect {
        post :create, format: :json,
          params: { project_id: project.id, task: new_task }
      }.to_not change(project.tasks, :count)
<<<<<<< HEAD
=======

    it "responds with JSON formatted output" do
      new_task = { name: "New task test" }
      sign_in @user
      post :create, format: :json, params: { project_id: @project.id, task: new_task }
      expect(response.content_type).to eq "application/json"
    end

    it "adds a new task to the project" do
      new_task = { name: "New task test" }
      sign_in @user
      expect {
        post :create, format: :json, params: { project_id: @project.id, task: new_task }
      }.to change(@project.tasks, :count).by(1)
    end

    it "requires authentication" do
      new_task = { name: "New task test" }
      expect {
        post :create, format: :json, params: { project_id: @project.id, task: new_task }
      }.to_not change(@project.tasks, :count)
>>>>>>> my-05-controllers
=======
>>>>>>> my-08-dry-specs
      expect(response).to_not be_success
    end
  end
end
