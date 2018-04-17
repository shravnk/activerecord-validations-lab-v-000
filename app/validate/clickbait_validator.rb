class ClickbaitValidator < ActiveRecord::EachValidator
  def validate_each(post, attribute, value)
    click_bait = ["Won't Believe", "Secret", "Top", "Guess"]
    unless value.
      record.errors[attribute] << (options[:message] || "is not sufficiently clickbait-y")
    end

  end
end
