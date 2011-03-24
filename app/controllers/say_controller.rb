class SayController < ApplicationController
  def hello
    def wrap &b
      print "Santa says:"
      3.times(&b)
      print "\n"
    end
    wrap do print "Ho!"
      print "Ha!"
      end
  end

  def goodby
  end
  
  class Order < ActiveRecord::Base
    
    has_many :line_items
	
	def self.find_all_unpaid
	  self.where('paid = 0')
	end
	
	def total
	  sum = 0
	  line_items.each {|li| sum += li.total}
	end
  end
end
