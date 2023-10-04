require "pi_piper"
require_relative "./WithPWMPin"
include PiPiper

module Yacht
  class Servo
    def initialize(pin_number, mhz)
      @pin = PiPiper::Pwm.new(pin: pin_number, clock: 19.2e6, range: 20000)
    end

    def position=(position)
      @pin.on
      duty_cycle = 0.05 + (position * 0.05)
      @pin.value = duty_cycle
    end

    def release!
      @pin.off
    end
  end
end
