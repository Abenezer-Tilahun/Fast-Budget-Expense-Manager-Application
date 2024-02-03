require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    @user = User.new(name: 'Abeni', email: 'ab@gmail.com', password: 'Abeni2128', password_confirmation: 'Abeni2128')

    @user.save

    @group = Group.new(name: 'Group-1', icon: 'home', color: '#000000')

    @group.save

    @entity = Entity.new(name: 'Entity-1', amount: 100, description: 'Description-1')

    @entity.save

    @group.entities << @entity
  end

  it 'should have a name' do
    @group.name
    expect(@group.name).to eq('Group-1')
  end

  it 'should have an icon' do
    @group.icon
    expect(@group.icon).to eq('home')
  end

  it 'should have a color' do
    @group.color
    expect(@group.color).to eq('#000000')
  end

  it 'should have entities' do
    @group.entities
    expect(@group.entities).to eq([@entity])
  end
end
