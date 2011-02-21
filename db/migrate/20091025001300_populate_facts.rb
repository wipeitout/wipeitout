class PopulateFacts < ActiveRecord::Migration
  def self.up
    Fact.delete_all

    Fact.create(:detail => 'Every year, we chop down 98 million trees to make toilet paper. That’s 200 trees every minute, just to wipe our backsides.')
    Fact.create(:detail => 'Chopping down trees sends 50,000 species packing from the planet – forever – every single year. Using recycled toilet paper can end this. In addition, every tonne of recycled paper saves 31,380 litres of water and 400 kg of greenhouse gases.')
    Fact.create(:detail => 'The Wipe it out message will focus on the issue of deforestation and species loss. The climate change rationale will be less central. There will be the science and stats supporting the campaign, on the web, in the you tube clips, on the twitter blogs, around the impacts of chopping down 98.5 million trees each year just to wipe our but. ')
    Fact.create(:detail => 'Wipe It Out aims to create a future where Australians can wipe their backsides in comfort, while ensuring the planet remains a cool place to be for humans, plants and animals alike, now and into the future. ')
    Fact.create(:detail => 'We are realists. We are not advocating the use of the left hand, or the installation of a bidet. Rather, we want to see toilet paper produced from a sustainable source. Why cut down old growth forests when we can use recycled paper?')

  end

  def self.down
    Fact.delete_all
  end
end
