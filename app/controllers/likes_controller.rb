class LikesController < ApplicationController
  def create
    @like = Like.new(like_params)
    @like.user = current_user
    @like.save
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def like_params
    params.permit(:dog_id)
  end
end
