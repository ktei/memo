require 'spec_helper'

describe SessionsController do
  describe "POST 'create'" do
    before(:each) do
      @user = FactoryGirl.create(:user)
      @input = { email: @user.email, password: @user.password }
    end
    
    it 'should fail for wrong email or password' do
      post :create, session: @input.merge({ email: 'wrongemail@wrong.com' }), format: :json
      res = JSON.parse(response.body)
      res['success'].should be_false
      res['message'].should == ERRORS[:invalid_credential]
      
      post :create, session: @input.merge({ password: 'wrongpass' }), format: :json
      res = JSON.parse(response.body)
      res['success'].should be_false
      res['message'].should == ERRORS[:invalid_credential]
    end
    
    it 'should succeed with correct email and password' do
      post :create, session: @input, format: :json
      res = JSON.parse(response.body)
      res['success'].should be_true
    end
  end
end