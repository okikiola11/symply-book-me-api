require 'rails_helper'

describe 'appointment routes' do
  it 'should route to appointment creation' do
    expect(post('/api/v1/appointments')).to route_to('api/v1/appointments#create')
  end

  it 'should route to all appointments' do
    expect(get('/api/v1/appointments')).to route_to('api/v1/appointments#index')
  end
end
