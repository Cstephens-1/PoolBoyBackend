class OwnerController < ApplicationController
    get '/owners' do
        Owner.all.to_json
      end

      get "/owners/:id" do
        Owner.find(params[:id]).to_json
      end

end