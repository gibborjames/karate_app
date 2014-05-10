require 'spec_helper'

describe UsersController, focus: true do

  describe "#create" do
    context 'with valid parameters' do
      it 'should create new record of user' do
        user_params = {
          user: {
            email: 'james@example.com',
            firstname: 'james',
            middlename: 'umil',
            lastname: 'delacruz',
            password: SecureRandom.hex(5)
          }
        }
        expect {
          post :create, user_params
        }.to change(User, :count).by(1)
      end
    end

    context 'with invalid parameters' do

    end
  end
end
