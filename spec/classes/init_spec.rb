require 'spec_helper'
describe 'rexray' do

  context 'with defaults for all parameters' do
    it { should contain_class('rexray') }
  end
end
