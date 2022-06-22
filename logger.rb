require 'singleton'

class Logger
  include Singleton
  def initialize
    @f = File.open 'log.txt', 'a'
  end

  def log_something(what)
    @f.puts what
    @f.flush
  end

end