require 'rails_helper'

RSpec.describe 'Visiting root path', type: :request do
  describe 'should render home#index' do
    subject(:visit_root_path) { get root_path }
    before { visit_root_path }

    it 'should render index template' do
      expect(response).to render_template :index
    end

    it 'should be successful' do
      expect(response).to have_http_status(:ok)
    end
  end
end