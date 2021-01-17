require 'rails_helper'

RSpec.describe Users::CreateOperation do
  describe '.call' do
    let!(:params) do
      {
        email: 'test@example.com',
        first_name: 'Test',
        last_name: 'Test',
        password: '123qwe123',
        password_confirmation: '123qwe123'
      }
    end

    subject { described_class.call(form: params) }

    it { expect { subject }.to change { User.count }.by(1) }
  end
end
