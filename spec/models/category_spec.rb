require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'Factory' do
    it 'is valid' do
      expect(FactoryBot.create(:category)).to be_valid
    end
  end

  it { should have_many(:products) }
  it { is_expected.to validate_presence_of(:name) }

  describe 'DB Table' do
    it {is_expected.to have_db_column(:name).of_type(:string)}
    it {is_expected.to have_db_column(:description).of_type(:string)}
  end

  describe 'Attachment' do
    it 'is valid ' do
      subject.image.attach(io: File.open(fixture_path + '/category_image.jpeg'), filename: 'category.jpeg', content_type: 'image/jpeg')
      expect(subject.image).to be_attached
    end
  end
end
