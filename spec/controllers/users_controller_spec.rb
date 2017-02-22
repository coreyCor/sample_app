require 'rails_helper'

describe UsersController, :type => :controller do
 
    let(:user) { User.create!(email: 'testies@test', password: '1234567890') }
    let(:user_2) { User.create!(email: "testides@test", password: "123dc456789") }
  
 
  describe 'GET #show', :type => :controller do
     context 'User is logged in' do
         before do 
         sign_in user
     end
     
    it "loads user details" do 
      get :show, id: user.id
      expect(response).to have_http_status (200)
      expect(assigns(:user)).to eq user
      end
    end
    
  context 'No user is logged in' do
    it 'redirects to login' do
      get :show, id: user.id
      expect(response).to redirect_to(root_path)
    end
   end
  end
end
