require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Factory' do
    category = FactoryBot.create(:category)
    it 'is valid' do
      expect(FactoryBot.create(:product, category: category)).to be_valid
    end
  end

  it { should belong_to :category }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:price_in_cents) }
  it { is_expected.to validate_presence_of(:description) }

  describe 'DB Table' do
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:category_id).of_type(:integer) }
    it { is_expected.to have_db_column(:description).of_type(:text) }
    it { is_expected.to have_db_column(:size).of_type(:string) }
    it { is_expected.to have_db_column(:price_in_cents).of_type(:integer) }
    it { is_expected.to have_db_column(:on_sale).of_type(:boolean) }
    it { is_expected.to have_db_column(:sale_percenteage).of_type(:integer) }
    it { is_expected.to have_db_column(:fabric).of_type(:string) }
    it { is_expected.to have_db_column(:featured).of_type(:boolean) }
    it { is_expected.to have_db_column(:gender).of_type(:string) }
    it { is_expected.to have_db_column(:color).of_type(:string) }
  end

  describe 'Attachment' do
    it 'is valid' do
      subject.images.attach(io: File.open(fixture_path + '/product_image.jpeg'), filename: 'product_image.jpeg', content_type: 'image/jpeg')
      expect(subject.images).to be_attached
    end
  end
end
