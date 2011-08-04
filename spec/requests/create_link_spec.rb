require "spec_helper"

describe "Create link" do
  before do
    visit "/links/new"
    fill_in "Url", with: "http://about.me/fabianoleite"
    click_button "Shorten"
  end

  it "displays message" do
    response.body.should contain("Here's your new shortened url!")
  end

  it "redirects to the show page" do
    request.fullpath.should match(%r[/links/[a-zA-Z0-9]+])
  end

  it "displays original link" do
    response.body.should contain("http://about.me/fabianoleite")
  end

  it "displays shortened link" do
    response.body.should match(%r[http://www.example.com/[a-zA-Z0-9]+])
  end
end