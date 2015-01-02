json.array! @hubot_scripts do |hubot_script|
  json.extract!(hubot_script,
                :date, :deprecated, :image, :name, :number, :repository)
end
