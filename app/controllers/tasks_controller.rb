class TasksController < ApplicationController
before_action :set_task, only:  [:edit, :update, :show, :destroy ]

  def index
    @tasks = Task.all
  end

  def new
    @task  = Task.new
  end

  def edit
  end

  def show
  end

  def create
    @task = Task.new(set_params)
    if @task.save
      redirect_to tasks_path
    else
        # redirect_to new_task_path
        # redirect_to new_task_path, task: @task, notice: 'kindly fill the manedatory fields'
        
        render 'errors'
        # render :new
    end
  end

  def update
    if @task.update(set_params)
      redirect_to tasks_path, notice: 'task has been updated successfully'
    else
      render :edit, notice: 'kindly fill the mandatory fields'
    end
  end

  def destroy
    # debugger
    
    # @task= Task.find(params[:id])
    @task.destroy
    
    if @task.destroy
      redirect_to tasks_path, notice: 'task has been deleted successfully'
    else
      render :new
    end

    # redirect_to :new
  end

  private
  def set_task
    @task= Task.find(params[:id])
  end

  def set_params
    params.require(:task).permit(:tname, :tstatus, :is_active)
  end

end
