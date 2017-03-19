= Instructions

Build/install https://github.com/google/flatbuffers and make sure flatc is in your path.
Open flatc-build-cmds.sh in a text editor to understand what it's doing.
Run flatc-build-cmds.sh.
Observe the results in the Matrix directory.
This will contain a .bin file with the binary flatbuffer itself as well as language-specific bindings for reading that data.

= Files
*member.fbs* Flatbuffer schema file. Describes the layout of the binary format.
*m.room.member_example.json* An example matrix event pulled from here:
https://github.com/matrix-org/matrix-doc/blob/master/event-schemas/examples/m.room.member%23invite_room_state
*flatc-build-cmds.sh* Script that uses flatc to generate a binary flatbuffer from the json file, and generate language bindings for reading
back the binary format.

= What does this mean?
If homeservers and clients were capable of supporting flatbuffers, clients and homeservers would not have to parse json anymore.
Performance wise, that's nice. Benchmarks here:
https://google.github.io/flatbuffers/flatbuffers_benchmarks.html
