# frozen_string_literal: true

# This module receives an output log file and returns a sorted list based page visit count
module VisitParser
  def self.perform(file)
    visited_routes_hash = Hash.new(0)

    File.open(file).each do |line|
      route = line[/^([^\s]+)/]

      visited_routes_hash[route] += 1
    end

    visited_routes_hash.sort_by { |_k, v| -v }
  end
end
