# frozen_string_literal: true

require './lib/visit_parser'

describe VisitParser do
  subject(:perform_visit_parser) { described_class.perform(test_output_log) }

  let(:test_output_log) { 'spec/fixtures/webserver_test_output.log' }
  let(:expected_result) do
    [['/home', 5], ['/about/', 5], ['/contact', 3],
     ['/help_page/1', 2], ['/index', 2], ['/about/2', 1]]
  end

  it 'returns a descending sorted list displaying visits count per page' do
    expect(perform_visit_parser).to eq(expected_result)
  end

  context 'with a non existing file passed as argument' do
    let(:test_output_log) { 'spec/fixtures/blabla.log' }

    it "should return an error message if given argument doesn't exist" do
      expect(perform_visit_parser).to eq('Error ! File not found !')
    end
  end

  context 'with an empty file passed as argument' do
    let(:test_output_log) { 'spec/fixtures/empty_output.log' }

    it 'should return an empty array' do
      expect(perform_visit_parser).to eq([])
    end
  end
end
