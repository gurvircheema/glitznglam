require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe '#index' do
    subject(:make_request) { get :index }
    before { make_request }

    it 'should render index' do
      expect(response).to render_template(:index)
    end
  end
end