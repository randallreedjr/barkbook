require 'rails_helper'

RSpec.describe DogsController, type: :controller do
  describe '#index' do
    it 'displays recent dogs' do
      2.times { create(:dog) }
      get :index
      expect(assigns(:dogs).size).to eq(2)
    end
  end

  describe '#index' do
    it 'paginates dogs' do
      6.times { create(:dog) }
      get :index
      expect(assigns(:dogs).size).to eq(5)
    end
  end
end
