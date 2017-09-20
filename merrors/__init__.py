def error(id=0):
  if id == 0:
    return "Internal Error :: Console :: Invalid Syntax"
  elif id == 1:
    return "Internal Error :: Console :: Invalid Argument"
  elif id == 2:
    return "Internal Error :: Console :: Argument Not Found"
  elif id == 3:
    return "Internal Error :: Console :: Unknown Command"
  elif id == 4:
    return "Internal Error :: Console :: Unknown Error"
  elif id == 5:
    return "Internal Error :: Web :: Unable to Create Website"
  elif id == 6:
    return "Internal Error :: Web :: Unable to Create Page"
  elif id == 7:
    return "Internal Error :: Web :: Unknown Error"
