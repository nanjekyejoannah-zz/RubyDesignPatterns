require 'singleton'

class SingletonClass
  include Singleton

  def initialize
    @file = File.open("log.txt", "a")
  end

  def log(msg)
    @file.puts(msg)
  end
end