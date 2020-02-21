class ItemsController < ApplicationController
  before_action :set_dept
  before_action :set_items, only: [:show, :edit, :update, :destroy]

  def index
    #@dept =Dept.find(params[:dept_id])
    @items = @dept.items
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = @dept.items.new
    render partial: "form"
  end
  
  def edit
    @item = Item.find(params[:id])
    render partial: "form"
  end

  def create
    @item = @dept.items.new(topic_params)

    if @item.save
      redirect_to[@dept,@item]
    
    else
      render :new
    end
  end

  def update
    if @item.update(item_params)
      redirect_to [@dept, @item]
      # same as redirect_to sub_topic_path(@sub, @topic)
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to dept_items_path
  end

  private
  def items_params
    params.require(:topic).permit(:name, :body)
  end



end
