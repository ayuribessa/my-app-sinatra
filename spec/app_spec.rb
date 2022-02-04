# frozen_string_literal: true

require_relative '../app'
require 'spec_helper'
require 'rack/test'

describe 'app' do

  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
    
	context "GET to /" do
	  it "returns status 200 OK" do
      get '/'
	    expect(last_response.status).to eq 200
	  end
	end
      
	context "GET to /works" do
	  let(:response) { get "/works" }
	  it "returns status 200 OK" do
	    expect(response.status).to eq 200
	  end
	end
  
	context "GET to /prs" do
	  let(:response) { get "/prs" }
	  it "returns status 200 OK" do
	    expect(response.status).to eq 200
	  end
	end

	context "GET to /not_Found" do
	  let(:response) { get "/not_Fount" }
	  it "returns status 404" do
	    expect(response.status).to eq 404
	  end
	end
end
