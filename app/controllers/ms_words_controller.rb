class MsWordsController < ApplicationController
  before_action :set_ms_word, only: [:show, :edit, :update, :destroy]

  # GET /ms_words
  # GET /ms_words.json
  def index
    @ms_words = MsWord.all
  end

  # GET /ms_words/1
  # GET /ms_words/1.json
  def show
  end

  # GET /ms_words/new
  def new
    @ms_word = MsWord.new
  end

  # GET /ms_words/1/edit
  def edit
  end

  # POST /ms_words
  # POST /ms_words.json
  def create
    @ms_word = MsWord.new(ms_word_params)

    respond_to do |format|
      if @ms_word.save
        format.html { redirect_to @ms_word, notice: 'Ms word was successfully created.' }
        format.json { render :show, status: :created, location: @ms_word }
      else
        format.html { render :new }
        format.json { render json: @ms_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ms_words/1
  # PATCH/PUT /ms_words/1.json
  def update
    respond_to do |format|
      if @ms_word.update(ms_word_params)
        format.html { redirect_to @ms_word, notice: 'Ms word was successfully updated.' }
        format.json { render :show, status: :ok, location: @ms_word }
      else
        format.html { render :edit }
        format.json { render json: @ms_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ms_words/1
  # DELETE /ms_words/1.json
  def destroy
    @ms_word.destroy
    respond_to do |format|
      format.html { redirect_to ms_words_url, notice: 'Ms word was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ms_word
      @ms_word = MsWord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ms_word_params
      params.require(:ms_word).permit(:word)
    end
end
