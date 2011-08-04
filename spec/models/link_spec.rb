require 'spec_helper'

describe Link do
  context "validations" do
    it "requires valid url" do
      subject.url = nil
      subject.should_not be_valid
    end

    it "rejects invalid url" do
      subject.url = "invalid"
      subject.should_not be_valid
    end

    it "passes when all attributes are valid" do
      subject.attributes = {url: "http://example.com"}
      subject.should be_valid
    end
    
    it "shortens id" do
      subject.stub :id => 1234
      subject.to_short.should == "16i"
    end
    
    it "overrides #to_param" do
      subject.stub :id => 1234
      subject.to_param.should == subject.to_short
    end
  end
end