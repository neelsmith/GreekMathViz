using GreekMathViz
using Luxor
using CitableText

u = CtsUrn("urn:cts:greekLit:tlg1799.tlg001.luxor:1.def.1")

@draw begin
    readmath(u)
end