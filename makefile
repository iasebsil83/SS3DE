run: include_GL.h prog.swift dog.stl.swift SS3DE.swift again

	@#create temporary all-in-one swift source file
	@cat SS3DE.swift > run.swift
	@cat dog.stl.swift >> run.swift
	@cat prog.swift >> run.swift

	@#compilation
	@echo "compiling SS3DE.swift + dog.stl.swift + prog.swift"
	swiftc run.swift -import-objc-header include_GL.h -I/usr/include/GL -lGL -lm -lglut -lX11

	@#remove temporary files
	@rm -f run.swift again



#empty file created to relaunch compilation (even if no source files are modified)
again:
	@touch again
