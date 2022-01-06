# frozen_string_literal: true

require 'yaml'
require 'psutir/save_manager'
require 'psutir/save'

RSpec.describe SaveManager do
  let(:save) { { data: 'test' } }

  describe '.save' do
    it 'writes save to YAML file' do
      described_class.save(save, 'test.yaml')
      expect(YAML.safe_load(File.read('test.yaml'), [Symbol])).to eq(save)
      File.delete('test.yaml')
    end
  end

  describe '.load' do
    it 'loads save from YAML file' do
      described_class.save(save, 'test.yaml')
      expect(described_class.load('test.yaml')).to eq(save)
      File.delete('test.yaml')
    end

    it 'puts error and returns nil when save not found' do
      expect { described_class.load('test.yaml') }.to output(a_string_including('No save file now found.')).to_stdout
    end
  end

  describe '.create' do
    it 'creates and returns a new save' do
      expect(described_class.create).to be_a_kind_of Save
    end
  end
end
