#!/usr/bin/env sh
# MIT License

# Copyright (c) 2024 Max Günther

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

cd static/

convert favicon.png -scale "196x196" android-chrome-196x196.png
convert favicon.png -scale "180x180" apple-touch-icon.png
convert favicon.png -scale "16x16" favicon-16x16.png
convert favicon.png -scale "32x32" favicon-32x32.png

convert favicon.png  -bordercolor white -border 0 \
          \( -clone 0 -resize 16x16 \) \
          \( -clone 0 -resize 32x32 \) \
          \( -clone 0 -resize 48x48 \) \
          \( -clone 0 -resize 64x64 \) \
          -delete 0 -alpha off -colors 256 favicon.ico
