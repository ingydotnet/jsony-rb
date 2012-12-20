require 'jsony/grammar'
require 'jsony/receiver'
require 'pegex/parser'

module JSONY
  VERSION = '0.0.7'

  def self.load jsony_str
    parser = Pegex::Parser.new do |p|
      p.grammar = JSONY::Grammar.new
      p.receiver = JSONY::Receiver.new
    end
    # parser.debug = true
    parser.parse jsony_str
  end
end
