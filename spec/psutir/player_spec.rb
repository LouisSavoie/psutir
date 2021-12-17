require 'psutir/player'

RSpec.describe Player do

  let(:player) { described_class.new }

  it 'has a name' do
    expect(player.name).to eq('')
  end
end