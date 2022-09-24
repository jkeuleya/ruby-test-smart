#!/usr/bin/env ruby

# frozen_string_literal: true

require_relative 'lib/visit_parser'
require_relative 'lib/unique_visit_parser'
require_relative 'lib/pretty_print'

# This module triggers the right script.
module Parser
  def self.perform_visit_parser(file, pretty_print)
    visit_parser = VisitParser.perform(file)

    if pretty_print
      PrettyPrint.output(visit_parser)
    else
      puts visit_parser
    end
  end
end

Parser.perform_visit_parser(ARGV[0], ARGV[1])
