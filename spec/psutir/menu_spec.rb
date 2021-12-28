# frozen_string_literal: true

require 'psutir/menu'

RSpec.describe Menu do
  describe '.show' do
    it 'outputs the menu to the console' do
      expect { described_class.show }.to output(a_string_including('MENU')).to_stdout
    end
  end
end
