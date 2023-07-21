
"Supertype for all types that read the mathematical content of ancient Greek texts."
abstract type MathReaderType end

"""Read the mathematical content of a text
identified by `CtsUrn` by displatching
to method of `readmath` with the appropriate
reader type.
$(SIGNATURES)
"""
function readmath(u::CtsUrn; format = :luxor, config = Dict())
    @info("Reading $(u). Is archimedes? $(is_archimedes(u)). Is Euclid? $(is_euclid(u))")

    if is_euclid(u)
        @info("SO IT'S EUCLID.")
        readmath(u, Euclid; format = format, config = config)

    elseif is_archimedes(u)
        @info("SO IT'S ARCHIMEDES")
        readmath(u, Archimedes; format = format, config = config)

    else
        @warn("No `MathReaderType` available for URN `$(u)`.")
        nothing
    end
end
