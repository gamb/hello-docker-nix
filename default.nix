{ pkgs ? import <nixpkgs> { system = "x86_64-linux"; } }:

pkgs.dockerTools.buildImage {
  name = "hello-docker";
  tag = "latest";
  config = { Cmd = [ "${pkgs.hello}/bin/hello" ]; };
}
