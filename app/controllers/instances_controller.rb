class InstancesController < ApplicationController
  before_action :set_instance, only: [:show, :update, :destroy]


  # GET /instances
  def index
    @instances = Instance.all.limit(10)

    render json: @instances
  end

  def machine_types
    @instances = Instance.uniq.pluck(:instance_type, :vcpu, :memory).reject {|i| i[0].nil? }
    render json: @instances
  end

  def locations
    @instances = Instance.uniq.pluck(:location).reject {|i| i.nil?}
    render json: @instances
  end

  # GET /instances/1
  def show
    render json: @instance
  end

  # POST /instances
  def create
    @instance = Instance.new(instance_params)

    if @instance.save
      render json: @instance, status: :created, location: @instance
    else
      render json: @instance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /instances/1
  def update
    if @instance.update(instance_params)
      render json: @instance
    else
      render json: @instance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /instances/1
  def destroy
    @instance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instance
      @instance = Instance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def instance_params
      params.require(:instance).permit(:instance_type, :operating_system, :price_per_unit, :unit, :term_type, :lease_contract_length, :purchase_option, :location, :vcpu, :memory, :storage, :physical_processor, :clock_speed)
    end
end
