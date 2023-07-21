

struct Euclid <: MathReaderType end


"""True if URN `u` refers to a work of Euclid."""
function is_euclid(u::CtsUrn)
    startswith(workcomponent(u), "tlg1799")
end