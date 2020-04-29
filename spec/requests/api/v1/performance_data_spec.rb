# frozen_string_literal: true

RSpec.describe Api::V1::PerformanceDataController, type: :request do
  let(:user) { create(:user) }
  let(:credentials) { user.create_new_auth_token }
  let(:headers) { { HTTP_ACCEPT: 'application/json' }.merge!(credentials) }

  describe 'POST /api/v1/performance_data' do
    context 'with the right parameters' do
      before do
        post '/api/v1/performance_data',
             params: {
               performance_data: {
                 data: { message: 'Average' }
               }
             },
             headers: headers
      end

      it 'returns a 200 response status' do
        expect(response).to have_http_status 200
      end

      it 'successfully creates a data entry' do
        entry = PerformanceData.last
        expect(entry.data).to eq 'message' => 'Average'
      end
    end

    context 'with missing data in request' do
      before do
        post '/api/v1/performance_data',
             params: {
               performance_data: {
                 data: { }
               }
             },
             headers: headers
      end

      it 'should return error status' do
        expect(response).to have_http_status 400
      end
      it 'does not create a data entry' do
        expect(PerformanceData.all.length).to eq 0
      end
    end
  end
end
