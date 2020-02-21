class DeptsController < ApplicationController
  before_action :set_dept, only: [:show, :edit, :update, :destroy]
  def index
    @depts = Dept.all 
  end

  def show
  end

  def new
    @dept = Dept.new
  end

  def edit
  end

  def create
    @dept = Dept.new(dept_params)
    if @dept.save
      redirect_to depts_path
    else
      render :new
    end
  end

  def update
    if @dept.update(dept_params)
      redirect_to @dept
    else
      render :edit
    end
  end

  def destroy
    @dept.destroy
    redirect_to dept_items_path(@dept)
  end

  private
    def set_dept
      @dept = Dept.find(params[:id])
    end

    def set_item
      @item = Item.find(params[:id])
    end

    def dept_params
      params.require(:dept).permit(:name, :body)
    end
end
