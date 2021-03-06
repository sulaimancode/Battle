require 'player'

describe Player do

let(:player_1_name) { 'Sulaiman' }
let(:player1) { described_class.new(player_1_name)}

let(:player_2_name) { 'Tom' }
let(:player2) { described_class.new(player_2_name)}

  describe '::new' do

    it 'has a name' do
      expect(player1.name).to eq player_1_name
    end

    it 'has hp of 100' do
      expect(player1.hitpoints).to eq described_class::DEFAULT_HP
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      srand(11)
      expect { player1.receive_damage }.to change { player1.hitpoints }.by(-14)
    end
  end

  describe '#increase_health' do
    it 'increases the player hit points' do
      srand(11)
      expect { player1.increase_health }.to change { player1.hitpoints }.by(+14)
    end
  end
end
