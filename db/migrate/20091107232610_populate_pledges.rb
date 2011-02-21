class PopulatePledges < ActiveRecord::Migration
  def self.up
    Pledge.delete_all

    Pledge.create(:name => 'now',
                  :description => 'Now: I pledge to wipe my butt with recycled toilet paper only. Next time I buy toilet paper for my household, I’ll put the onus on myself to choose a recycled type of toilet paper.')

    Pledge.create(:name => 'by_2014',
                  :description => 'By 2014: I pledge my support for my supermarket and workplace to phase out non-recycled toilet paper by 2014. I’m happy to get softness and affordability, but it needs to be recycled.')

  end

  def self.down
    Pledge.delete_all
  end
end
