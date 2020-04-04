require 'test_helper'

class KaryawansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @karyawan = karyawans(:one)
  end

  test "should get index" do
    get karyawans_url
    assert_response :success
  end

  test "should get new" do
    get new_karyawan_url
    assert_response :success
  end

  test "should create karyawan" do
    assert_difference('Karyawan.count') do
      post karyawans_url, params: { karyawan: { nama: @karyawan.nama, pendidikan_id: @karyawan.pendidikan_id, posisi_id: @karyawan.posisi_id } }
    end

    assert_redirected_to karyawan_url(Karyawan.last)
  end

  test "should show karyawan" do
    get karyawan_url(@karyawan)
    assert_response :success
  end

  test "should get edit" do
    get edit_karyawan_url(@karyawan)
    assert_response :success
  end

  test "should update karyawan" do
    patch karyawan_url(@karyawan), params: { karyawan: { nama: @karyawan.nama, pendidikan_id: @karyawan.pendidikan_id, posisi_id: @karyawan.posisi_id } }
    assert_redirected_to karyawan_url(@karyawan)
  end

  test "should destroy karyawan" do
    assert_difference('Karyawan.count', -1) do
      delete karyawan_url(@karyawan)
    end

    assert_redirected_to karyawans_url
  end
end
