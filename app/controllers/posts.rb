
post '/posts' do
	@post = Post.create(params[:post])
  @post.tags_string = params[:tags][:tag]
	redirect to "/posts/#{@post.id}"
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  @tags = @post.tags
	erb :one_post
end

get '/posts' do
  @all_posts = Post.all
  erb :all_posts
end