require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'validation tests' do
    it 'ensures post presence' do
      post = Post.new(title: 'Chicken chilli').save
      expect(post).to eq(true)
    end
  end
end
