require 'rails_helper'

describe 'registration routes' do
  it 'should route to users login session' do
    expect(post('/api/v1/create')).to route_to('api/v1/authentication#create')
  end
end
