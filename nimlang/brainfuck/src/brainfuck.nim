# This is just an example to get you started. A typical binary package
# uses this file as the main entry point of the application.

import os # read cmd line args

when isMainModule:
  echo("Welcome to brainfuck!")

  let code = if paramCount() == 1: readFile paramStr(1)
    else: readAll stdin

  echo code
