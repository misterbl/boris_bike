require 'bike'

describe Bike do
  it {is_expected.to respond_to :working}

  describe '#report' do
    it 'allows a bike to be reported as broken' do
      subject.report
      expect(subject.working).to eq(false)
    end
  end

end
