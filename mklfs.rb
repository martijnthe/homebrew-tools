# MIT License
#
# Copyright (c) 2019 Martijn Thé
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

class Mklfs < Formula
  desc "mklfs – like GNU mtools' mcopy, but then for LittleFS"
  homepage "https://github.com/whitecatboard/Lua-RTOS-ESP32/blob/02ee91e2b2e13fa296f17e04f7c863f5a68604db/components/mklfs/src/mklfs.c"
  head "https://github.com/whitecatboard/Lua-RTOS-ESP32.git", :using => :git

  def install
    system "make", "-C", "components/mklfs/src", "mklfs"
    system "mkdir", "-p", "#{prefix}/bin/"
    system "cp", "components/mklfs/src/mklfs", "#{prefix}/bin/"
  end
end
