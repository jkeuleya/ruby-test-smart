# frozen_string_literal: true

# This module returns a better output for the parsing scripts
module PrettyPrint
  def self.render(parsed_file, unique)
    parsed_file.each do |key, value|
      puts "- Page \"#{key}\" has been visited #{value} #{red('UNIQUE ') if unique}times. \n"
    end

    nil
  end

  def self.red(string)
    "\e[1m\e[31m#{string}\e[0m"
  end
end
