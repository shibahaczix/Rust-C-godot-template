scons -c
scons godot-cpp -c
echo "cleaned scons"
rm -rf src/*.os src/*.dylib src/*.dll
rm -rf godot-cpp/gen/src/classes/*.o
rm -rf godot-cpp/gen/src/variant/*.o
rm -rf godot-cpp/src/classes/*.o
rm -rf godot-cpp/src/core/*.o
rm -rf godot-cpp/src/variant/*.o
rm -rf godot-cpp/src/*.o
echo "removed C++ libraries"
rm -rf rust/target
echo "removed target folder"
