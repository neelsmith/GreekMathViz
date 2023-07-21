### A Pluto.jl notebook ###
# v0.19.26

using Markdown
using InteractiveUtils

# ╔═╡ 7dc55a3d-cbda-4831-8f1d-11866ff0098d
begin
	using Pkg
	Pkg.activate(pwd() |> dirname)
	Pkg.add("GreekMathViz")
	
	Pkg.add("PlutoUI")
	using PlutoUI
	Pkg.add("Luxor")
	using Luxor
end

# ╔═╡ 9425b773-83b7-467d-9ca3-761d1be8e6cc
pwd()

# ╔═╡ 7603385c-27cb-11ee-3848-239fce2ff034
md"""# Visualize Euclid, *Geometry*, book 1, definitions"""

# ╔═╡ Cell order:
# ╠═7dc55a3d-cbda-4831-8f1d-11866ff0098d
# ╠═9425b773-83b7-467d-9ca3-761d1be8e6cc
# ╟─7603385c-27cb-11ee-3848-239fce2ff034
