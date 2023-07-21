### A Pluto.jl notebook ###
# v0.19.26

using Markdown
using InteractiveUtils

# ╔═╡ 25d8f838-901f-48ef-bdc6-2bbf966cb696
# ╠═╡ show_logs = false
begin
	using Pkg
	Pkg.add(url = "https://github.com/neelsmith/GreekMathViz.jl")
	using GreekMathViz
	Pkg.add("CitableText")
	using CitableText
	Pkg.add("Luxor")
	using Luxor

	Pkg.add("PlutoUI")
	using PlutoUI
	Pkg.add("PlutoTeachingTools")
	using PlutoTeachingTools
	#Pkg.status
end

# ╔═╡ 05c875b1-ae72-400a-8641-d9e25c0ac3d0
md"*Unhide the following cell to see the Julia environment.*"

# ╔═╡ 0dfe37f0-27d2-11ee-240b-59f412271491
md"""## Euclid, *Geometry*, 1.1"""

# ╔═╡ 2cfcf08a-292f-4a0b-bc94-9ffafc965d07
u = CtsUrn("urn:cts:greekLit:tlg1799.tlg001.luxor:1.prop.1")

# ╔═╡ ea542cf1-0809-458e-a5e4-a2c906990ec4
# ╠═╡ show_logs = false
@draw begin
	readmath(u)
end  500 300

# ╔═╡ Cell order:
# ╟─05c875b1-ae72-400a-8641-d9e25c0ac3d0
# ╟─25d8f838-901f-48ef-bdc6-2bbf966cb696
# ╟─0dfe37f0-27d2-11ee-240b-59f412271491
# ╠═2cfcf08a-292f-4a0b-bc94-9ffafc965d07
# ╠═ea542cf1-0809-458e-a5e4-a2c906990ec4
