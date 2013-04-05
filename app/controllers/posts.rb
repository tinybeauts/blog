
post '/posts' do
	@post = Post.new(params[:post])
  if @post.save
    @post.tags_string = params[:tags][:tag]
  	redirect to "/posts/#{@post.id}"
  else
    erb :index
  end
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  @tags = @post.tags
	erb :one_post
end

get '/posts/:id/edit' do
  @post = Post.find(params[:id])
  erb :posts_edit
end

put '/posts/:id' do
  @post = Post.find(params[:id])
  if @post.update_attributes(params[:post])
    redirect to "/posts/#{@post.id}"
  else
    erb :posts_edit
  end
end

delete '/posts/:id' do
  @post = Post.find(params[:id]).destroy
  redirect to '/'
end

get '/posts' do
  @all_posts = Post.order("created_at DESC")
  erb :all_posts
end