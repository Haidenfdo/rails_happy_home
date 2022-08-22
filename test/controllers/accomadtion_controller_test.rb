# frozen_string_literal: true

require 'test_helper'

class AccomadtionControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get accomadtion_index_url
    assert_response :success
  end
end
