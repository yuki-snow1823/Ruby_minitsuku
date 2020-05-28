

def clever_print(one,two,three)
  one.each do |f|
    print "#{f} "
  end

  print "#{two} "

 three.flatten.each do |f|
  print "#{f} "
 end
 puts ""
end

clever_print(["Ruby"], "the", ["Programming", "Language"])
#=> Ruby the Programming Language
 
clever_print(["Agile", "Web", "Development"], "with", { :Rails => 3.0 })
#=> Agile Web Development with Rails 3.0
