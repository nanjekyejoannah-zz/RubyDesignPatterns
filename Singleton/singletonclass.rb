require 'singleton'

class SingletonClass
  include Singleton

  def initialize
    @file = File.open("log.txt", "a")
  end

  def show(content)
    @file.puts(content)
  end
end