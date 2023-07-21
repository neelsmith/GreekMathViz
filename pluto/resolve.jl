### A Pluto.jl notebook ###
# v0.19.26

using Markdown
using InteractiveUtils

# ╔═╡ 25d8f838-901f-48ef-bdc6-2bbf966cb696
# ╠═╡ show_logs = false
begin
	using Pkg
	#Pkg.activate(dirname(pwd()))
	Pkg.add(url = "https://github.com/neelsmith/GreekMathViz.jl")
	using GreekMathViz
	Pkg.add("CitableText")
	using CitableText
	Pkg.add("Luxor")
	using Luxor
	
	#Pkg.status
end

# ╔═╡ 0dfe37f0-27d2-11ee-240b-59f412271491
md"""## Euclid, *Geometry*, 1.1"""

# ╔═╡ 2cfcf08a-292f-4a0b-bc94-9ffafc965d07
u = CtsUrn("urn:cts:greekLit:tlg1799.tlg001.luxor:1.prop.1")

# ╔═╡ ea542cf1-0809-458e-a5e4-a2c906990ec4
@draw begin
	readmath(u)
end 200 200 

# ╔═╡ Cell order:
# ╠═25d8f838-901f-48ef-bdc6-2bbf966cb696
# ╟─0dfe37f0-27d2-11ee-240b-59f412271491
# ╠═2cfcf08a-292f-4a0b-bc94-9ffafc965d07
# ╠═ea542cf1-0809-458e-a5e4-a2c906990ec4
