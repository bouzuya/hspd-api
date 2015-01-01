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

FactoryGirl.define do
  factory :hubot_script do
    date "2015-01-01 20:46:59"
    deprecated false
    image "MyString"
    name "MyString"
    number 1
    repository "MyString"
  end
end
