class VehiclesController < ApplicationController

      def index
          @vehicles = Vehicle.all
      end

      def show
         @vehicle = Vehicle.find(params[:id])
      end

      def new
          @vehicle = Vehicle.new
      end

      def edit
          @vehicle = Vehicle.find(params[:id])
      end

      def create
          @vehicle = Vehicle.new(vehicle_params)

          if @vehicle.save
             redirect_to @vehicle
          else
            render 'new'
          end
      end

      def update
          @vehicle = Vehicle.find(params[:id])

          if @vehicle.update(vehicle_params)
             redirect_to vehicles_path
          else
             render 'edit'
          end
      end

      def destroy
        @vehicle = Vehicle.find(params[:id])
        @vehicle.destroy

        redirect_to vehicles_path
      end

private
   def vehicle_params
     params.require(:vehicle).permit(:make, :model, :year)
   end

end
