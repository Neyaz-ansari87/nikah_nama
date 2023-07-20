require "test_helper"

class NikahEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nikah_entry = nikah_entries(:one)
  end

  test "should get index" do
    get nikah_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_nikah_entry_url
    assert_response :success
  end

  test "should create nikah_entry" do
    assert_difference('NikahEntry.count') do
      post nikah_entries_url, params: { nikah_entry: { bride_name: @nikah_entry.bride_name, bride_parent_name: @nikah_entry.bride_parent_name, groom_name: @nikah_entry.groom_name, groom_parent_name: @nikah_entry.groom_parent_name, meahar_amount: @nikah_entry.meahar_amount, nikah_address: @nikah_entry.nikah_address, nikah_date: @nikah_entry.nikah_date, user_id: @nikah_entry.user_id } }
    end

    assert_redirected_to nikah_entry_url(NikahEntry.last)
  end

  test "should show nikah_entry" do
    get nikah_entry_url(@nikah_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_nikah_entry_url(@nikah_entry)
    assert_response :success
  end

  test "should update nikah_entry" do
    patch nikah_entry_url(@nikah_entry), params: { nikah_entry: { bride_name: @nikah_entry.bride_name, bride_parent_name: @nikah_entry.bride_parent_name, groom_name: @nikah_entry.groom_name, groom_parent_name: @nikah_entry.groom_parent_name, meahar_amount: @nikah_entry.meahar_amount, nikah_address: @nikah_entry.nikah_address, nikah_date: @nikah_entry.nikah_date, user_id: @nikah_entry.user_id } }
    assert_redirected_to nikah_entry_url(@nikah_entry)
  end

  test "should destroy nikah_entry" do
    assert_difference('NikahEntry.count', -1) do
      delete nikah_entry_url(@nikah_entry)
    end

    assert_redirected_to nikah_entries_url
  end
end
