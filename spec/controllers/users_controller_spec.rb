require 'spec_helper'

describe UsersController do
  describe "POST 'create'" do
    before(:each) do
      @input = { email: Faker::Internet.email, password: 'blizzard' }
    end

    it 'should succeed for valid input' do
      lambda do
        post :create, user: @input, format: :json
      end.should change(User, :count).by(1)
    end

    it 'should fail for empty email or password' do
      lambda do
        post :create, user: @input.merge({email: ''}), :format => :json
      end.should_not change(User, :count)

      lambda do
        post :create, user: @input.merge({password: ''}), :format => :json
      end.should_not change(User, :count)
    end

    it 'should fail for invalid email' do
      lambda do
        post :create, user: @input.merge({email: 'invalid-email'}), :format => :json
      end.should_not change(User, :count)
    end

    it 'should fail for password that is too short' do
      lambda do
        post :create, user: @input.merge({password: 'pwd'}), :format => :json
      end.should_not change(User, :count)
    end
  end
end