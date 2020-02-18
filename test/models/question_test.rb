require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
 
  def setup
    @question = questions(:valid)
  end

  # #checks for a valid question
  # test 'is question valid' do
  #   @question.question = "This is longer than 5 characters and therefore is valid"
  #   assert @question.valid?
  # end

  # test 'valid question' do
  #   assert @question.valid?
  # end

  # # question can't be empty
  # test 'invalid without question' do
  #   @question.question = nil
  #   refute @question.valid?, 'saved without a question'
  #   assert_not_nil @question.errors[:question], 'no validation error for question present'
  # end

  # # question name must be longer than 5 chars
  # test 'question should be longer than 5 chars' do
  #   @question.question = "This is longer than 5 characters and therefore is valid"
  #   assert @question.valid?
  # end

  # # question name must not be longer than 100 chars
  # test 'question should be less than 100 chars' do
  #   @question.question = "id volutpat lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis aenean et tortor at risus viverra adipiscing at in tellus integer feugiat scelerisque varius morbi enim nunc faucibus a pellentesque sit amet porttitor eget dolor morbi non arcu risus quis varius quam quisque id diam vel quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant"
  #   assert @question.valid?
  # end


end
