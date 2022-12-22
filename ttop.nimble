# Package

version = "0.3.3"
author = "alexander"
description = "Monitoring tool with historical snapshots"
license = "MIT"
srcDir = "src"
bin = @["ttop"]


# Dependencies

requires "nim >= 1.6.4"

requires "illwill"
requires "zippy"
requires "asciigraph"
requires "cligen"

task static, "build static release":
  exec "nim -d:release --gcc.exe:musl-gcc --gcc.linkerexe:musl-gcc --passL:-static -o:ttop c src/ttop.nim"

task staticdebug, "build static debug":
  exec "nim -d:release --stackTrace:on --lineTrace:on --gcc.exe:musl-gcc --gcc.linkerexe:musl-gcc --passL:-static -o:ttop-debug c src/ttop.nim"

