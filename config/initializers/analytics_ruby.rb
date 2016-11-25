require 'segment/analytics'

Analytics = Segment::Analytics.new({
  write_key: ENV["write_key"],
  on_error: Proc.new{|status, msg| print msg}
  })
