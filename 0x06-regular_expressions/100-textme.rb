#!/usr/bin/env ruby
# This script outputs stats from message transactions
puts ARGV[0].scan(/\[(?:from|to|flags):(.*?)\]/ix).join(',')
