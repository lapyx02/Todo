class TodosController < ApplicationController
  before_action :get_todo, only: [:show, :edit, :update, :destroy]
  
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new()
  end
  
  def create
   @todo = Todo.new(todo_params) 
   if @todo.save
    flash[:notice] = 'Запись успешно добавлена'
    redirect_to todo_path(@todo)
   else
     render 'new'
   end
   
  end
  
  def show
  end  
  
  def edit
  end  
  
  def update    
   if @todo.update_attributes(todo_params)
    flash[:notice] = 'Запись успешно изменина'
    redirect_to todo_path(@todo)
   else
     render 'edit'
   end
  end 
  
  def destroy

    @todo.destroy
    redirect_to todos_path
    flash[:notice] = 'Запись успешно удалина'
  end  

  
  private
    def todo_params
      params.require(:todo).permit(:name, :description)
    end
    
    def get_todo
      @todo = Todo.find(params[:id])
    end
  
end