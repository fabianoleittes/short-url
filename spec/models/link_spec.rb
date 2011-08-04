require 'spec_helper'

describe Link do
  
  it "requires valid url" do
    subject.url = nil
    subject.should_not be_valid
  end
  
  it "rejects invalid url" do
    subject.url = "invalid"
    subject.should_not be_valid
  end
    
  it "is valid when have valid attributes" do
    subject.attributes = {url: "http://example.com"}
    subject.should be_valid
  end
end