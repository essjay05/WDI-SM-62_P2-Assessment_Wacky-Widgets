class WidgetsController < ApplicationController
  before_action :set_widget, only: [:show, :destroy]
  def index
    @widgets = Widget.all
  end

  def show
    set_widget
  end

  def new
    @widget = Widget.new
  end

  def create
    @widget = Widget.new(widget_params)

    if @widget.save
      redirect_to widgets_path
    else
      render :new
    end
  end

  def destroy
    
    @widget.destroy
    redirect_to widgets_path
    
  end

  private
  def widget_params
    params.require(:widget).permit(:id, :description, :quantity)
  end
  def set_widget
    
    @widget = Widget.find(params[:id])
  end

end
