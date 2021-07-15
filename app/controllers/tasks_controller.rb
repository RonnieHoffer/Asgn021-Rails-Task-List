class TasksController < ApplicationController
    
    def index
        @tasks = Task.all
        @task = Task.new
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)
        if @task.save
            redirect_to tasks_url
        else
            render :new
        end
    end
    
    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to tasks_url
    end


    private
    def task_params
        params.require(:task).permit(:name)
    end

end
