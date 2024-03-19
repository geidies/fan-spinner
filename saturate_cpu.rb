#!/usr/bin/env ruby
require 'etc'

def calc_pi
  num = 4.0
  pi = 0
  plus = true

  den = 1
  while den < 2**32
    if plus
      pi = pi + num/den
      plus = false
    else
      pi = pi - num/den
      plus = true
    end
    den = den + 2
  end
  pi
end

t = nil
Etc.nprocessors.times do |p|
  t = Thread.fork do
    puts sprintf "%d %f", p, calc_pi
  end
end

t.join
