helpers Sinatra::ContentFor

helpers do 

  def delete_post_button(post_id)
    erb :_delete_post_button, locals: { post_id: post_id }
  end

end