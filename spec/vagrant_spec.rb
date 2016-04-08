require 'spec_helper'

describe 'metatheory::vagrant' do
  let(:hostname) { 'the-hostname' }

  let(:chef_run) do
    ChefSpec::SoloRunner.new do |node|
      node.automatic['hostname'] = hostname
    end.converge(described_recipe)
  end

  it 'includes infrastructure::vagrant' do
    expect(chef_run).to include_recipe('infrastructure::vagrant')
  end
end
