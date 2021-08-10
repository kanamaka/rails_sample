class TodolistsController < ApplicationController

  def new
    @list = List.new
  end


  def create
    list = List.new(list_params)
    list.save
    
  end
  
  def index
    @lists = List.all #全てのデータを取り出すため複数形
  end
  
  def show
    @list = List.find(params[:id])
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
