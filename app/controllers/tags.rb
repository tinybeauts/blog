get '/tags' do
  @tags = Tag.all

  erb :all_tags
end

get '/tags/:id' do
  @tag = Tag.find(params[:id])

  erb :one_tag
end