require 'spec_helper'

describe UsersController do

  describe "#create" do
    context 'with valid parameters' do
      it 'should create new record of user' do
        user_params = {
          user: {
            email: 'james@example.com',
            firstname: 'james',
            middlename: 'umil',
            lastname: 'delacruz',
            password: SecureRandom.hex(5),
            facebook_account: 'www.facebook.com/12345'
          }
        }
        expect {
          post :create, user_params
        }.to change(User, :count).by(1)
      end
    end

    context 'with invalid parameters' do
      it "should not create record" do
        user_params = {
          user: {
            email: '',
            firstname: 'james',
            middlename: 'umil',
            lastname: 'delacruz',
            password: SecureRandom.hex(5),
            facebook_account: 'www.facebook.com/12345'
          }
        }
        expect {
          post :create, user_params
        }.not_to change(User, :count).by(1)
      end
    end
  end
end
