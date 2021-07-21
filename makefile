#executable
run: lib/include_GL.h src/prog.swift stl/dog.stl.swift src/SS3DE.swift again

	@#create temporary all-in-one swift source file
	@cat src/SS3DE.swift   >  run.swift
	@cat stl/dog.stl.swift >> run.swift
	@cat src/prog.swift    >> run.swift

	@#compilation
	@echo "compiling src/SS3DE.swift + stl/dog.stl.swift + src/prog.swift"
	swiftc run.swift -import-objc-header lib/include_GL.h -I/usr/include/GL -lGL -lm -lglut -lX11

	@#remove temporary files
	@rm -f run.swift again



#empty file created to relaunch compilation (even if no source files are modified)
again:
	@touch again
