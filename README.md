# QtTemplate

Defines a Qt library.

## Layout structure

Provides the same structure found in [ModuleTemplate](https://github.com/chcly/ModuleTemplate) with the addition of extra modules.

+ [Internal/Utils](https://github.com/chcly/Module.Utils) - Provides the project level dependency for Utils.
+ [Internal/View](https://github.com/chcly/Module.View) - Provides the View dependency.

## Testing

The testing directory is setup to work with [googletest](https://github.com/google/googletest).

## Building

```sh
mkdir Build
cmake -S . -B Build -DQtTemplate_BUILD_TEST=ON -DQtTemplate_AUTO_RUN_TEST=ON
cmake --build Build
```

![A1](https://github.com/chcly/QtTemplate/actions/workflows/build-linux.yml/badge.svg)
![A2](https://github.com/chcly/QtTemplate/actions/workflows/build-windows.yml/badge.svg)


Optional defines.

| Option                        | Description                         | Default |
| :---------------------------- | :---------------------------------- | :-----: |
| QtTemplate_BUILD_TEST         | Build the unit test program.        |   OFF   |
| QtTemplate_AUTO_RUN_TEST      | Automatically run the test program. |   OFF   |
| QtTemplate_BUILD_SAMPLE       | Build the sample program.           |   ON    |
| QtTemplate_BUILD_VIEW_SAMPLES | Build all samples.                  |   OFF   |


### Dependencies

Local and external dependencies.

```mermaid
graph BT;
      QtTemplate-->Utils;
      QtTemplate-->View;
      QtTemplate-->Thread;

      Thread-->TBB;
      Thread-->Utils;

      View-->Qt;
      View-->Utils;

      Qt-->Core;
      Qt-->Gui;
      Qt-->Widgets;
```
