# Setup the Miniblast installer.

from distutils.core import setup

setup(
  name="miniblast",
  version="1.0.0",
  description="The Python framework that gives you a blast.",
  author="Zack Pace",
  email="zack@zacklearns.ca",
  url="https://github.com/miniblast",
  scripts=["bin/miniblast.py","bin/miniblast.rb"],
  classifiers=[
    "Development Status :: 1 - Pre-alpha",
    "Enviroment :: Web Enviroment",
    "Enviroment :: Console",
    "License :: OSI Approved :: MIT License",
    "Operating System :: OS Independant",
    "Natural Langauge :: English",
    "Programming Language :: Python",
    "Programming Language :: Ruby",
    "Topic :: Internet",
  ]
)
