{
  pkgs,
}:
let
  fs = pkgs.lib.fileset;
in
(pkgs.overrideCC pkgs.llvmPackages_21.stdenv pkgs.llvmPackages_21.libcxxClang).mkDerivation {
  pname = "template";
  version = "0.0.0";

  src = fs.toSource {
    root = ../.;
    fileset = fs.unions [
      ../CMakeLists.txt
      ../src
    ];
  };

  nativeBuildInputs = with pkgs; [
    keepBuildTree

    cmake
    ninja
  ];

  buildInputs = with pkgs; [
    catch2_3
  ];
}
