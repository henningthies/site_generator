class SitesController < ApplicationController
  # add all crud actions

  def index
    @sites = Site.all
  end

  def show
    @site = Site.includes(:sections).find(params[:id])
  end

  def generate
    Generator.new(site: Site.find(params[:id])).process
    redirect_to site_path(params[:id])
  end

  def new
    @site = Site.new
  end

  def create
    @site = Site.new(site_params)
    if @site.save
      redirect_to site_path(@site)
    else
      render :new
    end
  end

  def edit
    @site = Site.find(params[:id])
  end

  def update
    site = Site.find(params[:id])
    site.update(site_params)
    redirect_to site_path(site)
  end

  def destroy
    site = Site.find(params[:id])
    site.destroy
    redirect_to sites_path
  end

  private

  def site_params
    params.require(:site).permit(:title)
  end
end
