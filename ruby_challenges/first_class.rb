class Closet
    attr_accessor :shirts, :pants
    

    def organize
        return "Go to Ikea!"
    end 
end 


class Dresser<Closet
    attr_accessor :drawers

end

my_closet=Closet.new
my_closet.shirts=20
my_closet.pants=7
my_closet.organize
puts "There are #{my_closet.shirts} shirts and #{my_closet.pants} pants in my closet!"

my_dresser=Dresser.new
my_dresser.drawers=10
puts "My dresser has #{my_dresser.drawers} drawers!"
my_dresser.inspect