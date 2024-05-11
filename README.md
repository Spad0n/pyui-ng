# pyui-ng

Python bindings for [libui-ng](https://github.com/libui-ng/libui-ng) using Cython.

## Usage

Example
```python
import pyui_ng as ui

def main():
	app = ui.UI()
	window = ui.Window('Window', 800, 600)
	window.set_margined(True)
	
	def close(win: ui.Window):
		app.stop()
		return 0
		
	window.on_close(close)
	window.show()
	app.main()
	
main()
```

Callback method can't accept anonymous function
```python
# this will not work
button = ui.Button("Click me")
button.on_click(lambda btn: print("hello"))

# this will work
button = ui.Button("Click me")
func = lambda btn: print("hello")
button.on_click(func)
```

## Runtime Requirements

Works only on Linux (for now)
* Unix: GTK+ 3.10 or newer

## Build Requirements

* [Meson](https://mesonbuild.com/) 0.58.0 or newer
* [Ninja](https://ninja-build.org/)
* [Cython](https://cython.org/)

## Build Instructions

Clone pyui-ng with libui-ng
```
$ git clone --recurse-submodules 'https://github.com/Spad0n/pyui-ng'
```

Run this command
```
$ # this command will automatically build libui-ng in a static library before compiling Cython code
$ python setup.py install
```
