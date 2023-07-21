module GreekMathViz
using CitableText
using Luxor


export readmath

export Euclid, is_euclid
export Archimedes

include("text_readers.jl")

include("euclid/euclid.jl")

end # module GreekMathViz
