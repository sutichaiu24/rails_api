require 'rails_helper'

describe 'articles routes' do
    it 'should rout to ariticles index' do
    expect(get '/articles').to route_to('articles#index')
    end
end
