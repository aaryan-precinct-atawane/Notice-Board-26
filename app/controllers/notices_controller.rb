class NoticesController < ApplicationController
  def index
    @notices = Notice.by_category(params[:category]).pinned_first
    @categories = Notice::CATEGORIES
  end

  def show
    @notice = Notice.find(params[:id])
  end

  def new
    @notice = Notice.new
  end

  def create
    @notice = Notice.new(notice_params)
    if @notice.save
      redirect_to notices_path, notice: "Notice posted successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @notice = Notice.find(params[:id])
    @notice.destroy
    redirect_to notices_path, notice: "Notice deleted."
  end

  private

  def notice_params
    params.require(:notice).permit(:title, :body, :author_name, :category, :pinned)
  end
end
