struct Euclid <: MathReaderType end

"""True if URN `u` refers to a work of Euclid."""
function is_euclid(u::CtsUrn)
    startswith(workcomponent(u), "tlg1799")
end


function readmath(u, Euclid; format = :luxor, config = Dict())
    @info("Read Euclid for $(u)")
    @debug("Its versionid is $(versionid(u))")
    if format != :luxor 
        msg = "`readmath`: Only `:luxor` format currently supported."
        throw(ArgumentError(msg))

    elseif workcomponent(u) != "tlg1799.tlg001.luxor"
        @warn("`readmath`: can only read mathematical contents of Euclid's *Geometry* identified by URNs with work component `tlg1799.tlg001.luxor`.")
        nothing

    elseif u in keys(euclid_refs)
        # Could check here for alternatives to :luxor as format.
        f = euclid_refs[u]
        println("Read Euclid with ", f)
        f(config)

    else
        @warn("`readmath`: no function implemented for URN $(u).")
        nothing
    end
end
