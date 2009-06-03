require File.dirname(__FILE__) + '/../lib/jsmin'
require 'test/unit'

class UnterminatedStringTest < Test::Unit::TestCase

  def test_should_not_raise_unterminated_string_exception_if_js_contains_a_multiline_string
    assert_nothing_raised do
      multiline_string_js = '
        var multilineString = "hello \
          world!";
      '
      JSMin.minify(multiline_string_js)
    end
  end

end
