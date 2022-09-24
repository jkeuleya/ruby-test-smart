#!/usr/bin/env ruby

# frozen_string_literal: true

require_relative 'lib/visit_parser'
require_relative 'lib/unique_visit_parser'
require_relative 'lib/pretty_print'

# This module triggers the right script.
class Parser
  attr_reader :file, :pretty_print

  def initialize(file, pretty_print)
    @file = file
    @pretty_print = pretty_print
  end

  def perform_visit_parser
    visit_parser = VisitParser.perform(file)

    return PrettyPrint.render(visit_parser, false) if pretty_print

    visit_parser
  end

  def perform_unique_visit_parser
    unique_visit_parser = UniqueVisitParser.perform(file)

    return PrettyPrint.render(unique_visit_parser, true) if pretty_print

    unique_visit_parser
  end
end

parser = Parser.new(ARGV[0], ARGV[1])

if ARGV[0]
  puts 'Not unique visits results:'
  puts parser.perform_visit_parser
  puts "\n------------------------------------\n\n"
  puts 'Unique visits results:'
  puts parser.perform_unique_visit_parser if ARGV[0]
else
  puts 'Error ! File expected as argument !'
end
