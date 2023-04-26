require "jekyll"
require "minitest/autorun"

require_relative "../lib/jekyll-hostname"
include Jekyll::JekyllHostname

class JekyllHostnameTest
  describe "tests for url hostname parser" do

    it "https://google.com should become google.com" do
      assert_equal hostname("https://google.com"), "google.com"
    end

    it "https://github.com should become github.com" do
      assert_equal hostname("https://github.com"), "github.com"
    end

    it "https://gourav.sh/project/jekyll-hostname should become gourav.sh" do
      assert_equal hostname("https://gourav.sh/project/jekyll-hostname"), "gourav.sh"
    end

    it "https://example.com/some-path#anchor?a=1&b=2 should become example.com" do
      assert_equal hostname("https://example.com/some-path#anchor?a=1&b=2"), "example.com"
    end

  end
end
