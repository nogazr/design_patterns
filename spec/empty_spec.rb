require 'empty'

RSpec.describe 'Empty' do
  context 'string' do
    let(:empty_string) { '' }
    let(:one_char_string) { 'X' }
    let(:long_string) { 'The rain in Spain' }

    it 'should be empty' do
      expect(empty?(empty_string)).to be true
    end

    it 'should not be empty' do
      expect(empty?(one_char_string)).not_to be true
      expect(empty?(long_string)).not_to be true
    end
  end

  context 'arrays' do
    let(:empty_array) { [] }
    let(:one_element_array) { [1] }
    let(:long_array) { [1,2,3,4,5,6] }

    it 'should be empty' do
      expect(empty?(empty_array)).to be true
    end

    it 'should not be empty' do
      expect(empty?(one_element_array)).not_to be true
      expect(empty?(long_array)).not_to be true
    end
  end
end
