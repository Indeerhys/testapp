class WorkersController < ApplicationController

  before_action :authenticate_user!, :except => [:index]


  def index
    @workers = Worker.all
  end

  def show
    @worker = Worker.find(params[:id])
  end

  def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.new(worker_params)
    if @worker.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @worker = Worker.find(params[:id])
  end

  def update
    @worker = Worker.find(params[:id])
    if @worker.update_attributes(worker_params)
      redirect_to(:action => 'show', :id => @worker.id)
    else
      render ('edit')
    end
  end

  def delete
    @worker = Worker.find(params[:id])
  end

  def destroy
    client = Worker.find(params[:id]).destroy
    redirect_to(:action => "index")
  end

  private
  def worker_params
    params.require(:worker).permit(:id, :full_name, :worker_level, :location, :specialty, :contact_number)
  end
end
