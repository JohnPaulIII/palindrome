# frozen_string_literal: true

require_relative "JohnPaulIII_palindrome/version"

module JohnPaulIIIPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse && processed_content != ""
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      to_s.scan(/[a-z0-9]/i).join.downcase
    end
end

class String
  include JohnPaulIIIPalindrome
end

class Integer
  include JohnPaulIIIPalindrome
end