class Link < ActiveRecord::Base
  validates_format_of :url, :with => %r[^https?://]i
end
