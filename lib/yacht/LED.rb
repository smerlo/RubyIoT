# frozen_string_literal: true

require "pi_piper"
require_relative "./WithPin"
include PiPiper

module Yacht
  class LED
    def initialize(pin_number)
      @pin = PiPiper::Pin.new(pin: pin_number, direction: :out)
    end
    def state
      @pin.read == 1 ? "on" : "off"
    end

    def on
      @pin.on
    end

    def off
      @pin.off
    end

    def toggle
      if @pin.read == 1
        off
      else
        on
      end
    end
  end
end
