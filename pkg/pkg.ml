#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"

open Topkg

let () =
    Pkg.describe "crc64" @@ fun c ->
        Ok [
            Pkg.mllib ~api:["Crc64"] "lib/crc64.mllib";
        ]
