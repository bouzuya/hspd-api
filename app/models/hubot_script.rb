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

class HubotScript < ActiveRecord::Base
  validates :image, format: { with: /\Ahttps?:\/\// }
  validates :name, format: { with: /\Ahubot-/ }
  validates :number, numericality: { only_integer: true, greater_than: 0 }
  validates :repository, format: { with: /\A(?:git|https?):\/\// }
end
