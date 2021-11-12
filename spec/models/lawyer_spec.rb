require 'rails_helper'

RSpec.describe Lawyer, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:appointments) }
  it { is_expected.to have_db_column(:name) }
  it { is_expected.to have_db_column(:image_data) }
  it { is_expected.to have_db_column(:location) }
end
