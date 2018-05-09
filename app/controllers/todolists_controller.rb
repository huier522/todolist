class TodolistsController < ApplicationController
  before_action :set_todolist, :only => [:show, :edit, :update, :destroy, :completed]

  def index
    @todolists = Todolist.all
  end

  def new
    @todolist = Todolist.new
  end

  def create
    @todolist = Todolist.new(todolist_params)
    if @todolist.save
      redirect_to todolists_url
    else
      render :action => :new
    end
  end

  def update
    if @todolist.update_attributes(todolist_params)
      redirect_to todolist_path(@todolist)
    else
      render :edit
    end
  end

  def destroy
    @todolist = Todolist.find(params[:id])
    if Date.today <= Todolist.find(params[:id]).due_date
      @todolist.destroy
      flash[:notice] = "Deleted successfully!!"
      #它的用處在於redirect時，能夠從這一個request傳遞文字訊息到下一個request
      #這裡我們可以將刪除成功與否回傳至首頁
      #將notice這個Helper用於 views/layouts/application.html.erb
      redirect_to todolists_url
    else
      redirect_to todolists_url, :notice => "Overdue!! It can't delete!"
    end
  end

  def complete
    @todolist = Todolist.find(params[:id])
    if @todolist.completed == false
      @todolist.update_attribute(:completed, true)
    else
      @todolist.update_attribute(:completed, false)
    end
    redirect_to todolists_path(@todolist)
  end

  private

  def set_todolist
    @todolist = Todolist.find(params[:id])
  end

  def todolist_params
    params.require(:todolist).permit(:name, :due_date, :note, :completed)
  end

end