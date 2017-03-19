#!/bin/sh

# To build the flatbuffer binary
flatc -o Matrix -c -b member.fbs m.room.member_example.json
# see member_generated.h for the code that gets generated that's capable of reading the binary message

# The .h is for C. To generate other language bindings:
flatc -o Matrix --js -c -b member.fbs m.room.member_example.json
flatc -o Matrix --go -c -b member.fbs m.room.member_example.json
flatc -o Matrix --python -c -b member.fbs m.room.member_example.json
flatc -o Matrix --csharp -c -b member.fbs m.room.member_example.json
# etc...

# To parse json back out from the flatbuffer (just for debugging, kind of defeats the purpose to use this in practice):
flatc -o Matrix --strict-json --raw-binary -t member.fbs -- Matrix/m.room.member_example.bin

# ... Now examine the contents of the Matrix directory to see the language-specific bindings for the data.
