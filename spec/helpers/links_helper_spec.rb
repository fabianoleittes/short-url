require 'spec_helper'

describe LinksHelper do
  describe "#time" do
    it "displays formatted date" do
      link = mock_model(Link, :created_at => Time.parse("2011-08-04 16:15:00"))
      helper.time(link).should == "Aug 04 2011, 04:15 PM"
    end
  end

  describe "#box" do
    it "displays paragraph" do
      helper.box { "Hello!" }.should == %[<p class="box">Hello!</p>]
    end
  end
end