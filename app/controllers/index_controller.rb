class IndexController < ApplicationController
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
		@articles=current_user.articles
		render "articles/index"
	end
end
