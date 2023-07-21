
"Supertype for all types that read the mathematical content of ancient Greek texts."
abstract type MathReaderType end

"""Read the mathematical content of a text
identified by `CtsUrn` by displatching
to method of `readmath` with the appropriate
reader type.
$(SIGNATURES)
"""
function readmath(u::CtsUrn)
    if is_euclid(u)
        readmath(u, Euclid)


    else
        @warn("No `MathReaderType` available for URN `$(u)`.")
        nothing
    end
end

function readmath(u::CtsUrn, T::Type{<:MathReaderType})
    @warn("`readmath` function not implemented for type `$(T)`.")
    nothing
end