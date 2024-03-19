FROM jruby:9

COPY saturate_cpu.rb /usr/bin/
ENTRYPOINT /usr/bin/saturate_cpu.rb
