class Blog

    @@all_blog_posts=[]
    @@num_blog_posts=0

    def self.all
        @@all_blog_posts
    end

    def self.add(thing)
        @@all_blog_posts.push(thing)
        @@num_blog_posts+=1
    end 

    def self.publish
        @@all_blog_posts.each do |post|
            puts "Title: \n #{post.get_title}"
            puts "Body: \n #{post.get_content}"
            puts "Publish Date: \n #{post.get_created_at}"

         end 
    end 
end 

class BlogPost<Blog
    def set_title(title)
        @title=title
    end 

    def get_title
        return @title
    end 

    def set_content(content)
        @content=content
    end 

    def get_content
        return @content
    end 

    def set_created_at(created_at)
        @created_at=created_at
    end 

    def get_created_at
        return @created_at
    end 

    def save
        BlogPost.add(self)
      end

    def self.create
    post=new
    puts "Name your blog post: "
    title = gets.chomp
    post.set_title(title) 
    puts "Enter your blog content: "
    content =  gets.chomp
    post.set_content(content)
    created_at=Time.now
    post.set_created_at(created_at)
    post.save
    puts "Do you want to create another post? Y/N: "
    create if gets.chomp.downcase=='y'
    end 

    
end 

BlogPost.create
all_blog_posts=BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish