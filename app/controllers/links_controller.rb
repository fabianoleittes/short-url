class LinksController < ApplicationController
  def new
    @link = Link.new
  end
  
  def create
    @link = Link.new(params[:link])
    if @link.save
      flash[:notice] = "Here's your new shortened url!"
      redirect_to link_path(@link)
    else
      render :new
    end
  end
  
  def show
    @link = Link.find(params[:id].to_i(Link::BASE))
  end
  
  def expand
    @link = Link.find(params[:shortlink].to_i(Link::BASE))
    @link.increment(:visits)
    @link.save
    redirect_to @link.url
  end
end