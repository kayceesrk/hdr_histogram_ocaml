type t
(** The type of histogram values *)

val init :
  lowest_discernible_value:int ->
  highest_trackable_value:int ->
  significant_figures:int ->
  t
(** Initialize a new histogram *)

val record_value : t -> int -> bool
(** Record a value in the histogram *)

val close : t -> unit
(** Close the histogram *)

val value_at_percentile : t -> float -> int
(** Get the value at the given percentile in the histogram *)

val min : t -> int
(** Get the minimum value in the histogram *)

val max : t -> int
(** Get the maximum value in the histogram *)

val mean : t -> float
(** Get the mean value in the histogram *)

val stddev : t -> float
(** Get the standard deviation of the values in the histogram *)

val memory_size : t -> int
(** Get the memory size of the histogram *)

type format_type = CLASSIC | CSV

val hdr_percentiles_print : t -> string -> int32 -> float -> format_type -> unit
(** Print out a percentile based histogram to the supplied file. *)
