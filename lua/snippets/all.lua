local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

-- return {
-- 	s(
-- 	{trig="{", desc="When curly braces are started, snippet will end them", snippetType="autosnippet"},
-- 	fmt(
-- 		"{<>}",
-- 		{ i(1) },
-- 		{delimiters="<>"}
-- 	)
-- 	),
-- 	s(
-- 	{trig="(", desc="When braces are started, snippet will end them", snippetType="autosnippet"},
-- 	fmt(
-- 		"(<>)",
-- 		{ i(1) },
-- 		{delimiters="<>"}
-- 	)
-- 	),
-- 	s(
-- 	{trig="[", desc="When square braces are started, snippet will end them", snippetType="autosnippet"},
-- 	fmt(
-- 		"[<>]",
-- 		{ i(1) },
-- 		{delimiters="<>"}
-- 	)
-- 	),
-- }
