require 'spec_helper'

describe Authentication do
  
  context "looking them up" do

  	let(:oauth_hash){ OmniAuth.config.mock_auth[:twitter] }

  it "should not find one if none exists" do
  	Authentication.find_by_oauth_hash(oauth_hash).should be_nil

  it "should find one if it exists" do
  	Authentication.from_omniauth(user, oauth_hash)
  	Authentication.find_by_oauth_hash(oauth_hash).should_not be_nil

  end
 end
end

