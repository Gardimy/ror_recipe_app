require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    user = User.new(
      name: 'gardy charles',
      email: 'gardimy@example.com',
      password: 'password5895',
      password_confirmation: 'password5895'
    )
    expect(user).to be_valid
  end

  it 'is not valid without a name' do
    user = User.new(
      email: 'gardimy@example.com',
      password: 'password5895',
      password_confirmation: 'password5895'
    )
    expect(user).to_not be_valid
  end
end
