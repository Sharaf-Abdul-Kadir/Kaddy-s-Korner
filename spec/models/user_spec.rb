require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensures email uniqueness' do
      user = User.new(email: 'abdulkadirsharaf@gmail.com',password: '12345678').save
      user1 = User.new(email: 'abdulkadirsharaf@gmail.com',password: '12345678').save
      expect(user1).to eq(false)
    end
  end
end
