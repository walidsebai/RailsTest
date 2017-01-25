class IndexController < ApplicationController
	before_action :authenticate_user! , only: [:profile]
	layout "application"
	def index
		@Users=User.all
		@Articles=Article.all
	end
	def profile
		@user=current_user
	end
	def list
		@articles=current_user.creations.all
		render "articles/index"
	end
end
