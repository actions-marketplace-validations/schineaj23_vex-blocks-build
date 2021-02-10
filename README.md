# Vex Build
Build a VEX C++ Pros V5/Cortex project in Github Actions! Fork of AritroSaha10/vex-build

## Inputs

### `path`
**Required** The path AND filename of project Default `MyProject.v5blocks`.

## Example usage
```
uses: schineaj23/vex-blocks-build@v1.0
with:
  path: projects/mainproject/MyProject.v5blocks
```



## Note
This fork suffers from a bug where if hot/cold linking is not disabled, you will get a multitude of `undefined reference to...` errors. This issue [has already been raised in the kernel repo](https://github.com/purduesigbots/pros/issues/176).
