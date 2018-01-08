#! /usr/bin/env ruby

require 'net/http'

prompt = 'Input URL>'

print("\e[33m%s\e[0m " % prompt)
url = STDIN::readline()::chomp()

p("=>#{url}")
STDIN::gets()

url = URI::parse(url)
http = Net::HTTP::start(url::host, url::port)
doc = http::get(url::path)

doc::instance_variables()::each() { |key|
	value = doc::instance_variable_get(key)
	data = {i: key, j: value}
	puts("\e[33m%{i}:\e[0m %{j}" % data)
}

exit(0)

