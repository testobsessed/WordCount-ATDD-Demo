#!/usr/bin/env ruby

require 'sinatra'

get '/' do
    haml :home
end

post '/count' do
    haml :count, :input => :input_text, :count => 9
end
