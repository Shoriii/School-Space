class FacilityCommentsController < ApplicationController
  before_action :authenticate_customer!

  def create
    @facility = Facility.find(params[:facility_id])
    @facility_new = Facility.new
    @facility_comment = @facility.facility_comments.new(facility_comment_params)
    @facility_comment.customer_id = current_customer.id
    if @facility_comment.save
      flash[:success] = "Comment was successfully created."
    else
      @facility_comments = FacilityComment.where(id: @facility)
    end
  end

  def destroy
    @facility_comment = FacilityComment.find(params[:facility_id])
    @facility = @facility_comment.facility
    if @facility_comment.customer != current_customer
      redirect_to request.referer
    end
    @facility_comment.destroy

  end

  private

  def facility_comment_params
    params.require(:facility_comment).permit(:comment)
  end
end
