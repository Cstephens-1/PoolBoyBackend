class CleanerController < ApplicationController
    get '/cleaners' do
        
        Cleaner.all.to_json
      end
end