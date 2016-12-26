class IndexController < ActionController::Base
	before_action :authenticate_user! , only: [:profile]
	def index
		@Users=User.all
		@Articles=Article.all
		@Routes=Rails.application.routes.routes
	end
	def profile
		@user=user_session
	end
end
