#!/usr/bin/env ruby
# This script must match a 10-digit phone number with a regex matching method
puts ARGV[0].scan(/^\d{10}/).join
