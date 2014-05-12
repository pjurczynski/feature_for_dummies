require_relative '../../lib/feature_for_dummies/feature'

class Rails; end

module FeatureForDummies
  describe Feature do
    describe '#on?' do
      before do
        Feature.should_receive(:list).and_return({
          development: { :some_feature => true },
          test: { :some_feature => false }
        })
      end

      context 'in development environment' do
        before { allow(Rails).to receive(:env).and_return(:development) }
        it { expect(Feature.on? :some_feature).to be_true }
      end

      context 'in testing environment' do
        before { allow(Rails).to receive(:env).and_return(:test) }
        it { expect(Feature.on? :some_feature).to be_false }
      end
    end
  end
end
