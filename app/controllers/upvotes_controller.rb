class UpvotesController < ProtectedController
  before_action :set_upvote, only: [:show, :update, :destroy]
  #skip_before_action :authenticate
  # GET /upvotes
  def index
    @upvotes = Upvote.all

    render json: @upvotes
  end

  # GET /upvotes/1
  def show
    render json: @upvote
  end

  # POST /upvotes
  def create
    @upvote = current_user.upvotes.build(upvote_params)

    if @upvote.save
      render json: @upvote, status: :created, location: @upvote
    else
      render json: @upvote.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /upvotes/1
  def update
    if @upvote.update(upvote_params)
      render json: @upvote
    else
      render json: @upvote.errors, status: :unprocessable_entity
    end
  end

  # DELETE /upvotes/1
  def destroy
    @upvote.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upvote
      @upvote = current_user.upvotes.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def upvote_params
      params.require(:upvote).permit(:value, :user_id, :meme_id)
    end
end
