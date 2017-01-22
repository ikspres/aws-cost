require 'test_helper'

class InstancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instance = instances(:one)
  end

  test "should get index" do
    get instances_url, as: :json
    assert_response :success
  end

  test "should create instance" do
    assert_difference('Instance.count') do
      post instances_url, params: { instance: { clock_speed: @instance.clock_speed, instance_type: @instance.instance_type, lease_contract_length: @instance.lease_contract_length, location: @instance.location, memory: @instance.memory, operating_system: @instance.operating_system, physical_processor: @instance.physical_processor, price_per_unit: @instance.price_per_unit, purchase_option: @instance.purchase_option, storage: @instance.storage, term_type: @instance.term_type, unit: @instance.unit, vcpu: @instance.vcpu } }, as: :json
    end

    assert_response 201
  end

  test "should show instance" do
    get instance_url(@instance), as: :json
    assert_response :success
  end

  test "should update instance" do
    patch instance_url(@instance), params: { instance: { clock_speed: @instance.clock_speed, instance_type: @instance.instance_type, lease_contract_length: @instance.lease_contract_length, location: @instance.location, memory: @instance.memory, operating_system: @instance.operating_system, physical_processor: @instance.physical_processor, price_per_unit: @instance.price_per_unit, purchase_option: @instance.purchase_option, storage: @instance.storage, term_type: @instance.term_type, unit: @instance.unit, vcpu: @instance.vcpu } }, as: :json
    assert_response 200
  end

  test "should destroy instance" do
    assert_difference('Instance.count', -1) do
      delete instance_url(@instance), as: :json
    end

    assert_response 204
  end
end
