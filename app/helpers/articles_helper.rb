module ArticlesHelper
	def display_articles(articles)
		unless articles.nil?
			render("articles/show",articles:articles)
		end
	end
end
