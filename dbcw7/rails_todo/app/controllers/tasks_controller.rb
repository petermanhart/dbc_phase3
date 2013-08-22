class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @list = List.find(params[:list_id])
    @task = @list.tasks.build
  end

  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.build
    if @task.save!
      redirect_to list_tasks_path(@list)
    else
      render :new
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(params[:task])
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    if @task.delete
      redirect_to root_path
    else
      render :show
    end
  end
end