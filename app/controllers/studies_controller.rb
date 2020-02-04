class StudiesController < ApplicationController
  def new
  end

  def create
    render plain: params[:study].inspect
  end
end
