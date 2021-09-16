class OwnerController < ApplicationController
    get '/owners' do
        Owner.all.to_json
      end

      get "/owners/:id" do
        puts "In: get 'owners/:id"
        owner = Owner.find(params[:id])

        owner_for_front_end= owner.to_json
        owner_for_front_end
      end

end