#!/usr/bin/env ruby

puts open(ARGV[0]).readlines.map(&:to_i).reduce{|a, b| a + b}
