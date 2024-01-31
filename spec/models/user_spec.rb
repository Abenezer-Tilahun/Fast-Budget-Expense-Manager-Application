require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.new(name: 'Abeni', email: 'ab@gmail.com', password: 'Abeni2128', password_confirmation: 'Abeni2128')

    @user.save

    @group = Group.new(name: 'Group-1', icon: 'home', color: '#000000')

    @group.save

    @entity = Entity.new(name: 'Entity-1', amount: 100, description: 'Description-1')

    @entity.save
  end

  it 'should be valid' do
    expect(@user).to be_valid
  end

  it 'should have a name' do
    @user.name
    expect(@user.name).to eq('Abeni')
  end

  it 'should have an email' do
    @user.email
    expect(@user.email).to eq('ab@gmail.com')
  end

  it 'should have a password' do
    @user.password
    expect(@user.password).to eq('Abeni2128')
  end

  it 'should have a password_confirmation' do
    @user.password_confirmation
    expect(@user.password_confirmation).to eq('Abeni2128')
  end
end
