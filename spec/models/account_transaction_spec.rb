require 'rails_helper'

RSpec.describe AccountTransaction, type: :model do
  subject { create(:account_transaction) }

  describe 'validations' do
    describe 'association' do
      it { is_expected.to belong_to(:account) }
      it { is_expected.to belong_to(:transfer).optional }
      it { is_expected.to have_one(:account_withdraw_request).optional }
    end

    describe 'presence' do
      it { is_expected.to validate_presence_of(:transaction_type) }
      it { is_expected.to validate_presence_of(:amount) }
    end
  end
end
