struct Archimedes <: MathReaderType end

"""True if URN `u` refers to a work of Archimedes."""
function is_archimedes(u::CtsUrn)
    startswith(workcomponent(u), "tlg0522")
end

function readmath(u, Archimedes; format = :luxor, config = Dict())
    @info("Read Archimedes for $(u)")
    @debug("Its versionid is $(versionid(u))")
    if format != :luxor 
        msg = "`readmath`: Only `:luxor` format currently supported."
        throw(ArgumentError(msg))

    elseif workcomponent(u) != "tlg0522.tlg001.luxor"
        @warn("`readmath`: can only read mathematical contents of Archimedes' *Sphere and Cylinder* identified by URNs with work component `tlg0522.tlg001.luxor`.")
        nothing

    elseif u in keys(euclid_refs)
        # Could check here for alternatives to :luxor as format.
        f = archimedes_refs[u]
        @debug("Read Archimedes with ", f)
        f(config)

    else
        @warn("`readmath`: no function implemented for URN $(u).")
        nothing
    end
end
