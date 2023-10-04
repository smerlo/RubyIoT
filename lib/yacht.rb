# frozen_string_literal: true
require_relative "yacht/demo/LED"
require_relative "yacht/demo/Servo"
require_relative "yacht/demo/Ultrasound"
require_relative "yacht/demo/MotionSensor"

module Yacht
  class Demos
    # led = Demo::LEDs.new()
    # led.demo

    # servo = Demo::Servos.new()
    # servo.demo

    # Demo::Ultrasounds.new().demo

    Demo::MotionSensors.new().demo
  end
end
