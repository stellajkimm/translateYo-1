require 'rails_helper'

describe CommentsController, :type => :controller do
  it "#index" do
  	get :index
  end
end