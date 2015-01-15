def proc_example(proc1, proc2)
  proc1.call("world")
  proc2.call
end

def lambda_example(lambda1, lambda2)
  lambda1.call("In lambda")
  lambda2.call
end

lambda1 = lambda { |x| puts "Lambda1 #{x}"}
lambda2 = lambda { |x| puts "Lambda2 #{x}"}

lambda_example(lambda1, lambda2)

proc1 = Proc.new { |x| puts "Proc1 #{x}"}
proc2 = Proc.new { |x| puts "Proc2 #{x}"}

proc_example(proc1, proc2)
