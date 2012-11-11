class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  def self.find_md(id, dir)
        @dmovie = nil
        if (dir == nil || dir.eql?('')) then
	return @dmovie
	else
	@dmovie = self.where("director = '#{dir}'")
	return @dmovie
	end
  end
end
