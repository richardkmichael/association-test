require 'test_helper'

class AssemblySequencesControllerTest < ActionController::TestCase
  setup do
    @assembly_sequence = assembly_sequences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assembly_sequences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assembly_sequence" do
    assert_difference('AssemblySequence.count') do
      post :create, assembly_sequence: { car_id: @assembly_sequence.car_id, part_id: @assembly_sequence.part_id, sequence: @assembly_sequence.sequence }
    end

    assert_redirected_to assembly_sequence_path(assigns(:assembly_sequence))
  end

  test "should show assembly_sequence" do
    get :show, id: @assembly_sequence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assembly_sequence
    assert_response :success
  end

  test "should update assembly_sequence" do
    patch :update, id: @assembly_sequence, assembly_sequence: { car_id: @assembly_sequence.car_id, part_id: @assembly_sequence.part_id, sequence: @assembly_sequence.sequence }
    assert_redirected_to assembly_sequence_path(assigns(:assembly_sequence))
  end

  test "should destroy assembly_sequence" do
    assert_difference('AssemblySequence.count', -1) do
      delete :destroy, id: @assembly_sequence
    end

    assert_redirected_to assembly_sequences_path
  end
end
