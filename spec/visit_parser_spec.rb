# frozen_string_literal: true

require './lib/visit_parser'

describe VisitParser do
  let(:test_output_log) { 'spec/fixtures/webserver_test_output.log' }

  context 'when parsing is performed without pretty print' do
    subject(:perform_visit_parser) { described_class.perform(test_output_log) }

    let(:expected_result) do
      [['/home', 5], ['/about/', 5], ['/contact', 3],
       ['/help_page/1', 2], ['/index', 2], ['/about/2', 1]]
    end

    it 'should return a sorted list displaying visits count per page' do
      expect(perform_visit_parser).to eq(expected_result)
    end
  end
end
