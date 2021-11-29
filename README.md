# Vuepress 1.x Compiler

This is a github action to help you compile vuepress project.

### Usage

Create a yaml file in the .github/workflows directory of your repository.

~~~yml
name: Build and Deploy
on: [push]
jobs:
  build-and-deploy:
    runs-on: ubuntu-latest
    steps:
    - name: Checkout
      uses: actions/checkout@v2

    - name: vuepress_compile
      uses: wjftu/vuepress_1.x_compiler@master
      env:
        BUILD_SCRIPT: yarn && yarn docs:build
        SOURCE_DIR: /
~~~


### Parameters

|Parameter|Description|Type|Required|Default|
|-|-|-|-|-|
|BUILD_SCRIPT|The script to build|env|No|yarn && yarn docs:build|
|SOURCE_DIR|The directory which the package.json file in. The first slash is optional.<br/>If more than 1 source directory, split by blank. <br/>e.g.: dir1 dir2/dir3 /dir4|env|No|/|

