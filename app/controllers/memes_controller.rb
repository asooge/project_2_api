class MemesController < ProtectedController
  before_action :set_meme, only: [:show, :update, :destroy]
  #skip_before_action :authenticate

  # GET /memes
  def index
    @memes = current_user.memes.all

    render json: @memes
  end

  # GET /memes/1
  def show
    render json: @meme
  end

  # POST /memes
  def create
    @meme = current_user.memes.build(meme_params)

    if @meme.save
      render json: @meme, status: :created, location: @meme
    else
      render json: @meme.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /memes/1
  def update
    if @meme.update(meme_params)
      render json: @meme
    else
      render json: @meme.errors, status: :unprocessable_entity
    end
  end

  # DELETE /memes/1
  def destroy
    @meme.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meme
      @meme = current_user.memes.find(params[:id])
      #@meme = Meme.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def meme_params
      params.require(:meme).permit(:image, :text_1, :font_size_1, :text_2, :font_size_2)
    end
end
