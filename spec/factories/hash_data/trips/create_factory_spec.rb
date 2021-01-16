# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HashData::Trips::CreateFactory do
  describe '.call' do
    subject do
      described_class.call(params: params)
    end

    let!(:expected_hash) do
      {
        user_id: 1,
        start_at: '12-12-2021',
        end_at: '14-12-2021',
        title: 'Trip',
        description: 'Trip opis',
        location: 'Długa 52, Kraków',
        lng: '50.00',
        lat: '23,32'
      }
    end

    let!(:params) do
      {
        user_id: 1,
        start_at: '12-12-2021',
        end_at: '14-12-2021',
        title: 'Trip',
        description: 'Trip opis',
        location: 'Długa 52, Kraków',
        lng: '50.00',
        lat: '23,32'
      }
    end

    it { expect(subject).to eq(expected_hash) }
  end
end
