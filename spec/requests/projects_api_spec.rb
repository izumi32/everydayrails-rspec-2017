require 'rails_helper'

<<<<<<< HEAD
describe 'Projects API', type: :request do
  it 'loads a project' do
=======
RSpec.describe "Projects API", type: :request do

  it "loads a project" do
>>>>>>> my-07-requests
    user = FactoryBot.create(:user)
    FactoryBot.create(:project, name: "Sample Project")
    FactoryBot.create(:project, name: "Second Sample Project", owner: user)

    get api_projects_path, params: {
<<<<<<< HEAD
      user_email: user.email,
      user_token: user.authentication_token
    }

=======
                              user_email: user.email,
                              user_token: user.authentication_token
                            }
>>>>>>> my-07-requests
    expect(response).to have_http_status(:success)
    json = JSON.parse(response.body)
    expect(json.length).to eq 1
    project_id = json[0]["id"]

    get api_project_path(project_id), params: {
<<<<<<< HEAD
      user_email: user.email,
      user_token: user.authentication_token
    }

    expect(response).to have_http_status(:success)
    json = JSON.parse(response.body)
    expect(json["name"]).to eq "Second Sample Project"
    # Etc.
  end

  it 'creates a project' do
    user = FactoryBot.create(:user)
    FactoryBot.create(:project, name: "Sample Project")
    FactoryBot.create(:project, name: "Second Sample Project", owner: user)
=======
                                        user_email: user.email,
                                        user_token: user.authentication_token
                                      }
    expect(response).to have_http_status(:success)
    json = JSON.parse(response.body)
    expect(json["name"]).to eq "Second Sample Project"
  end

  it "creates a project" do
    user = FactoryBot.create(:user)
>>>>>>> my-07-requests

    project_attributes = FactoryBot.attributes_for(:project)

    expect {
      post api_projects_path, params: {
        user_email: user.email,
        user_token: user.authentication_token,
        project: project_attributes
      }
    }.to change(user.projects, :count).by(1)

    expect(response).to have_http_status(:success)
  end
end
