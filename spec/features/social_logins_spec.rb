require 'spec_helper'

describe "Social logins" do
  context "with Twitter" do

  	before(:each)do
  	signup("johnqpublic@example.com")
  	click_link("Social Accounts")
  	#visit root_path

   it "should have a Twitter icon on the homepage" do
     expect(page).to have_selector("img.twitter-login")
     end

   it "should contain a link to Twitter OAuth login" do
     expect(page).to 
     end

   it "should turn it over to Omniauth when following that link" do
   	click_link("twitter-auth")