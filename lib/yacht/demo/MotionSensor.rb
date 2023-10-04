# frozen_string_literal: true
require_relative "../MotionSensor"

module Yacht
  module Demo
    class MotionSensors
      def demo
        sensor = MotionSensor.new(27)

        sensor.read(27)
      end
    end
  end
end
