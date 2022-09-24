# frozen_string_literal: true

# This module receives an output log file and returns a sorted list based page visit count
module UniqueVisitParser
  def self.perform(file)
    visited_routes_hash = Hash.new { |h, k| h[k] = [] }

    File.open(file).each do |line|
      route, ip_address = line.split(' ')

      visited_routes_hash[route] |= [ip_address]
    end

    visited_routes_hash.each { |key, value| visited_routes_hash[key] = value.size }

    visited_routes_hash.sort_by { |_k, v| -v }
  rescue Errno::ENOENT
    'Error ! File not found !'
  end
end
