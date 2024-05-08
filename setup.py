# create wheel with setup.py: python setup.py bdist_wheel

from setuptools import setup, Extension
from Cython.Build import cythonize
from setuptools.command.build_ext import build_ext
import subprocess
import os


class CustomBuildExtCommand(build_ext):
    def run(self):
        if not os.path.exists("libui-ng/build"):
            subprocess.check_call(['meson', 'setup',
                                'libui-ng/build',
                                'libui-ng',
                                '-Dtests=false',
                                '-Dexamples=false',
                                '--buildtype=release',
                                '--default-library=static',
                                ])

            subprocess.check_call(['ninja', '-C', 'libui-ng/build'])

        super().run()


COMPILER_DIRECTIVES = {
    "language_level": 3,
    "wraparound": False,
}

extension = Extension(
    name = "pyui_ng",
    sources = ["src/pyui_ng.pyx"],
    libraries = ["gtk-3",
                 "gdk-3",
                 "z",
                 "pangocairo-1.0",
                 "pango-1.0",
                 "harfbuzz",
                 "atk-1.0",
                 "cairo-gobject",
                 "cairo",
                 "gdk_pixbuf-2.0",
                 "gio-2.0",
                 "gobject-2.0",
                 "glib-2.0"],
    extra_objects = ["libui-ng/build/meson-out/libui.a"],
    include_dirs = ["libui-ng"],
)

setup(
    name = "pyui-ng",
    cmdclass = {'build_ext': CustomBuildExtCommand},
    ext_modules = cythonize([extension], compiler_directives = COMPILER_DIRECTIVES),
)
