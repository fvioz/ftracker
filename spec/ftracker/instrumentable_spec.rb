# require 'spec_helper'

# class InstrumentableTestObject
#   include Ftracker::Instrumentable

#   benckmark :method1
#   benckmark :method2, 'namespace'

#   def method1
#     p 'method1'
#   end

#   def method2
#     p 'method2'
#   end
# end

# shared_examples_for "instrumentable" do
#   subject { described_class.new }

#   it 'calls instrument with default namespace' do
#     expect(ActiveSupport::Notifications).to receive(:instrument).
#       with('ftracker.benckmark_method1')
#     expect(subject.method1).to be_nil
#   end

#   it 'calls instrument with custom namespace' do
#     expect(ActiveSupport::Notifications).to receive(:instrument).
#       with('namespace')
#     expect(subject.method2).to be_nil
#   end
# end

# describe InstrumentableTestObject do
#   it_behaves_like "instrumentable"
# end
