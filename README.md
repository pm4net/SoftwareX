# SoftwareX

To import this project into CodeOcean, use the import function and provide the repository URL.

CodeOcean does not initialize submodules by itself, so you have to click on Capsule -> Clone via Git, initialize the submodules locally, and then upload the contents of /code manually to CodeOcean, as the files within submodules do not constitute a change to the submodule.

The provided Dockerfile and postInstall script also do not work straight away. To make it work, first reset the Dockerfile to default and then manually add the `wget` package to it via the Environment interface. This is still not enough, and you get a Permission denied error upon executing the postInstall script. Copy the contents of the script, delete the file in CodeOcean, and recreate it by clicking on `Edit Post-Install Script` in the Environment interface. Now paste the contents back in and everything should work now.

## Issues

Awaiting [#2448](https://github.com/dotnet/BenchmarkDotNet/issues/2448)