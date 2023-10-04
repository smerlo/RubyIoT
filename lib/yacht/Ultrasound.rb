require "pi_piper"
require_relative "./WithPWMPin"
include PiPiper

module Yacht
  class Ultrasound
    SPEED_OF_SOUND = 343.0

    def initialize(trigger, echo)
      @trigger = PiPiper::Pin.new(pin: trigger, direction: :out)
      @echo = PiPiper::Pin.new(pin: echo, direction: :in)

      @echo.off
      sleep(0.1)
    end

    def pulse_in
      @echo.wait_for_change until @echo.read == 1
      start_time = Time.now
      @echo.wait_for_change until @echo.read != 1
      end_time = Time.now

      return (end_time - start_time)
    end

    def measure_distance
      @echo.on
      @trigger.on
      sleep(0.00001)
      @trigger.off
      distance = pulse_in() * 343

      puts("Distance: #{distance} cm")
    end
  end
end
