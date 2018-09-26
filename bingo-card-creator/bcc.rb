require "prawn"
 
b_col = (1..15).to_a.sample(5)
i_col = (16..30).to_a.sample(5)
n_col = (31..45).to_a.sample(4)
g_col = (46..60).to_a.sample(5)
o_col = (61..75).to_a.sample(5)

	
n_col.insert(2, "F")
 
#adds an extra space for b column if number is only 1 digit
def align(num)
    if num < 10
      "  #{num}"
    else
      " #{num}"
    end
  end

header = ["B", "I", "N", "G", "O"]

Prawn::Document.generate("bingo.pdf") do
    define_grid(columns: 5, rows: 6)

header.each_with_index do |char, i|
    grid(0, i).bounding_box do
        stroke_bounds
        text char, align: :center, valign: :center, size: 50, style: :bold
    end 
end 

b_col.each_with_index do |num, i|
    grid(i+1, 0).bounding_box do
        stroke_bounds
        text num.to_s, align: :center, valign: :center, size: 50
    end 
end 

i_col.each_with_index do |num, i|
    grid(i+1, 1).bounding_box do
        stroke_bounds
        text num.to_s, align: :center, valign: :center, size: 50
    end 
end 

n_col.each_with_index do |num, i|
    grid(i+1, 2).bounding_box do
        stroke_bounds
        text num.to_s, align: :center, valign: :center, size: 50
    end 
end 

g_col.each_with_index do |num, i|
    grid(i+1, 3).bounding_box do
        stroke_bounds
        text num.to_s, align: :center, valign: :center, size: 50
    end 
end 

o_col.each_with_index do |num, i|
    grid(i+1, 4).bounding_box do
        stroke_bounds
        text num.to_s, align: :center, valign: :center, size: 50
    end 
end 

end