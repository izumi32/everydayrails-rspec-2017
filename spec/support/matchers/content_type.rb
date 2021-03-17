RSpec::Matchers.define :have_content_type do |expected|
<<<<<<< HEAD
=======

>>>>>>> my-08-dry-specs
  match do |actual|
    begin
      actual.content_type == content_type(expected)
    rescue ArgumentError
      false
    end
  end

  failure_message do |actual|
    "Expected \"#{content_type(actual.content_type)} " +
    "(#{actual.content_type})\" to be Content Type " +
    "\"#{content_type(expected)}\" (#{expected})"
  end

  failure_message_when_negated do |actual|
    "Expected \"#{content_type(actual.content_type)} " +
    "(#{actual.content_type})\" to not be Content Type " +
    "\"#{content_type(expected)}\" (#{expected})"
  end

  def content_type(type)
    types = {
      html: "text/html",
<<<<<<< HEAD
      json: "application/json",
=======
      json: "application/json"
>>>>>>> my-08-dry-specs
    }
    types[type.to_sym] || "unknown content type"
  end
end

<<<<<<< HEAD
RSpec::Matchers.alias_matcher :be_content_type , :have_content_type
=======
RSpec::Matchers.alias_matcher :be_content_type, :have_content_type
>>>>>>> my-08-dry-specs
