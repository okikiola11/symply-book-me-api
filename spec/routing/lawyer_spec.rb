require 'rails_helper'

describe 'lawyer routes' do
  it 'should route to lawyer creation' do
    expect(post('/api/v1/lawyers')).to route_to('api/v1/lawyers#create')
  end

  it 'should route to a specific lawyer' do
    expect(get('/api/v1/lawyers/1')).to route_to('api/v1/lawyers#show', 'id' => '1')
  end

  it 'should route to all lawyers' do
    expect(get('/api/v1/lawyers')).to route_to('api/v1/lawyers#index')
  end
end
