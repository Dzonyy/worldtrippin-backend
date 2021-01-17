require 'rails_helper'

RSpec.describe Users::UpdateOperation do
  describe '.call' do
    let!(:user) { create(:user) }
    let!(:params) do
      {
        first_name: 'Test33',
        last_name: 'Test3'
      }
    end

    subject { described_class.call(user: user, form: params) }

    it { expect { subject }.to change{ user.reload.first_name }.to eq('Test33') }
  end
end
