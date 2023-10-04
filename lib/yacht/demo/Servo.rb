# frozen_string_literal: true
require_relative "../Servo"

module Yacht
  module Demo
    class Servos
      def demo
        servo = Servo.new(12)
        
        servo.position = 1.0
        servo.release!
        
      end
    end
  end
end
