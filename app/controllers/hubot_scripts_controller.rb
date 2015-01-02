class HubotScriptsController < ApplicationController
  def index
    @hubot_scripts = HubotScript.all
  end
end
