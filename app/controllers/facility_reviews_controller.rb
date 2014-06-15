class FacilityReviewsController < ApplicationController
  before_action :set_facility_review, only: [:show, :edit, :update, :destroy]

  # GET /facility_reviews
  # GET /facility_reviews.json
  def index
    @facility_reviews = FacilityReview.all
  end

  # GET /facility_reviews/1
  # GET /facility_reviews/1.json
  def show
  end

  # GET /facility_reviews/new
  def new
    @facility_review = FacilityReview.new
  end

  # GET /facility_reviews/1/edit
  def edit
  end

  # POST /facility_reviews
  # POST /facility_reviews.json
  def create
    @facility_review = FacilityReview.new(facility_review_params)

    respond_to do |format|
      if @facility_review.save
        format.html { redirect_to @facility_review, notice: 'Facility review was successfully created.' }
        format.json { render :show, status: :created, location: @facility_review }
      else
        format.html { render :new }
        format.json { render json: @facility_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facility_reviews/1
  # PATCH/PUT /facility_reviews/1.json
  def update
    respond_to do |format|
      if @facility_review.update(facility_review_params)
        format.html { redirect_to @facility_review, notice: 'Facility review was successfully updated.' }
        format.json { render :show, status: :ok, location: @facility_review }
      else
        format.html { render :edit }
        format.json { render json: @facility_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facility_reviews/1
  # DELETE /facility_reviews/1.json
  def destroy
    @facility_review.destroy
    respond_to do |format|
      format.html { redirect_to facility_reviews_url, notice: 'Facility review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facility_review
      @facility_review = FacilityReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def facility_review_params
      params.require(:facility_review).permit(:reviewer, :facility, :title, :description, :rating)
    end
end
