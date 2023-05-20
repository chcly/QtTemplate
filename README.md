# QtTemplate

Defines a Qt library.

## Layout structure

Provides the same structure found in [ModuleTemplate](https://github.com/chcly/ModuleTemplate) with the addition of extra modules.

+ [Internal/Utils](https://github.com/chcly/Module.Utils) - Provides the project level dependency for Utils.
+ [Internal/View](https://github.com/chcly/Module.Views) - Provides the View dependency.

## Testing

The testing directory is setup to work with [googletest](https://github.com/google/googletest).

## Building

Building with CMake and Make

```sh
mkdir build
cd build
cmake ..
make
```

Optional defines.

| Option                      | Description                                          | Default |
|:----------------------------|:-----------------------------------------------------|:-------:|
| QtTemplate_BUILD_TEST         | Build the unit test program.                         |   ON    |
| QtTemplate_AUTO_RUN_TEST      | Automatically run the test program.                  |   OFF   |
| QtTemplate_USE_STATIC_RUNTIME | Build with the MultiThreaded(Debug) runtime library. |   ON    |
