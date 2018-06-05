require 'rails_helper'

RSpec.describe Product, type: :model do
  it { should belong_to :category }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:price_in_cents) }
  it { is_expected.to validate_presence_of(:description) }
end
