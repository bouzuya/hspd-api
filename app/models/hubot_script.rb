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
end
