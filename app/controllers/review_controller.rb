class ReviewController < ApplicationController
    get '/reviews' do
        Review.all.to_json
      end

    get "/reviews/:id" do
        Review.find(params[:id]).to_json
    end

    # post

    # delete
end