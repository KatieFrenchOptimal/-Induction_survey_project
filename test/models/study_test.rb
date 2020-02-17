require 'test_helper'

class StudyTest < ActiveSupport::TestCase

  def setup
    @study = studies(:valid)
  end

  test 'valid study' do
    assert @study.valid?
  end
  # study name can't be empty
  test 'invalid without study name' do
    @study.study_name = nil
    refute @study.valid?, 'saved study without a name'
    assert_not_nil @study.errors[:study_name], 'no validation error for study name present'
  end

  # study name must be longer than 5 chars
  test 'study name should be longer than 5 chars' do
    @study.study_name = "This is longer than 5 characters and therefore is valid"
    assert @study.valid?
  end



  # requires 2 x questions to pass
  test '#questions' do
    assert_equal 2, @study.questions.size 
  end

  test '#recent' do
    assert_includes Study.recent, studies(:valid)
    refute_includes Study.recent, studies(:old)
  end

end