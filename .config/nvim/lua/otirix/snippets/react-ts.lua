local ls = require("luasnip")

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local s = ls.snippet
local c = ls.choice_node
local d = ls.dynamic_node
local i = ls.insert_node
local t = ls.text_node
local sn = ls.snippet_node

ls.add_snippets("typescriptreact", {
  s(
    "ccc",
    fmt(
      [[
        "use client";

        import React from "react";

        interface {}Props {{
          
        }}

        export default function {}({{}}: {}Props) {{
          
          return (
            <>{}</>
          )
        }}
      ]],
      {
        i(1),
        rep(1),
        rep(1),
        i(0),
      }
    )
  ),

  s(
    "cnp",
    fmt(
      [[
      import React from "react";

      interface {}Props {{
        
      }}

      export default async function {}({{}}: {}Props) {{

        return (
        <div className="container">
          {}
        </div>
        )
      }}
    ]],
      {
        i(1),
        rep(1),
        rep(1),
        i(2),
      }
    )
  ),

  s(
    "tglc",
    fmt(
      [[
        const {} = useI18n();
        const {} = useCurrentLocale();
        {}
      ]],
      {
        i(1, "t"),
        i(2, "lang"),
        i(0),
      }
    )
  ),

  s(
    "tgls",
    fmt(
      [[
        const {} = await getI18n();
        const {} = getCurrentLocale();
        {}
      ]],
      {
        i(1, "t"),
        i(2, "lang"),
        i(0),
      }
    )
  ),
})
