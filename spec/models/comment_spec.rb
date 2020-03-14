require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'validation tests' do
    it 'ensures Username presence' do
      @post= Post.create(title: 'Burger Delight')
      comment = @post.comments.create(username:'Chef Kapoor').save
      expect(comment).to eq(true)
    end
  end
end
