class CommentsController < ApplicationController
  before_action :set_device

  def create
    @device.comments.create! params.required(:comment).permit(:content)
    redirect_to @device
  end

  private
    def set_device
      @device = Device.find(params[:device_id])
    end
end
