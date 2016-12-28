class IndexController < ActionController::Base
	before_action :authenticate_user! , only: [:profile]
	layout "application"
	def index
		@Users=User.all
		@Articles=Article.all
		@Routes=Rails.application.routes.routes
	end
	def profile
		@user=user_session
	end
	def list
		@articles=Article.where(user: current_user)
		render "articles/index"
	end
end
