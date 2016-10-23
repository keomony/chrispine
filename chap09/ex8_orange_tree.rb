class OrangeTree
  #each year, the tree grows 3 meters taller
  def initialize
    @tree_years = 0
    @tree_height = 0
    @orange_count = 0
    puts "The orange tree was born."
  end
  #showing the height of the tree
  def height
    return @tree_height
  end
  def one_year_passes
    #the tree dies when it is 10 years
    if @tree_years == 10
      puts "Bye bye, the tree has died."
    else
      #add 1 year to the tree age
      @tree_years = @tree_years + 1
      #grows taller till die at 110 years old
      #grows 3 meters per year
      @tree_height = @tree_height + 3
      #First 3 years no fruit
      if @tree_years > 3
        grows_fruits
      end
    end
  end
  def counts_the_oranges
    return @orange_count
  end
  def pick_an_orange
    if @orange_count <1
      puts "No more oranges to pick this year. Come back next year."
    else
      @orange_count = @orange_count - 1
      puts "It's dillicious."
    end
  end
private
  #fruits grow by themselves
  def grows_fruits
    return @orange_count = @tree_years * 100
  end
end

orange = OrangeTree.new
orange.pick_an_orange
puts orange.height
5.times do
  orange.one_year_passes
end
6.times do
  orange.pick_an_orange
end
puts orange.counts_the_oranges
orange.one_year_passes
puts orange.counts_the_oranges
puts orange.height
another_orange_tree = OrangeTree.new
another_orange_tree.pick_an_orange
