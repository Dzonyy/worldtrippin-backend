# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HashData::Users::CreateFactory do
  describe '.call' do
    subject do
      described_class.call(params: params)
    end

    let!(:expected_hash) do
      {
        email: 'test@example.com',
        first_name: 'Test',
        last_name: 'Test',
        password: '123qwe123',
        password_confirmation: '123qwe123'
      }
    end

    let!(:params) do
      {
        email: 'test@example.com',
        first_name: 'Test',
        last_name: 'Test',
        password: '123qwe123',
        password_confirmation: '123qwe123'
      }
    end

    it { expect(subject).to eq(expected_hash) }
  end
end
