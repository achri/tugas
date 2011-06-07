class SmilesController < ActionController::Base
  def show
    send_file(RAILS_ROOT + "/vendor/plugins/acts_as_smilable/public/" + params[:id] + ".gif", :type=>"image/gif")
  end
end
