require "spec_helper"

describe "Visit shortened url" do
  before do
    link = Factory(:link, url: "http://about.me/fabianoleite")
    visit "/#{link.to_param}"
  end

  it "redirects to original link" do
    response.should redirect_to("http://about.me/fabianoleite")
  end
end