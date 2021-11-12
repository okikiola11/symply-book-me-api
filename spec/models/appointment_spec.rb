require 'rails_helper'

RSpec.describe Appointment, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:lawyer) }
  it { is_expected.to have_db_column(:appointed_date) }
  it { is_expected.to have_db_column(:location) }
  it { is_expected.to have_db_column(:lawyer_name) }
end
