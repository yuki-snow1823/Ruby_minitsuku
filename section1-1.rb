# コード例
# my_library = Library.new
# Book.new(:author => "Herman Melville", :title => "Moby-Dick", :library => my_library)
# Book.new(:author => "Hans Christian Andersen", :title => "The Ugly Duckling", :library => my_library)
# puts my_library

# 出力例
# Library contents:
# Title: Moby-Dick, Author: Herman Melville
# Title: The Ugly Duckling, Author: Hans Christian Andersen


# class Book
#   def initialize(data)
#     @author = data[:author]
#     @title = data[:title]
#     @library = data[:library]

#     # Libraryクラスに本を追加する処理
#   end
# end

# class Library
#   def initialize
#    puts "Library contents:"
#   end
# end

# my_library = Library.new
# Book.new(:author => "Herman Melville", :title => "Moby-Dick",:library => my_library)
# Book.new(:author => "Hans Christian Andersen", :title => "The Ugly Duckling", :library => my_library)

# puts my_library

# 答え

class Library
  def initialize
    @books = []
  end
 
  def <<(book)
    @books << book
  end
 
  def to_s
    puts "Library contents:"
    @books.join("\n")
  end
end
 
class Book
  attr_accessor :author, :title
  def initialize(args)
    @author = args[:author]
    @title  = args[:title]
    puts self
    args[:library] << self
  end
 
  def to_s
    "Title: " + @title + ", Author: " + @author
  end
end

my_library = Library.new
Book.new(:author => "Herman Melville", :title => "Moby-Dick", :library => my_library)
Book.new(:author => "Hans Christian Andersen", :title => "The Ugly Duckling", :library => my_library)
puts my_library
