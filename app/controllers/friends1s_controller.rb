class Friends1sController < ApplicationController
  before_action :set_friends1, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /friends1s or /friends1s.json
  def index
    @friends1s = Friends1.all
  end

  # GET /friends1s/1 or /friends1s/1.json
  def show
  end

  # GET /friends1s/new
  def new
    @friends1 = Friends1.new
  end

  # GET /friends1s/1/edit
  def edit
  end

  # POST /friends1s or /friends1s.json
  def create
    @friends1 = Friends1.new(friends1_params)

    respond_to do |format|
      if @friends1.save
        format.html { redirect_to @friends1, notice: "Friend was successfully created." }
        format.json { render :show, status: :created, location: @friends1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @friends1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friends1s/1 or /friends1s/1.json
  def update
    respond_to do |format|
      if @friends1.update(friends1_params)
        format.html { redirect_to @friends1, notice: "Friend was successfully updated." }
        format.json { render :show, status: :ok, location: @friends1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @friends1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friends1s/1 or /friends1s/1.json
  def destroy
    @friends1.destroy
    respond_to do |format|
      format.html { redirect_to friends1s_url, notice: "Friend was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @friends1 = current_user.friends1.find_by(id: params[:id])
    redirect_to friends_path, notice: "Not Authorized to Edit this friend" if @friends1.nil?

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friends1
      @friends1 = Friends1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friends1_params
      params.require(:friends1).permit(:first_name, :last_name, :email, :phone, :instagram, :user_id)
    end
end
