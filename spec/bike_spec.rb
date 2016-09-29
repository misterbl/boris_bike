require 'bike'

describe Bike do
  it {is_expected.to respond_to :working}

  it 'docks in station' do
    # expect(subject).to respond_to :docked?
    # expect(subject.docked?).to eq false
    # subject.dock
    # expect(subject.docked?).to eq true
  end

end
