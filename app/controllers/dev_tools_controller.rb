# frozen_string_literal: true

class DevToolsController < ApplicationController
  before_action :set_dev_tool, only: %i[show edit update destroy]

  # GET /dev_tools
  def index
    @dev_tools = DevTool.all
  end

  # GET /dev_tools/1
  def show; end

  # GET /dev_tools/new
  def new
    @dev_tool = DevTool.new
  end

  # GET /dev_tools/1/edit
  def edit; end

  # POST /dev_tools
  def create
    @dev_tool = DevTool.new(dev_tool_params)

    if @dev_tool.save
      redirect_to @dev_tool, notice: 'Dev tool was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dev_tools/1
  def update
    if @dev_tool.update(dev_tool_params)
      redirect_to @dev_tool, notice: 'Dev tool was successfully updated.', status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /dev_tools/1
  def destroy
    @dev_tool.destroy!
    redirect_to dev_tools_url, notice: 'Dev tool was successfully destroyed.', status: :see_other
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_dev_tool
    @dev_tool = DevTool.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def dev_tool_params
    params.require(:dev_tool).permit(:name, :description)
  end
end
