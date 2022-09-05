class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add routes
  get '/messages' do
    messages = Message.all.order(created_at: :ASC)
    message.to_json
  end

   post '/messages' do
    messages = Message.create(body: params[ :body], username:params[ :username])
    message.to_json
  end

   patch '/messages' do
    messages = Message.find(params[:id])
    
    message.to_json
  end
end
