import os

print(os.system("ruby test.rb"))
print(os.system("python test.py"))

def new(type,name):
  if type == "website":
    os.mkdirs(name)
    os.chdir(name)
    return os.path.dirname(os.path.abspath(name))
  elif type == "page":
    return os.open(name + ".php","w+")
    
def getWebsite(name):
  return os.path.dirname(os.path.abspath(name))
    
class page:
  data = ""
  page = ""
  def __init__(name,website):
    data = os.chdir(website)
  
  def edit(page):
    page = os.open(page + ".php","w")
    return page
    
  def free(html):
    page.write(html)
    
  def write(text,t):
    if t == 0:
      page.write("<?php echo \"" . text . "\"; \n ?>")
    elif t == 1:
      return "echo \"" + text + "\""
    
  def __if(data,code,t):
    if t == 0:
      page.write("<?php \n if (" + data + ") { \n " + code + " \n } ?>")
    elif t == 1:
      page.write("if (" + data + ") { \n " + code + " \n }")
      
  def php(php):
    page.write("<?php\n" + php + "\n?>")
