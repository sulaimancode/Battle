require 'game'

describe Game do

let(:game) { described_class.new(player1, player2) }
let(:player1) { double :player}
let(:player2) { double :player}

  describe '::new' do
    it 'has player 1' do
      expect(game.player_1).to eq player1
    end

    it 'has player 2' do
      expect(game.player_2).to eq player2
    end
  end

  describe '#attack' do
    it 'damages the player' do
      allow(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

end
