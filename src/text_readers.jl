
"Supertype for all types that read the mathematical content of ancient Greek texts."
abstract type MathReaderType end

"""Read the mathematical content of a text
identified by `CtsUrn` by displatching
to method of `readmath` with the appropriate
reader type.
$(SIGNATURES)
"""
function readmath(u::CtsUrn; format = :luxor)
    if is_euclid(u)
        readmath(u, Euclid; format = format)


    else
        @warn("No `MathReaderType` available for URN `$(u)`.")
        nothing
    end
end
