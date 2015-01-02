require 'rails_helper'

RSpec.describe 'hubot_scripts#index', type: :request do
  describe '' do
    let!(:model1) { create(:hubot_script) }
    let!(:model2) { create(:hubot_script) }
    let!(:env) { nil }
    let!(:params) { nil }
    let!(:method) { :get }
    let!(:path) { hubot_scripts_path }
    before { send(method, path, params, env) }
    subject { response }
    its(:status) { is_expected.to be 200 }
    its(:body) do
      is_expected.to match_json_expression([
        {
          date: model1.date.iso8601,
          deprecated: model1.deprecated,
          image: model1.image,
          name: model1.name,
          number: model1.number,
          repository: model1.repository
        }
      ].forgiving!)
    end
  end
end
