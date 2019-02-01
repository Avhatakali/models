class ClothesController < ApplicationController

  def index
    @clothes = Clothe.all

  end

 def show
     @clothe = Clothe.find(params[:id])
 end

  def new
      @clothe = Clothe.new
  end

  def edit
      @clothe = Clothe.find(params[:id])
  end

  def create
     @clothe = Clothe.new(clothe_params)

     if @clothe.save
        redirect_to @clothe
     else
        render 'new'
     end
  end

  def update
     @clothe = Clothe.find(params[:id])
     if @clothe.update(clothe_params)
        redirect_to @clothe
     else
        render 'edit'
     end
  end

  def destroy
    @clothe = Clothe.find(params[:id])
    @clothe.destroy

    redirect_to clothes_path
  end

  private
    def clothe_params
       params.require(:clothe).permit(:name, :piece)
    end
end
