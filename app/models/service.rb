class Service < ActiveRecord::Base
  belongs_to :user

 def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("alteracoes like ?", "%#{query}%") 
  end

end
