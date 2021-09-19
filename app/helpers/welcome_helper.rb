module WelcomeHelper
	# Returns full title based on current page
	def full_title(page_title = "")
		base_title = "Gullsy - An Alternative Bird App"
		complete_title = "#{page_title} | #{base_title}"
		page_title.empty? ? base_title : complete_title
	end
end
