class TodosController < ApplicationController
  before_action :authenticate

  def index
    @todos = current_user.todos
  end

  def new
    @todo = Todo.new
  end

  def create
    current_user.todos.create(todo_params)
    redirect_to todos_path
  end

  # def complete!
  #   @todo = Todo.find(params[:todo_id])
  #   @todo.completed_at = Time.current
  # end

  private

  def todo_params
    params.require(:todo).permit(:title, :email)
  end
end
