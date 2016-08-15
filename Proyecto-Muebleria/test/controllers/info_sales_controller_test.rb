require 'test_helper'

class InfoSalesControllerTest < ActionController::TestCase
  setup do
    @info_sale = info_sales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:info_sales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create info_sale" do
    assert_difference('InfoSale.count') do
      post :create, info_sale: { cantidad: @info_sale.cantidad, precio: @info_sale.precio, product_id: @info_sale.product_id, sale_id: @info_sale.sale_id }
    end

    assert_redirected_to info_sale_path(assigns(:info_sale))
  end

  test "should show info_sale" do
    get :show, id: @info_sale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @info_sale
    assert_response :success
  end

  test "should update info_sale" do
    patch :update, id: @info_sale, info_sale: { cantidad: @info_sale.cantidad, precio: @info_sale.precio, product_id: @info_sale.product_id, sale_id: @info_sale.sale_id }
    assert_redirected_to info_sale_path(assigns(:info_sale))
  end

  test "should destroy info_sale" do
    assert_difference('InfoSale.count', -1) do
      delete :destroy, id: @info_sale
    end

    assert_redirected_to info_sales_path
  end
end
