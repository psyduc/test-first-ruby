class Fixnum

	def in_words
		x = self

		def ones(x)
			case x
			when 0
				"zero"
			when 1
				"one"
			when 2
				"two"
			when 3
				"three"
			when 4
				"four"
			when 5
				"five"
			when 6
				"six"
			when 7
				"seven"
			when 8
				"eight"
			when 9
				"nine"
			end
		end

		def teens(x)
			case x
			when 10
				"ten"
			when 11
				"eleven"
			when 12
				"twelve"
			when 13
				"thirteen"
			when 14
				"fourteen"
			when 15
				"fifteen"
			when 16
				"sixteen"
			when 17
				"seventeen"
			when 18
				"eighteen"
			when 19
				"nineteen"
			end
		end

		def tens(x)
			case x
			when 20
				"twenty"
			when 30
				"thirty"
			when 40
				"forty"
			when 50
				"fifty"
			when 60
				"sixty"
			when 70
				"seventy"
			when 80
				"eighty"
			when 90
				"ninety"
			end
		end

		def hundred(x)
			a = x.to_s.chars.map(&:to_i)
			if x < 100
				if x < 10
					ones(x)
				elsif x < 20
					teens(x)
				elsif x % 10 == 0
					tens(x)
				else
					"#{tens(x - (x%10))} #{ones(x%10)}"
				end
			elsif x % 100 == 0
				a = a[0]
				"#{ones(a)} hundred"
			else
				b = a[1..2].join.to_i
				a = a[0]
				"#{ones(a)} hundred #{hundred(b)}"
			end	
		end

		def thousand(x)
			a = x .to_s.chars.map(&:to_i)
			if a.size == 4
				a = a[0]
			elsif a.size == 5
				a = a[0..1].join.to_i
			else
				a = a[0..2].join.to_i
			end
			b = x % 1000

			if x < 1000
			"#{hundred(x)}"
			elsif x % 1000 == 0
			"#{hundred(a)} thousand"
			else
			"#{hundred(a)} thousand #{hundred(b)}"
			end
		end

		def million(x)
			a = x .to_s.chars.map(&:to_i)
			if a.size == 7
				a = a[0]
			elsif a.size == 8
				a = a[0..1].join.to_i
			else
				a = a[0..2].join.to_i
			end
			b = x % 1000000

			if x < 1000000
				"#{thousand(x)}"
			elsif x % 1000000 == 0
				"#{hundred(a)} million"
			else
				"#{hundred(a)} million #{thousand(b)}"
			end
		end

		def billion(x)
			a = x .to_s.chars.map(&:to_i)
			if a.size == 10
				a = a[0]
			elsif a.size == 11
				a = a[0..1].join.to_i
			else
				a = a[0..2].join.to_i
			end
			b = x % 1000000000

			if x < 1000000000
				"#{million(x)}"
			elsif x % 1000000000 == 0
				"#{hundred(a)} billion"
			else
				"#{hundred(a)} billion #{million(b)}"
			end
		end

		def trillion(x)
			a = x .to_s.chars.map(&:to_i)
			if a.size == 13
				a = a[0]
			elsif a.size == 14
				a = a[0..1].join.to_i
			else
				a = a[0..2].join.to_i
			end
			b = x % 1000000000000

			if x < 1000000000000
				"#{billion(x)}"
			elsif x % 1000000000 == 0
				"#{hundred(a)} trillion"
			else
				"#{hundred(a)} trillion #{billion(b)}"
			end
		end

		if (x < 10)
			ones(x)
		elsif (x > 9 && x < 20)
			teens(x)
		elsif(x > 19 && x < 100)
			hundred(x)
		elsif (x > 99 && x < 1000)
			hundred(x)
		elsif (x > 999 && x < 1000000)
			thousand(x)
		elsif (x > 999999 && x < 1000000000)
			million(x)
		elsif (x > 999999999 && x < 1000000000000)
			billion(x)
		else
			trillion(x)
		end

	end
end

