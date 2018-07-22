class Author

  attr_accessor :name, :post

  @@all=[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def posts
    Post.all
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    post=Post.new(title)
    post.author = self
  end

  def self.post_count
    Post.all.length
  end


end #end of class
