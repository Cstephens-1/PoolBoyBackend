require "pry"

class ReviewController < ApplicationController
    get '/reviews' do
        Review.all.to_json
            # methods: :cleaner,
            # include: "name"
            # include: {cleaner: {only: [:name]}}
        
      end

    get "/reviews/:id" do
        Review.find(params[:id]).to_json
 
    end

    # post
    post "/reviews" do
        Review.create(params).to_json

    end

    # delete
    delete "/reviews/:id" do
        review = Review.find(params[:id])
        review.destroy
        review.to_json
        
    end
end
