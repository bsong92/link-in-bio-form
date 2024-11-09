class ItemsController < ApplicationController
  
  def save_item
    x = Item.new
    x.link_url = params.fetch("link_url_param")
    x.link_description = params.fetch("link_description_param")
    x.thumbnail_url = params.fetch("thumbnail_url_param")
    x.save

    # render ({ :template => "item_templates/process_form"})
    
    redirect_to("/")
  end

  def display_form
    render({ :template => "item_templates/new_item_form" })
  end

  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end
end
