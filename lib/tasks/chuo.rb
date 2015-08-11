class Chuo
	def self.cancell
		puts Time.now
	end

	def self.get_cancells
		agent = Mechanize.new
		page = agent.get("http://www2.chuo-u.ac.jp/literature/jimu/kyukou.html")
		elements = page.search('th')
		i = 0
		while i < elements.count/5 do
		  	puts elements[i]
		  	@cancell = Cancell.new()
			@cancell.date = elements[0].inner_text
			@cancell.week = elements[1].inner_text
			@cancell.subject = elements[2].inner_text
			@cancell.teacher = elements[3].inner_text
			@cancell.save
		  	i += 1
		end
	end
end


# bundle exec whenever --update-cron
# rails s -d