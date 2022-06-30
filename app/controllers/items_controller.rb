class ItemsController < ApplicationController

  def index
    if params[:user_id]
      bad_id = User.find(params[:user_id])
      items = bad_id.items
    else
    items = Item.all
    end
    render json: items, include: :user
  end

end
