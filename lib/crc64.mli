(** A pure OCaml implementation of Redis' CRC64 *)

(** unsigned_string is used to convert the output of crc64 to a suitable hash string *)
val unsigned_string : Int64.t -> string

(** CRC64 returning an Int64.t *)
val crc64 : ?crc:Int64.t -> string -> Int64.t

(** CRC64 returning a hash string *)
val crc64_s : ?crc:Int64.t -> string -> string
