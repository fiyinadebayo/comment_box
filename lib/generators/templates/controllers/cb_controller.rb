class <%= table_name.capitalize %>Controller < ApplicationController
  before_action :fetch_<%= singular_name %>, only: [:show, :update, :destroy]

  def index
    render json: <%= class_name %>.order(updated_at: 'desc')
  end

  def show
    render json: fetch_<%= singular_name %>
  end

  def create
    <%= singular_name %> = <%= class_name %>.new(<%= singular_name %>_params)

    if <%= singular_name %>.save
      render json: {message: '<%= class_name %> created!'}, status: :created
    else
      render json: {message: 'An error occurred.'}, status: :bad_request
    end
  end

  def update
    if fetch_<%= singular_name %>.update(<%= singular_name %>_params)
      render json: {message: '<%= class_name %> updated!'}, status: :accepted
    else
      render json: {message: 'Update failed'}, status: :bad_request
    end
  end

  def destroy
    fetch_<%= singular_name %>.destroy
    render json: {message: '<%= class_name %> deleted!'}, status: :no_content
  end

  private

  def fetch_<%= singular_name %>
    <%= class_name %>.find_by(id: params[:id])
  end

  def <%= singular_name %>_params
    params.require(:<%= singular_name %>).permit(:author, :email, :text, :likes)
  end
end
