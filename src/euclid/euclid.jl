struct Euclid <: MathReaderType end

"""True if URN `u` refers to a work of Euclid."""
function is_euclid(u::CtsUrn)
    startswith(workcomponent(u), "tlg1799")
end


function readmath(u, Euclid; format = :luxor)
    if format != :luxor 
        msg = "`readmath`: Only `:luxor` format currently supported."
        throw(ArgumentError(msg))
        
    else
        println("Hooray! We're reading Euclid!")
    end
end
