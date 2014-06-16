class ProviderReviewsController < ApplicationController
  before_action :set_provider_review, only: [:show, :edit, :update, :destroy]

  # GET /provider_reviews
  # GET /provider_reviews.json
  def index
    @provider_reviews = ProviderReview.all
  end

  # GET /provider_reviews/1
  # GET /provider_reviews/1.json
  def show
  end

  # GET /provider_reviews/new
  def new
    @provider_review = ProviderReview.new
    @provider = Provider.find(params[:provider_id])
  end

  # GET /provider_reviews/1/edit
  def edit
  end

  # POST /provider_reviews
  # POST /provider_reviews.json
  def create
    #@provider_review = ProviderReview.new(provider_review_params)
    @provider = Provider.find(params[:provider_id])
    @provider_review = @provider.provider_reviews.create(provider_review_params)

    respond_to do |format|
      if @provider_review.save
        format.html { redirect_to @provider, notice: 'Provider review was successfully created.' }
        format.json { render :show, status: :created, location: @provider_review }
      else
        format.html { render :new }
        format.json { render json: @provider_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /provider_reviews/1
  # PATCH/PUT /provider_reviews/1.json
  def update
    respond_to do |format|
      if @provider_review.update(provider_review_params)
        format.html { redirect_to @provider_review, notice: 'Provider review was successfully updated.' }
        format.json { render :show, status: :ok, location: @provider_review }
      else
        format.html { render :edit }
        format.json { render json: @provider_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /provider_reviews/1
  # DELETE /provider_reviews/1.json
  def destroy
    @provider_review.destroy
    respond_to do |format|
      format.html { redirect_to provider_reviews_url, notice: 'Provider review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provider_review
      @provider_review = ProviderReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def provider_review_params
      params.require(:provider_review).permit(:reviewer, :provider, :title, :description, :rating, :provider_id)
    end
end
