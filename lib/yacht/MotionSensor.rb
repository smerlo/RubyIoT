# frozen_string_literal: true

require "pi_piper"
include PiPiper

module Yacht
  class MotionSensor
    def initialize(pin_number)
      PiPiper::Pin.new(pin: pin_number, direction: :in)
    end

    def read
      PiPiper.watch(pin: pin_number) do |pin|
        if pin.read == 1
          puts "Movimiento detectado!"
        else
          puts "Todo esta tranquilo"
        end
      end
      PiPiper.wait
    end
  end
end
