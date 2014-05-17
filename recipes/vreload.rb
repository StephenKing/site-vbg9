# Allow to reload varnish

user "vreload" do
  home "/home/vreload"
  manage_home true
  shell "/bin/bash"
end

sudo "vrleoad" do
  user "vreload"
  commands ["/etc/init.d/varnish reload"]
  nopasswd true
end

directory "/home/vreload/.ssh" do
  owner "vreload"
end

keys = [
  'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDU8noyn4TzZfBpKzx4XIdZR+Yp3n+kUMGeYvC3M1pYWpqdSAKPb2xQakRUuKYK0P/ZKvkJ/9YuXuQbbRjnz+jsoXVZt9icKkhcIhokKDw5RMQ8ArKT0IOVG04BpvJv5T74uocdcu43anIR5szY5TWMmGH8y7wz/cFarnH7BYd2c2esEF8kiScOFUFDELV+UMF1mNKqLbXzBgnuNGrPyAo9afy6q4IR9uQ4HnPdg/hAnGsuVFvkHbLAiIoTE9802BTq7JTLj9bgNrng5A8IkGzSs1WNvRDspqXGDZXRUKaRBbJSqd83t47UvWfK80pe5ibkTGyjicrvCUUlaDgV+wKJ fm',
  'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDN9h1MEkUJmIExaVGYRNQkiQQuUvggB0ejWcvMLND0RZuIoCMXJRVgNPPfrmmYUk07WOUeSrbqjzpcvR2FpM6nzVtdohkAfVqmNbA7W7qp/1Ihpw9OnOKB60ZK4tEvzHwtgo3iwEzaio3hw0AMRrVRZgec5JWyUxaqRvxj1aCSJEYZdL1pNycj61j/ivhget29hJmeGzVY+ms9T6bf1p9K1tKiUvJFjsXlE3Cxr4DyQHGdK1uL+Q8mXwRDtUoeHhefkvc/a532JwJDXNTzmzIBTpq1ehIsbp80d9DxBiMAog2xRyoSOicf+/fMmi2t4oBwpFm2Wbdfyw1TT/bjBUQp jl',
  'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA2nuuhs1VsrcLwJAkJSLOREa+eAJ3Em0K/v8TXMcL+VG2UxtKcQPQxmg3CdFRxFfd5pXQpOSTSZEyWxT7/hxSmvrYy8NtyuIWmMqfAKgRA+KxSB4c5sD2vLrzR7I4cOB3lGxLJQRSDn4PKdUuXW6c+Z47fn7BwHyIInXw+XANVtGZvLTCEeE7deKNID3UuW9gVL7N6cqY8PbuFcamT6Q2bXl9KvqoW+wjF8yva8RRj95bLJJACDSD0vIAG8Fye0cmpRkSoXYvjQZnDQlgTYtr7dznoc+wkNEz6v+wa7f+wyWDdEGviEuiCTyDyG8YfqiuZ6T7O26Va3ANrUDAIDn02Q== stg',
]

file "/home/vreload/.ssh/authorized_keys" do
  owner "vreload"
  content keys.join("\n")
end

cookbook_file "/home/vreload/.ssh/.bash_login" do
  source "bash_login.txt"
  owner "vreload"
  mode 0744
end