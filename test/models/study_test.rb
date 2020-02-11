require 'test_helper'

class StudyTest < ActiveSupport::TestCase
  # test 'valid study' do
  #   study = Study.new(study_name: 'New Study Name Woooo')
  #   assert study.valid?
  # end

  # test 'invalid without study name' do
  #   study = Study.new(study_name: 'sdfghjkvcx')
  #   assert study.valid?, 'study is not valid without a name'
  #   assert_not_nil study.errors[:study_name], 'no validation error for name present'
  # end
  def setup
    @study = studies(:valid)
  end

  test 'valid study' do
    assert @study.valid?
  end

  test 'invalid without study name' do
    @study.study_name = nil
    refute @study.valid?, 'saved study without a name'
    assert_not_nil @study.errors[:study_name], 'no validation error for study name present'
  end

end