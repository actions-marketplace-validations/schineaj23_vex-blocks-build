# Vex Build
Build a VEX C++ Pros V5/Cortex project in Github Actions! Fork of schineaj23/vex-build

## Inputs

### `path`
The path to the project makefile. Default `.`.

## Example usage
```
uses: AritroSaha10/vex-build@v1.1
with:
  path: projects/mainproject/
```



## Note
This fork suffers from a bug where if hot/cold linking is not disabled, you will get a multitude of `undefined reference to...` errors. This issue [has already been raised in the kernel repo](https://github.com/purduesigbots/pros/issues/176).
