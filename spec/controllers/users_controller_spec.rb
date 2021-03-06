require 'spec_helper'

describe UsersController do
	render_views

	before(:each) do
		@user = FactoryGirl.create(:user)
	end

	describe "GET 'show'" do
		it "should be successful" do
			get :show, :id => @user
			response.should be_success
		end

		it "should find the right user" do
			get :show, :id => @user
			assigns(:user).should == @user
		end

		it "should have the right title" do
			get :show, :id => @user
			assigns(:user).should == @user
		end
	end

	describe "GET 'new'" do
		it "should be successful" do
			get :new 
			response.should be_success
		end

		it "should havee the right title" do
			get :new
		end
	end
end
