# frozen_string_literal: true

require 'yaml'
require 'psutir/save_manager'

RSpec.describe SaveManager do
  describe '.save' do
    let(:save) { { data: 'test' } }

    it 'writes save data to YAML file' do
      described_class.save(save, 'test.yaml')
      expect(YAML.safe_load(File.read('test.yaml'), [Symbol])).to eq(save)
      File.delete('test.yaml')
    end
  end
end
