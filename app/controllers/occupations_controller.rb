class OccupationsController < ApplicationController

  def index
    @occupations = Occupation.all
  end

  def show
    @occupation = Occupation.find(params[:id])
  end

   def new
     @occupation = Occupation.new
   end

   def edit
        @occupation = Occupation.find(params[:id])
   end

   def create
      @occupation = Occupation.new(occupation_params)
      if @occupation.save
        redirect_to @occupation
      else
        render 'new'
      end
   end

   def update
       @occupation = Occupation.find(params[:id])

       if @occupation.update(occupation_params)
         redirect_to @occupation
       else
         render 'edit'
       end
   end

   def destroy
     @occupation = Occupation.find(params[:id])
     @occupation.destroy

     redirect_to occupations_path

   end

   private
     def occupation_params
       params.require(:occupation).permit(:title)
     end

end
