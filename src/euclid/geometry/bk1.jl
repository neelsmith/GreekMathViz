#=
Definitions in book 1 of the *Elements*
=#

"""Euclid, *Geometry*, book 1, proposition 1.
Givens:

- `:ptA` is the center point of a circle
- `:ptB` the center point of a second circle

$(SIGNATURES)
"""
function euc_geo_1_1(configdict)
    ptA = haskey(configdict, :ptA) ? configdict[:ptA] : O
    ptB = haskey(configdict, :ptB) ? configdict[:ptB] : Point(100, 0)
    #color = haskey(configdict, :color) ? configdict[:color] : "blue"
    #sethue(color)
    r = 3
    circle(ptA.x, ptA.y, r, :fill )
    label("Α", :NW, ptA)

    circle(ptB.x, ptB.y, r, :fill )
    label("Β", :NE, ptB)

    line(ptA, ptB, :stroke)
    #circle(ptA, ptB, :stroke)

    r = distance(ptA, ptB)
    circle(ptA, r, :stroke)
    circle(ptB, r, :stroke)

    ipoints = intersectioncirclecircle(ptA, r, ptB, r)
    if ipoints[1]
        line(ptA, ipoints[2], :stroke)
        line(ptB, ipoints[2], :stroke)
        label("Γ(1)", :N, ipoints[2])

        line(ptA, ipoints[3], :stroke)
        line(ptB, ipoints[3], :stroke)
        label("Γ(2)", :S, ipoints[3])
    end
    


end