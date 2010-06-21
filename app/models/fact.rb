class Fact < ActiveRecord::Base

  def do_something 
    puts "new string" + "#{RAILS_ROOT}"
  end

end
