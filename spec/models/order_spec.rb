
RSpec.describe Order, type: :model do
  it { is_expected.to have_db_column :user_id }
  it { is_expected.to have_db_column :active }

  it { is_expected.to belong_to :user}
end
