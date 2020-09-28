# The length of a given string.
# Mode:: Python3
import os
def str_len (str):
  def succ (x):
    return(x+1)
  if not str:
    return(0)
  else:
    return(succ(str_len(str[1:])))

# Test Harness
os.system('clear')
print(str_len(input("string ? ")))
