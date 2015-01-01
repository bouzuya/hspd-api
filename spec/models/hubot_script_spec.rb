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

RSpec.describe HubotScript, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
