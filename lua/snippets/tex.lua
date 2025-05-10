local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
	s(
	{trig = ";a", snippetType = "autosnippet"},
	{
		t("\\alpha"),
	}
	),
	s({trig=";b", snippetType="autosnippet"},
	{
		t("\\beta"),
	}
	),
	s({trig=";g", snippetType="autosnippet"},
	{
		t("\\gamma"),
	}
	),
	s({trig=";l", snippetType="autosnippet"},
	{
		t("\\lambda"),
	}
	),

	-- Combining text and insert nodes to create basic LaTeX commands
	s({trig="tt", dscr="Expands 'tt' into '\texttt{}'"},
	{
		t("\\texttt{"), -- remember: backslashes need to be escaped
		i(1),
		t("}"),
	}
	),
	-- Yes, these jumbles of text nodes and insert nodes get messy fast, and yes,
	-- there is a much better, human-readable solution: ls.fmt, described shortly.
	s({trig="ff", dscr="Expands 'ff' into '\frac{}{}'"},
	{
		t("\\frac{"),
		i(1),  -- insert node 1
		t("}{"),
		i(2),  -- insert node 2
		t("}")
	}
	),
	-- making an equationbrew deps --installed
	s({trig="eq", dscr="A LaTeX equation environment"},
	{
		t({ -- using a table of strings for multiline text
			"\\begin{equation}",
			"    "
		}),
		i(1),
		t({
			"",
			"\\end{equation}"
		}),
	}
	),
	s({trig="sec", desc="Building a section"},
	{
		t("\\section{"),
		i(1),
		t({"}",
		"	"}),
		i(2)
	}
	),
	s({trig="subsec", desc="Building a subsection"},
	{
		t("\\subsection{"),
		i(1),
		t({"}",
		"	"}),
		i(2)
	}),
	s({trig="env", desc="begin and end environment"},
	fmta(
		[[
		\begin{<>}
		<>
		\end{<>}
		]],
		{
			i(1),
			i(2),
			rep(1),  -- this node repeats insert node i(1)
		},
		{delimiters="<>"}
	))
}
