from sys import *
from merror import error
from miniblast import new
import os

args = argv

if len(args) > 1:
  print(error(id=0))
  
if args[0] == "new" and args[1] == "website":
  new(args[1],args[2])
elif args[0] == "new" and args[1] == "page":
  new(args[1],args[2])
elif args[0] == "test" and args[1] == "python":
  os.system("python test.py")
elif args[0] == "test" and args[1] == "ruby":
  os.system("ruby test.rb")
elif args[0] == "help":
  print("[] = Required \n <> or {} = Optional \n Ignore --*")
  print("miniblast new website --n [STRING]")
  print("miniblast new page --n [STRING]")
  print("miniblast help --c <COMMAND>")
  print("miniblast test --s <PYTHON/RUBY>")
