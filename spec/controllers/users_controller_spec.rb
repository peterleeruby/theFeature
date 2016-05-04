require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

=begin
  describe "GET #import" do
    it "returns http success" do
      #get :import
      pending "add some examples to (or delete) #{__FILE__}"
    end
  end
=end

end
