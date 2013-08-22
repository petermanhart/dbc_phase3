namespace :db do
  desc "Moving data from Article to new tables"

  task :move_article_data_to_posts_table => :environment do
    connection = ActiveRecord::Base.connection

    data =  connection.select_all("select title, url, description from articles")
    data.each do |datum| 
      post = Post.create(title: datum["title"], content: datum["description"], url: datum["url"]) 
    end
  end

  task :move_tag_data_into_tags_table => :environment do
    connection = ActiveRecord::Base.connection
    tag_arrays = connection.select_all("select tags, url from articles")
    tag_arrays.each do |tag_array|
      tags = tag_array["tags"].split(',').collect {|x| x.strip}
      tags.each do |tag|
        post = Post.find_by_url(tag_array["url"])
        post.tags << Tag.find_or_create_by_name(name: tag)
      end
    end
  end

  task :move_category_data_to_categories_table => :environment do
    connection = ActiveRecord::Base.connection
    category_arrays =  connection.select_all("select category, url from articles")
    category_arrays.each do |category_array| 
      post = Post.find_by_url(category_array["url"])
      p Category.find_or_create_by_name(name: category_array["category"])
      post.category = Category.find_or_create_by_name(name: category_array["category"])
      post.save
    end
  end

end
