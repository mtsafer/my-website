module ApplicationHelper

	def full_title(page = '')
		base = "Martin"
		full_title = page.empty? ? base : "#{page} | #{base}"
	end
end
