# frozen_string_literal: true

# This module returns a better output for the parsing scripts
module PrettyPrint
  def self.output(visit_parser)
    visit_parser.each do |key, value|
      puts "- Website \"#{key}\" has been visited #{value} times. \n"
    end
  end
end
