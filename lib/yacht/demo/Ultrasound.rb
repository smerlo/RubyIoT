# frozen_string_literal: true
require_relative "../Ultrasound"

module Yacht
  module Demo
    class Ultrasounds
      def demo
        sensor = Ultrasound.new(23, 24)
        loop do
          distance = sensor.measure_distance

          sleep(0.5)
        end
      end
    end
  end
end
