class PoolController < ApplicationController
    get '/pools' do
        Pool.all.to_json
      end
end