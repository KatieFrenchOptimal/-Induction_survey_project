# require 'test_helper'

# class StudyTest < ActiveSupport::TestCase

#   def setup
#     @study = studies(:valid)
#   end

#   #checks for a valid study
#   test 'valid study' do
#     assert @study.valid?
#   end

#   # study name can't be empty
#   test 'invalid without study name' do
#     @study.study_name = nil
#     refute @study.valid?, 'saved study without a name'
#     assert_not_nil @study.errors[:study_name], 'no validation error for study name present'
#   end

#   #~~~~do i need this one? Does it do the same as the one above?~~~~
#   test "should not save study without title" do
#     study = Study.new
#     assert_not study.save
#   end

#   # study name must be longer than 5 chars
#   test 'study name should be longer than 5 chars' do
#     @study.study_name = "This is longer than 5 characters and therefore is valid"
#     assert @study.valid?
#   end

#   # study name must not be longer than 100 chars
#   test 'study name should be less than 100 chars' do
#     @study.study_name = "id volutpat lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis aenean et tortor at risus viverra adipiscing at in tellus integer feugiat scelerisque varius morbi enim nunc faucibus a pellentesque sit amet porttitor eget dolor morbi non arcu risus quis varius quam quisque id diam vel quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant"
#     assert_not @study.valid? # *** This needs assert_not to pass but I'm not sure if that makes sense ***
#   end

#   # requires 2 x questions to pass (this test is just a practice as I did not need this one for this project)
#   test '#questions' do
#     assert_equal 2, @study.questions.size 
#   end

#   test '#recent' do
#     assert_includes Study.recent, studies(:valid)
#     refute_includes Study.recent, studies(:old)
#   end


# end