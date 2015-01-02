require 'rails_helper'

RSpec.describe 'hubot_scripts', type: :routing do
  describe '_path helper' do
    context '#hubot_scripts_path' do
      subject { hubot_scripts_path }
      it { is_expected.to eq '/hubot_scripts' }
    end
  end

  describe 'GET /hubot_scripts' do
    subject { { get: hubot_scripts_path } }
    it do
      is_expected.to route_to(
        controller: 'hubot_scripts', action: 'index', format: 'json')
    end
  end
end
