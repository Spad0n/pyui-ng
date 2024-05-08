libui-ng:
	meson setup libui-ng/build libui-ng -Dtests=false -Dexamples=false --buildtype=release --default-library=static
	ninja -C libui-ng/build

clean:
	rm -rf build/
	rm -rf libui-ng/build
	rm -f *.so
	find src -name "*.c" -exec rm -f {} +

dev:
	python setup.py build_ext --inplace

#wheel:
#	python setup.py bdist_wheel
