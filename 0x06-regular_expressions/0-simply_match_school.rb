#!/usr/bin/env ruby
# This script takes an argument and passes it to regex matching method
puts ARGV[0].scan(/School/).join
