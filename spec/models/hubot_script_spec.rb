# == Schema Information
#
# Table name: hubot_scripts
#
#  id         :integer          not null, primary key
#  date       :datetime
#  deprecated :boolean
#  image      :string
#  name       :string
#  number     :integer
#  repository :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe HubotScript, type: :model do
  describe '(factory)' do
    subject { create(:hubot_script) }
    it { is_expected.to be_valid }
  end

  describe '#image' do
    it { is_expected.to allow_value(nil).for(:image) }
    it { is_expected.to allow_value('http://example.com/').for(:image) }
    it { is_expected.to_not allow_value('MyString').for(:image) }
  end

  describe '#name' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
    it { is_expected.to allow_value('hubot-hoge').for(:name) }
    it { is_expected.to_not allow_value('ruboty-hoge').for(:name) }
  end

  describe '#number' do
    it { is_expected.to validate_presence_of(:number) }
    it { is_expected.to validate_uniqueness_of(:number) }
    it do
      is_expected.to \
        validate_numericality_of(:number).only_integer.is_greater_than(0)
    end
  end

  describe '#repository' do
    it { is_expected.to allow_value('http://example.com').for(:repository) }
    it { is_expected.to allow_value('git://example.com').for(:repository) }
    it { is_expected.to_not allow_value('MyString').for(:repository) }
  end
end
