(* This is free and unencumbered software released into the public domain. *)

open Prelude

class driver = object (self)
  inherit Device.driver as super
end

type t = driver