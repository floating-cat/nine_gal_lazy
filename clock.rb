require 'clockwork'
require_relative 'nine_gal_lazy'

include Clockwork

every(5.hours + 5.minutes, '9gal') { nine_gal_click }