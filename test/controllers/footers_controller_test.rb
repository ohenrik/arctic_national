require 'test_helper'

class FootersControllerTest < ActionController::TestCase
  setup do
    @footer = footers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:footers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create footer" do
    assert_difference('Footer.count') do
      post :create, footer: { email: @footer.email, facebook_url: @footer.facebook_url, linkedin_url: @footer.linkedin_url, m_country: @footer.m_country, m_p_o_box: @footer.m_p_o_box, m_state: @footer.m_state, m_zip_code: @footer.m_zip_code, phone: @footer.phone, pinterest_url: @footer.pinterest_url, twitter_url: @footer.twitter_url, v_country: @footer.v_country, v_state: @footer.v_state, v_street: @footer.v_street, v_zip_code: @footer.v_zip_code }
    end

    assert_redirected_to footer_path(assigns(:footer))
  end

  test "should show footer" do
    get :show, id: @footer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @footer
    assert_response :success
  end

  test "should update footer" do
    patch :update, id: @footer, footer: { email: @footer.email, facebook_url: @footer.facebook_url, linkedin_url: @footer.linkedin_url, m_country: @footer.m_country, m_p_o_box: @footer.m_p_o_box, m_state: @footer.m_state, m_zip_code: @footer.m_zip_code, phone: @footer.phone, pinterest_url: @footer.pinterest_url, twitter_url: @footer.twitter_url, v_country: @footer.v_country, v_state: @footer.v_state, v_street: @footer.v_street, v_zip_code: @footer.v_zip_code }
    assert_redirected_to footer_path(assigns(:footer))
  end

  test "should destroy footer" do
    assert_difference('Footer.count', -1) do
      delete :destroy, id: @footer
    end

    assert_redirected_to footers_path
  end
end
