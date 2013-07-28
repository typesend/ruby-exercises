# Bob is a lackadaisical teenager.
#
class Bob

  # You might try to converse with Bob by sending
  # the #hey message with a single string parameter.
  #
  # In conversation, his responses are limited;
  # they vary depending on whether you tell him
  # something, ask him a question, yell, or say
  # nothing at all.
  #
  def method_missing(called, said)
    heard = said.to_s.extend TeenageListening

    case
    when heard.empty?
      'Fine. Be that way.'
    when heard.yelling?
      'Woah, chill out!'
    when heard.question?
      'Sure.'
    when heard.statement?
      'Whatever.'
    end
  end
  
  module TeenageListening

    def question?
      self.end_with? '?'
    end
    
    def statement?
      not question?
    end
    
    def yelling?
      self == self.upcase
    end
    
    def self.extended(a)
      raise 'Extending something other than a String' unless a.is_a? String
    end
    
  end
  
end


__END__
The MIT License (MIT)

Copyright (c) 2013 Ben Damman

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
