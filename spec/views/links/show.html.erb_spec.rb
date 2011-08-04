require "spec_helper"

describe "links/show.html.erb" do
  let(:link) { Factory(:link) }
  before do
    assign(:link, link)
    render
  end
  it "displays original link" do
    rendered.should contain("http://example.com")
  end
  
  it "displays shortened link" do
    rendered.should contain("http://test.host/#{link.to_param}")
  end
end