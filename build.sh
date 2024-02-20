read -p "Platform: (linux macos windows): " platform
if [ -z $platform ]; then
	echo "you did not select a platform"
else
	echo ">>>default is true<<<"
	read -p "LLVM compiler? (true false): " llvm
	if [ -z $llvm ]; then
		llvm="true"
	fi
	godot4 --dump-extension-api
	cd godot-cpp
	scons use_llvm=$llvm platform=$platform
	cd ..
	scons use_llvm=$llvm platform=$platform
	read -p "do you want to continue comiling? (Yes yes Y y for Yes and empty for no): " comp
	if [ $comp == "Yes" ] || [ $comp == "yes" ] || [ $comp == "y" ] || [ $comp == "Y" ]; then
		cargo build --manifest-path=rust/Cargo.toml
	fi
fi
