# frozen_string_literal: true
require_relative "../LED"

module Yacht
  module Demo
    class LEDs
      def demo
        led = LED.new 4

        print "LED state\n"
        print "is now:" + led.state + "\n"
        sleep 3
        led.toggle
        print "is now:" + led.state + "\n"
        sleep 3

        led.toggle
        print "is now:" + led.state + "\n"
        sleep 3
      end
    end
  end
end
