require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:lawyers) }
  it { is_expected.to have_db_column(:name) }
  it { is_expected.to have_db_column(:email) }
end
