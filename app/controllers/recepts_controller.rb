class ReceptsController < ApplicationController
  def index
    @recepts = Recept.all
  end

  def create
    @recept = Recept.create incom_recept
  end

  def new
    @recept = Recept.new
  end

  def edit
  end

  def destroy
  end


  private


  def incom_recept
    params.require(:recept).permit(:link,
                            :id_or_name,
                            :id_name_form,
                            :current,
                            :min,
                            :max,
                            :probability)
  end
end
