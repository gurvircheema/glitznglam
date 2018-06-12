require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  let(:category) { FactoryBot.create(:category) }
  let(:product) { FactoryBot.create(:product, category: category) }

  describe '#index' do
    before { get :index }

    it 'list the products' do
      expect(assigns(:products)).to include(product)
    end
  end
end