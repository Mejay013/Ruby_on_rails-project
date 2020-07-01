class ProjectController < ApplicationController
  def index
    @tasks = Project.all
    @project_type = Project.all.map{|u| [ u.title, u.id ] }
  end
  
  def update
  end

  def create
    # render plain: params[:form_add].inspect #|| { "form_add"=>{"title"=>"fdjfdjfjkd", "project_id"=>"2"}, "commit"=>"Save Form add"}
    @project_id = params[:form_add][:project_id]
    @todo_text = params[:form_add][:title]

    @new_todo = Project.find(@project_id).todos.new
    @new_todo.text = @todo_text
    @new_todo.isCompleted = false

    @new_todo.save

    redirect_to action: "index"
  end

end
