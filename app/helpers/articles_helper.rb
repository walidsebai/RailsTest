module ArticlesHelper
	def display_articles(articles)
		unless articles.nil?
			render("articles/show", krifa:articles)
		end
	end
end
