# frozen_string_literal: true
require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  erb :index
end

get '/works' do
  erb :works
end

get '/prs' do
  erb :prs
end
