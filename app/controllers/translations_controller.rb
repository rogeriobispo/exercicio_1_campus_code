class TranslationsController < ApplicationController

  before_action :set_translation, only: [:show, :edit, :update, :destroy]
  before_action :translation_params, only: [:update]

  def index
    @translation_count = Translation.count
  end

  def new
    @translation = Translation.new
  end

  def create
    @translation = Translation.new
    translation_params
    @translation.save
    redirect_to root_path
  end

  def update
    @translation.save
    redirect_to root_path
  end

  def list
    @translations = Translation.all
    puts "Passou no list viado"
  end

  def show
  end

  def edit
  end

  def destroy
    @translation.destroy
    redirect_to translations_list_path
  end
  def set_translation
    @translation = Translation.find(params[:id])
  end

  def translation_params
    @translation.portugues = params[:translation][:portugues]
    @translation.ingles = params[:translation][:ingles]
  end
end
