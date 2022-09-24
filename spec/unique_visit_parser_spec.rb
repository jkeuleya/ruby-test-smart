# frozen_string_literal: true

require './lib/unique_visit_parser'

describe UniqueVisitParser do
  subject(:perform_unique_visit_parser) { described_class.perform(test_output_log) }

  let(:test_output_log) { 'spec/fixtures/webserver_test_output2.log' }
  let(:expected_result) do
    [['/home', 6], ['/about/', 4], ['/contact', 3],
     ['/help_page/1', 2], ['/index', 2], ['/about/2', 1]]
  end

  it 'returns a descending sorted list displaying unique visits count per page' do
    expect(perform_unique_visit_parser).to eq(expected_result)
  end

  context 'with a non existing file passed as argument' do
    let(:test_output_log) { 'spec/fixtures/blabla.log' }

    it "should return an error message if given argument doesn't exist" do
      expect(perform_unique_visit_parser).to eq('Error ! File not found !')
    end
  end

  context 'with an empty file passed as argument' do
    let(:test_output_log) { 'spec/fixtures/empty_output.log' }

    it 'should return an empty array' do
      expect(perform_unique_visit_parser).to eq([])
    end
  end
end
