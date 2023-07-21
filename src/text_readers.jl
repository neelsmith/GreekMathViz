
"Trait for how to parse strings into blocks"
abstract type MathReaderType end


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