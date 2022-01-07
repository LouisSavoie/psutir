# frozen_string_literal: true

require 'psutir/menu'

RSpec.describe Menu do
  describe '.show' do
    it 'outputs the menu to the console' do
      expect { described_class.show }.to output(a_string_including('MENU')).to_stdout
    end
  end

  describe '.process' do
    it 'returns save with input "n"' do
      expect(described_class.process('n')).to be_a_kind_of Save
    end

    it 'returns "load" with input "l"' do
      expect(described_class.process('l')).to eq('load')
    end

    it 'returns "quit" with input "q"' do
      expect(described_class.process('q')).to eq('quit')
    end
  end
end
