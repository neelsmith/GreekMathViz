struct Euclid <: MathReaderType end

"""True if URN `u` refers to a work of Euclid."""
function is_euclid(u::CtsUrn)
    startswith(workcomponent(u), "tlg1799")
end


function readmath(u, Euclid; format = :luxor)
    @info("Read Euclid for $(u)")
    @info("Its versionid is $(versionid(u))")
    if format != :luxor 
        msg = "`readmath`: Only `:luxor` format currently supported."
        throw(ArgumentError(msg))

    elseif workcomponent(u) != "tlg1799.tlg001.luxor"
        @warn("`readmath`: can only read mathematical contents of Euclid's *Geometry* identified by URNs with work component `tlg1799.tlg001.luxor`.")
        nothing

    else
        println("Hooray! We're reading Euclid!")
    end
end
