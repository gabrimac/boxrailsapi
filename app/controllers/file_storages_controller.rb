class FileStoragesController < ApplicationController
  before_action :set_file_storage, only: [:show, :update, :destroy]

  # GET /file_storages
  def index
    @file_storages = FileStorage.all

    render json: @file_storages
  end

  # GET /file_storages/1
  def show
    render json: @file_storage
  end

  # POST /file_storages
  def create
    @file_storage = FileStorage.new(file_storage_params)

    if @file_storage.save
      render json: @file_storage, status: :created, location: @file_storage
    else
      render json: @file_storage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /file_storages/1
  def update
    if @file_storage.update(file_storage_params)
      render json: @file_storage
    else
      render json: @file_storage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /file_storages/1
  def destroy
    @file_storage.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_storage
      @file_storage = FileStorage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def file_storage_params
      params.require(:file_storage).permit(:type, :filename, :filetype, :filesize, :path, :user_id)
    end
end
