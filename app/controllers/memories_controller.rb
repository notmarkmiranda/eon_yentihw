class MemoriesController < ApplicationController
  before_action :set_memory, only: [:show, :download]

  def index
    @memories = Memory.order('created_at DESC')
  end

  def new
    @memory = Memory.new
  end

  def show
  end

  def create
    @memory = Memory.new(memory_params)
    if @memory.save
      redirect_to memories_path
    else
      render :new
    end
  end

  private

  def memory_params
    params.require(:memory).permit(:title, :description, :image, :author)
  end

  def set_memory
    @memory = Memory.find(params[:id])
  end
end
