class PassesController < ApplicationController
    
    before_action :find_pass, only: [:update, :destroy]
    
    def index
        @passes = Pass.all

        render json: @passes
    end

    def create
        @pass = Pass.create(pass_params)
        render json: @pass, status: :created
    end

    def update
        @pass.update(pass_params)
        render json: @pass
    end

    def destroy
        @pass.destroy
        render status: :no_content
    end

    private

    def find_pass
        @pass = Pass.find(params[:id])
    end

    def pass_params
        params.require(:pass).permit(:title, :description, :distance, :hm, :wishlist, :done, :user_id, :image)

    end
end
