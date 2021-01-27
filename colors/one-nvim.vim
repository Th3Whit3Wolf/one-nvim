lua << EOF
vim.g.colors_name = "one-nvim"

if vim.o.background == "dark" then
     -- Dark Colors
     mono_1        = {"#abb2bf", 145, "mono_1"}
     mono_2        = {"#828997", 102, "mono_2"}
     mono_3        = {"#5c6370",  59, "mono_3"}
     mono_4        = {"#4b5263", 240, "mono_4"}
     hue_1         = {"#56b6c2", 247, "hue_1"}
     hue_2         = {"#61afef",  75, "hue_2"}
     hue_3         = {"#c678dd", 176, "hue_3"}
     hue_4         = {"#98c379", 114, "hue_4"}
     hue_5         = {"#e06c75", 168, "hue_5"}
     hue_5_2       = {"#be5046", 131, "hue_5_2"}
     hue_6         = {"#d19a66", 247, "hue_6"}
     hue_6_2       = {"#e5c07b", 180, "hue_6_2"}
     syntax_bg     = {"#282c34",  17, "syntax_bg"}
     syntax_gutter = {"#636d83", 243, "syntax_gutter"}
     syntax_cursor = {"#2c323c",  23, "syntax_cursor"}
     syntax_accent = {"#528bff",  69, "syntax_accent"}
     vertsplit     = {"#181a1f",  234, "vertsplit"}
     special_grey  = {"#3b4048",  238, "special_grey"}
     visual_grey   = {"#3e4452",  59, "visual_grey"}
     pmenu         = {"#333841",  59, "pmenu"}
     term_black    = {"#282c34",  17, "term_black"}
     term_blue     = {"#61afef",  75, "term_blue"}
     term_cyan     = {"#56b6c2", 247, "term_cyan"}
     term_white    = {"#dcdfe4", 188, "term_white"}
else
     -- Light Colors
     mono_1        = {"#494b53",  59, "mono_1"}
     mono_2        = {"#696c77",  60, "mono_2"}
     mono_3        = {"#a0a1a7", 247, "mono_3"}
     mono_4        = {"#c2c2c3", 251, "mono_4"}
     hue_1         = {"#0184bc",  31, "hue_1"}
     hue_2         = {"#4078f2",  69, "hue_2"}
     hue_3         = {"#a626a4", 243, "hue_3"}
     hue_4         = {"#50a14f", 242, "hue_4"}
     hue_5         = {"#e45649", 244, "hue_5"}
     hue_5_2       = {"#ca1243", 241, "hue_5_2"}
     hue_6         = {"#986801",  94, "hue_6"}
     hue_6_2       = {"#c18401", 242, "hue_6_2"}
     syntax_bg     = {"#fafafa", 231, "syntax_bg"}
     syntax_gutter = {"#9e9e9e", 247, "syntax_gutter"}
     syntax_cursor = {"#f0f0f0", 255, "syntax_cursor"}
     syntax_accent = {"#526fff", 246, "syntax_accent"}
     vertsplit     = {"#e7e9e1", 254, "vertsplit"}
     special_grey  = {"#d3d3d3", 252, "special_grey"}
     visual_grey   = {"#d0d0d0", 252, "visual_grey"}
     pmenu         = {"#dfdfdf", 254, "pmenu"}
     term_black    = {"#383a42", 237, "term_black"}
     term_blue     = {"#0184bc", 31, "term_blue"}
     term_cyan     = {"#0997b3", 243, "term_cyan"}
     term_white    = {"#fafafa", 231, "term_white"}
end

-- Common 
local pink = {"#d291e4", 251, "pink"}

--[[ DO NOT EDIT `BG` NOR `FG`. ]]
local BG = "bg"
local FG = "fg"
local NONE = {}

--[[ These are the ones you should edit. ]]
-- This is the only highlight that must be defined separately.
local highlight_group_normal = {fg = mono_1, bg = syntax_bg}

local normal = (function()
    if vim.g.one_nvim_transparent_bg ~= true then
        return  { fg = mono_1, bg = syntax_bg }
    else
        return  { fg = mono_1, bg = NONE }
    end
end)()

-- This is where the rest of your highlights should go.
local highlight_groups = {
    -------------------------------------------------------------
    -- Syntax Groups (descriptions and ordering from `:h w18`) --
    -------------------------------------------------------------
     Normal       = normal,
     bold         = { style = 'bold'},
     ColorColumn  = { fg = none, bg = syntax_cursor },
     Conceal      = { fg = mono_4, bg = syntax_bg },
     Cursor       = { fg = none, bg = syntax_accent },
     CursorIM     = { fg = none},
     CursorColumn = { fg = none, bg = syntax_cursor },
     CursorLine   = { fg = none, bg = syntax_cursor },
     Directory    = { fg = hue_2 },
     ErrorMsg     = { fg = hue_5, bg = syntax_bg },
     VertSplit    = { fg = vertsplit },
     Folded       = { fg = mono_3, bg = syntax_bg },
     FoldColumn   = { fg = mono_3, bg = syntax_cursor },
     IncSearch    = { fg = hue_6 },
     LineNr       = { fg = mono_4 },
     CursorLineNr = { fg = mono_1, bg = syntax_cursor },
     MatchParen   = { fg = hue_5, bg = syntax_cursor, style = 'underline,bold' },
     Italic       = { fg = none, style = 'italic'},
     ModeMsg      = { fg = mono_1 },
     MoreMsg      = { fg = mono_1 },
     NonText      = { fg = mono_3 },
     PMenu        = { fg = none, bg = pmenu },
     PMenuSel     = { fg = none, bg = mono_4 },
     PMenuSbar    = { fg = none, bg = syntax_bg },
     PMenuThumb   = { fg = none, bg = mono_1 },
     Question     = { fg = hue_2 },
     Search       = { fg = syntax_bg, bg = hue_6_2 },
     SpecialKey   = { fg = special_grey},
     Whitespace   = { fg = special_grey},
     StatusLine   = { fg = mono_1, bg = syntax_cursor },
     StatusLineNC = { fg = mono_3 },
     TabLine      = { fg = mono_2, bg = visual_grey},
     TabLineFill  = { fg = mono_3, bg = visual_grey},
     TabLineSel   = { fg = syntax_bg, bg = hue_2 },
     Title        = { fg = mono_1, bg = none, style = 'bold'},
     Visual       = { fg = none, bg = visual_grey},
     VisualNOS    = { fg = none, bg = visual_grey},
     WarningMsg   = { fg = hue_5 },
     TooLong      = { fg = hue_5 },
     WildMenu     = { fg = mono_1, bg = mono_3 },
     SignColumn   = { fg = none, bg = syntax_bg },
     Special      = { fg = hue_2 },

---------------------------
-- Vim Help Highlighting --
---------------------------

     helpCommand      = { fg = hue_6_2 },
     helpExample      = { fg = hue_6_2 },
     helpHeader       = { fg = mono_1, style = 'bold'},
     helpSectionDelim = { fg = mono_3,},

----------------------------------
-- Standard Syntax Highlighting --
----------------------------------

     Comment        = { fg = mono_3,  style = 'italic'},
     Constant       = { fg = hue_4, bg = none},
     String         = { fg = hue_4, bg = none},
     Character      = { fg = hue_4, bg = none},
     Number         = { fg = hue_6, bg = none},
     Boolean        = { fg = hue_6, bg = none},
     Float          = { fg = hue_6, bg = none},
     Identifier     = { fg = hue_5, bg = none},
     Function       = { fg = hue_2, bg = none},
     Statement      = { fg = hue_3, bg = none},
     Conditional    = { fg = hue_3, bg = none},
     Repeat         = { fg = hue_3, bg = none},
     Label          = { fg = hue_3, bg = none},
     Operator       = { fg = syntax_accent },
     Keyword        = { fg = hue_5, bg = none},
     Exception      = { fg = hue_3, bg = none},
     PreProc        = { fg = hue_6_2, bg = none},
     Include        = { fg = hue_2, bg = none},
     Define         = { fg = hue_3, bg = none},
     Macro          = { fg = hue_3, bg = none},
     PreCondit      = { fg = hue_6_2, bg = none},
     Type           = { fg = hue_6_2, bg = none},
     StorageClass   = { fg = hue_6_2, bg = none},
     Structure      = { fg = hue_6_2, bg = none},
     Typedef        = { fg = hue_6_2, bg = none},
     Special        = { fg = hue_2, bg = none},
     SpecialChar    = { fg = none},
     Tag            = { fg = none},
     Delimiter      = { fg = none},
     SpecialComment = { fg = none},
     Debug          = { fg = none},
     Underlined     = { fg = none, style = 'underline' },
     Ignore         = { fg = none},
     Error          = { fg = hue_5, bg = mono_3,   style = 'bold'},
     Todo           = { fg = hue_3, bg = mono_3 },

-----------------------
-- Diff Highlighting --
-----------------------

     DiffAdd     = { fg = hue_4, visual_grey},
     DiffChange  = { fg = hue_6, visual_grey},
     DiffDelete  = { fg = hue_5, visual_grey},
     DiffText    = { fg = hue_2, visual_grey},
     DiffAdded   = { fg = hue_4, visual_grey},
     DiffFile    = { fg = hue_5, visual_grey},
     DiffNewFile = { fg = hue_4, visual_grey},
     DiffLine    = { fg = hue_2, visual_grey},
     DiffRemoved = { fg = hue_5, visual_grey},

---------------------------
-- Filetype Highlighting --
---------------------------

-- Asciidoc
     asciidocListingBlock = { fg = mono_2 },

-- C/C++ highlighting
     cInclude           = { fg = hue_3 },
     cPreCondit         = { fg = hue_3 },
     cPreConditMatch    = { fg = hue_3 },
     cType              = { fg = hue_3 },
     cStorageClass      = { fg = hue_3 },
     cStructure         = { fg = hue_3 },
     cOperator          = { fg = hue_3 },
     cStatement         = { fg = hue_3 },
     cTODO              = { fg = hue_3 },
     cConstant          = { fg = hue_6 },
     cSpecial           = { fg = hue_1 },
     cSpecialCharacter  = { fg = hue_1 },
     cString            = { fg = hue_4 },
     cppType            = { fg = hue_3 },
     cppStorageClass    = { fg = hue_3 },
     cppStructure       = { fg = hue_3 },
     cppModifier        = { fg = hue_3 },
     cppOperator        = { fg = hue_3 },
     cppAccess          = { fg = hue_3 },
     cppStatement       = { fg = hue_3 },
     cppConstant        = { fg = hue_5 },
     cCppString         = { fg = hue_4 },

-- Cucumber
     cucumberGiven           = { fg = hue_2 },
     cucumberWhen            = { fg = hue_2 },
     cucumberWhenAnd         = { fg = hue_2 },
     cucumberThen            = { fg = hue_2 },
     cucumberThenAnd         = { fg = hue_2 },
     cucumberUnparsed        = { fg = hue_6 },
     cucumberFeature         = { fg = hue_5, style = 'bold'},
     cucumberBackground      = { fg = hue_3, style = 'bold'},
     cucumberScenario        = { fg = hue_3, style = 'bold'},
     cucumberScenarioOutline = { fg = hue_3, style = 'bold'},
     cucumberTags            = { fg = mono_3, style = 'bold'},
     cucumberDelimiter       = { fg = mono_3, style = 'bold'},

-- CSS/Sass
     cssAttrComma         = { fg = hue_3 },
     cssAttributeSelector = { fg = hue_4 },
     cssBraces            = { fg = mono_2 },
     cssClassName         = { fg = hue_6 },
     cssClassNameDot      = { fg = hue_6 },
     cssDefinition        = { fg = hue_3 },
     cssFontAttr          = { fg = hue_6 },
     cssFontDescriptor    = { fg = hue_3 },
     cssFunctionName      = { fg = hue_2 },
     cssIdentifier        = { fg = hue_2 },
     cssImportant         = { fg = hue_3 },
     cssInclude           = { fg = mono_1 },
     cssIncludeKeyword    = { fg = hue_3 },
     cssMediaType         = { fg = hue_6 },
     cssProp              = { fg = hue_1 },
     cssPseudoClassId     = { fg = hue_6 },
     cssSelectorOp        = { fg = hue_3 },
     cssSelectorOp2       = { fg = hue_3 },
     cssStringQ           = { fg = hue_4 },
     cssStringQQ          = { fg = hue_4 },
     cssTagName           = { fg = hue_5 },
     cssAttr              = { fg = hue_6 },
     sassAmpersand      = { fg = hue_5 },
     sassClass          = { fg = hue_6_2 },
     sassControl        = { fg = hue_3 },
     sassExtend         = { fg = hue_3 },
     sassFor            = { fg = mono_1 },
     sassProperty       = { fg = hue_1 },
     sassFunction       = { fg = hue_1 },
     sassId             = { fg = hue_2 },
     sassInclude        = { fg = hue_3 },
     sassMedia          = { fg = hue_3 },
     sassMediaOperators = { fg = mono_1 },
     sassMixin          = { fg = hue_3 },
     sassMixinName      = { fg = hue_2 },
     sassMixing         = { fg = hue_3 },
     scssSelectorName   = { fg = hue_6_2 },

-- Elixir highlighting

     elixirModuleDefine      = 'Define',
     elixirAlias             = { fg = hue_6_2 },
     elixirAtom              = { fg = hue_1 },
     elixirBlockDefinition   = { fg = hue_3 },
     elixirModuleDeclaration = { fg = hue_6 },
     elixirInclude           = { fg = hue_5 },
     elixirOperator          = { fg = hue_6 },

-- Git and git related plugins
     gitcommitComment        = { fg = mono_3 },
     gitcommitUnmerged       = { fg = hue_4 },
     gitcommitOnBranch       = { fg = none},
     gitcommitBranch         = { fg = hue_3 },
     gitcommitDiscardedType  = { fg = hue_5 },
     gitcommitSelectedType   = { fg = hue_4 },
     gitcommitHeader         = { fg = none},
     gitcommitUntrackedFile  = { fg = hue_1 },
     gitcommitDiscardedFile  = { fg = hue_5 },
     gitcommitSelectedFile   = { fg = hue_4 },
     gitcommitUnmergedFile   = { fg = hue_6_2 },
     gitcommitFile           = { fg = none},
     gitcommitNoBranch       = 'gitcommitBranch',
     gitcommitUntracked      = 'gitcommitComment',
     gitcommitDiscarded      = 'gitcommitComment',
     gitcommitDiscardedArrow = 'gitcommitDiscardedFile',
     gitcommitSelectedArrow  = 'gitcommitSelectedFile',
     gitcommitUnmergedArrow  = 'gitcommitUnmergedFile',
     SignifySignAdd          = { fg = hue_4 },
     SignifySignChange       = { fg = hue_6_2 },
     SignifySignDelete       = { fg = hue_5 },
     GitGutterAdd            = 'SignifySignAdd',
     GitGutterChange         = 'SignifySignChange',
     GitGutterDelete         = 'SignifySignDelete',
     diffAdded               = { fg = hue_4 },
     diffRemoved             = { fg = hue_5 },

-- Go
     goDeclaration  = { fg = hue_3 },
     goField        = { fg = hue_5 },
     goMethod       = { fg = hue_1 },
     goType         = { fg = hue_3 },
     goUnsignedInts = { fg = hue_1 },

-- Haskell highlighting
     haskellDeclKeyword    = { fg = hue_2 },
     haskellType           = { fg = hue_4 },
     haskellWhere          = { fg = hue_5 },
     haskellImportKeywords = { fg = hue_2 },
     haskellOperators      = { fg = hue_5 },
     haskellDelimiter      = { fg = hue_2 },
     haskellIdentifier     = { fg = hue_6 },
     haskellKeyword        = { fg = hue_5 },
     haskellNumber         = { fg = hue_1 },
     haskellString         = { fg = hue_1 },

-- HTML
     htmlArg            = { fg = hue_6 },
     htmlTagName        = { fg = hue_5 },
     htmlTagN           = { fg = hue_5 },
     htmlSpecialTagName = { fg = hue_5 },
     htmlTag            = { fg = mono_2 },
     htmlEndTag         = { fg = mono_2 },
     MatchTag           = { fg = hue_5, bg = syntax_cursor, style = 'bold,underline'},

-- JavaScript
     coffeeString           = { fg = hue_4 },
     javaScriptBraces       = { fg = mono_2 },
     javaScriptFunction     = { fg = hue_3 },
     javaScriptIdentifier   = { fg = hue_3 },
     javaScriptNull         = { fg = hue_6 },
     javaScriptNumber       = { fg = hue_6 },
     javaScriptRequire      = { fg = hue_1 },
     javaScriptReserved     = { fg = hue_3 },
-- httpc.//github.com/pangloss/vim-javascript
     jsArrowFunction        = { fg = hue_3 },
     jsBraces               = { fg = mono_2 },
     jsClassBraces          = { fg = mono_2 },
     jsClassKeywords        = { fg = hue_3 },
     jsDocParam             = { fg = hue_2 },
     jsDocTags              = { fg = hue_3 },
     jsFuncBraces           = { fg = mono_2 },
     jsFuncCall             = { fg = hue_2 },
     jsFuncParens           = { fg = mono_2 },
     jsFunction             = { fg = hue_3 },
     jsGlobalObjects        = { fg = hue_6_2 },
     jsModuleWords          = { fg = hue_3 },
     jsModules              = { fg = hue_3 },
     jsNoise                = { fg = mono_2 },
     jsNull                 = { fg = hue_6 },
     jsOperator             = { fg = hue_3 },
     jsParens               = { fg = mono_2 },
     jsStorageClass         = { fg = hue_3 },
     jsTemplateBraces       = { fg = hue_5_2 },
     jsTemplateVar          = { fg = hue_4 },
     jsThis                 = { fg = hue_5 },
     jsUndefined            = { fg = hue_6 },
     jsObjectValue          = { fg = hue_2 },
     jsObjectKey            = { fg = hue_1 },
     jsReturn               = { fg = hue_3 },
-- httpc.//github.com/othree/yajs.vim
     javascriptArrowFunc    = { fg = hue_3 },
     javascriptClassExtends = { fg = hue_3 },
     javascriptClassKeyword = { fg = hue_3 },
     javascriptDocNotation  = { fg = hue_3 },
     javascriptDocParamName = { fg = hue_2 },
     javascriptDocTags      = { fg = hue_3 },
     javascriptEndColons    = { fg = mono_3 },
     javascriptExport       = { fg = hue_3 },
     javascriptFuncArg      = { fg = mono_1 },
     javascriptFuncKeyword  = { fg = hue_3 },
     javascriptIdentifier   = { fg = hue_5 },
     javascriptImport       = { fg = hue_3 },
     javascriptObjectLabel  = { fg = mono_1 },
     javascriptOpSymbol     = { fg = hue_1 },
     javascriptOpSymbols    = { fg = hue_1 },
     javascriptPropertyName = { fg = hue_4 },
     javascriptTemplateSB   = { fg = hue_5_2 },
     javascriptVariable     = { fg = hue_3 },

-- JSON
     jsonCommentError       = { fg = mono_1 },
     jsonKeyword            = { fg = hue_5 },
     jsonQuote              = { fg = mono_3 },
     jsonTrailingCommaError = { fg = hue_5, style = 'reverse' },
     jsonMissingCommaError  = { fg = hue_5, style = 'reverse' },
     jsonNoQuotesError      = { fg = hue_5, style = 'reverse' },
     jsonNumError           = { fg = hue_5, style = 'reverse' },
     jsonString             = { fg = hue_4 },
     jsonBoolean            = { fg = hue_3 },
     jsonNumber             = { fg = hue_6 },
     jsonStringSQError      = { fg = hue_5, style = 'reverse' },
     jsonSemicolonError     = { fg = hue_5, style = 'reverse' },

-- Markdown
     markdownUrl              = { fg = mono_3, stlye = 'underline' },
     markdownBold             = { fg = hue_6, style = 'bold' },
     markdownItalic           = { fg = hue_6, style = 'italic' },
     markdownCode             = { fg = hue_4 },
     markdownCodeBlock        = { fg = hue_5 },
     markdownCodeDelimiter    = { fg = hue_4 },
     markdownHeadingDelimiter = { fg = hue_5_2 },
     markdownH1               = { fg = hue_5 },
     markdownH2               = { fg = hue_5 },
     markdownH3               = { fg = hue_5 },
     markdownH3               = { fg = hue_5 },
     markdownH4               = { fg = hue_5 },
     markdownH5               = { fg = hue_5 },
     markdownH6               = { fg = hue_5 },
     markdownListMarker       = { fg = hue_5 },

-- PHP
     phpClass        = { fg = hue_6_2 },
     phpFunction     = { fg = hue_2 },
     phpFunctions    = { fg = hue_2 },
     phpInclude      = { fg = hue_3 },
     phpKeyword      = { fg = hue_3 },
     phpParent       = { fg = mono_3 },
     phpType         = { fg = hue_3 },
     phpSuperGlobals = { fg = hue_5 },

-- Pug (Formerly Jade)
     pugAttributesDelimiter = { fg = hue_6 },
     pugClass               = { fg = hue_6 },
     pugDocType             = { fg = mono_3, style = 'italic'},
     pugTag                 = { fg = hue_5 },

-- PureScript
     purescriptKeyword     = { fg = hue_3 },
     purescriptModuleName  = { fg = mono_1 },
     purescriptIdentifier  = { fg = mono_1 },
     purescriptType        = { fg = hue_6_2 },
     purescriptTypeVar     = { fg = hue_5 },
     purescriptConstructor = { fg = hue_5 },
     purescriptOperator    = { fg = mono_1 },

-- Python
     pythonImport          = { fg = hue_3 },
     pythonBuiltin         = { fg = hue_1 },
     pythonStatement       = { fg = hue_3 },
     pythonParam           = { fg = hue_6 },
     pythonEscape          = { fg = hue_5 },
     pythonSelf            = { fg = mono_2, style = 'italic'},
     pythonClass           = { fg = hue_2 },
     pythonOperator        = { fg = hue_3 },
     pythonEscape          = { fg = hue_5 },
     pythonFunction        = { fg = hue_2 },
     pythonKeyword         = { fg = hue_2 },
     pythonModule          = { fg = hue_3 },
     pythonStringDelimiter = { fg = hue_4 },
     pythonSymbol          = { fg = hue_1 },

-- Ruby 
     rubyBlock                     = { fg = hue_3 },
     rubyBlockParameter            = { fg = hue_5 },
     rubyBlockParameterList        = { fg = hue_5 },
     rubyCapitalizedMethod         = { fg = hue_3 },
     rubyClass                     = { fg = hue_3 },
     rubyConstant                  = { fg = hue_6_2 },
     rubyControl                   = { fg = hue_3 },
     rubyDefine                    = { fg = hue_3 },
     rubyEscape                    = { fg = hue_5 },
     rubyFunction                  = { fg = hue_2 },
     rubyGlobalVariable            = { fg = hue_5 },
     rubyInclude                   = { fg = hue_2 },
     rubyIncluderubyGlobalVariable = { fg = hue_5 },
     rubyInstanceVariable          = { fg = hue_5 },
     rubyInterpolation             = { fg = hue_1 },
     rubyInterpolationDelimiter    = { fg = hue_5 },
     rubyKeyword                   = { fg = hue_2 },
     rubyModule                    = { fg = hue_3 },
     rubyPseudoVariable            = { fg = hue_5 },
     rubyRegexp                    = { fg = hue_1 },
     rubyRegexpDelimiter           = { fg = hue_1 },
     rubyStringDelimiter           = { fg = hue_4 },
     rubySymbol                    = { fg = hue_1 },

-- Spelling
     SpellBad   = { fg = mono_3, style = 'undercurl'},
     SpellLocal = { fg = mono_3, style = 'undercurl'},
     SpellCap   = { fg = mono_3, style = 'undercurl'},
     SpellRare  = { fg = mono_3, style = 'undercurl'},

-- Vim
     vimCommand      = { fg = hue_3 },
     vimCommentTitle = { fg = mono_3, style = 'bold'},
     vimFunction     = { fg = hue_1 },
     vimFuncName     = { fg = hue_3 },
     vimHighlight    = { fg = hue_2 },
     vimLineComment  = { fg = mono_3, style = 'italic'},
     vimParenSep     = { fg = mono_2 },
     vimSep          = { fg = mono_2 },
     vimUserFunc     = { fg = hue_1 },
     vimVar          = { fg = hue_5 },

-- XML
     xmlAttrib  = { fg = hue_6_2 },
     xmlEndTag  = { fg = hue_5 },
     xmlTag     = { fg = hue_5 },
     xmlTagName = { fg = hue_5 },

-- ZSH
     zshCommands    = { fg = mono_1 },
     zshDeref       = { fg = hue_5 },
     zshShortDeref  = { fg = hue_5 },
     zshFunction    = { fg = hue_1 },
     zshKeyword     = { fg = hue_3 },
     zshSubst       = { fg = hue_5 },
     zshSubstDelim  = { fg = mono_3 },
     zshTypes       = { fg = hue_3 },
     zshVariableDef = { fg = hue_6 },

-- Rust
     rustExternCrate          = { fg = hue_5,  style = 'bold'},
     rustIdentifier           = { fg = hue_2 },
     rustDeriveTrait          = { fg = hue_4 },
     SpecialComment           = { fg = mono_3 },
     rustCommentLine          = { fg = mono_3 },
     rustCommentLineDoc       = { fg = mono_3 },
     rustCommentLineDocError  = { fg = mono_3 },
     rustCommentBlock         = { fg = mono_3 },
     rustCommentBlockDoc      = { fg = mono_3 },
     rustCommentBlockDocError = { fg = mono_3 },

-- Man
     manTitle  = 'String',
     manFooter = { fg = mono_3 },

-------------------------
-- Plugin Highlighting --
-------------------------

-- ALE (Asynchronous Lint Engine)
     ALEWarningSign = { fg = hue_6_2 },
     ALEErrorSign   = { fg = hue_5 },

-- Neovim NERDTree Background fix
     NERDTreeFile = { fg = mono_1 },

-- Coc.nvim
CocFloating = { bg = none },
NormalFloating = { bg = none },

-----------------------------
--     LSP Highlighting    --
-----------------------------

LspDiagnosticsDefaultError           = { fg = hue_5 },
LspDiagnosticsDefaultWarning         = { fg = hue_6_2 },
LspDiagnosticsDefaultInformation     = { fg = hue_1 },
LspDiagnosticsDefaultHint            = { fg = hue_4 },
LspDiagnosticsVirtualTextError       = { fg = hue_5 },
LspDiagnosticsVirtualTextWarning     = { fg = hue_6_2 },
LspDiagnosticsVirtualTextInformation = { fg = hue_1 },
LspDiagnosticsVirtualTextHint        = { fg = hue_4 },
LspDiagnosticsUnderlineError         = { fg = hue_5 , style = 'underline' },
LspDiagnosticsUnderlineWarning       = { fg = hue_6_2 , style = 'underline' },
LspDiagnosticsUnderlineInformation   = { fg = hue_1 , style = 'underline' },
LspDiagnosticsUnderlineHint          = { fg = hue_4 , style = 'underline' },
LspDiagnosticsFloatingError          = { fg = hue_5 , bg = pmenu },
LspDiagnosticsFloatingWarning        = { fg = hue_6_2 , bg = pmenu },
LspDiagnosticsFloatingInformation    = { fg = hue_1 , bg = pmenu },
LspDiagnosticsFloatingHint           = { fg = hue_4 , bg = pmenu },
LspDiagnosticsSignError              = { fg = hue_5 },
LspDiagnosticsSignWarning            = { fg = hue_6_2 },
LspDiagnosticsSignInformation        = { fg = hue_1 },
LspDiagnosticsSignHint               = { fg = hue_4 },
LspReferenceText                     = { style = 'reverse' },
LspReferenceRead                     = { style = 'reverse' },
LspReferenceWrite                    = { fg = hue_6_2, style = 'reverse' },

-----------------------------
-- TreeSitter Highlighting --
-----------------------------

     TSAnnotation         = 'PreProc',
     TSAttribute          = 'PreProc',
     TSBoolean            = 'Boolean',
     TSCharacter          = 'Character',
     TSComment            = 'Comment',
     TSConditional        = 'Conditional',
     TSConstant           = 'Constant',
     TSConstBuiltin       = 'Special',
     TSConstMacro         = 'Define',
     TSConstructor        = 'Special',
     TSEmphasis           = 'Italic',
     TSError              = 'Error',
     TSException          = 'Exception',
     TSField              = 'Identifier',
     TSFloat              = 'Float',
     TSFunction           = 'Function',
     TSFuncBuiltin        = 'Special',
     TSFuncMacro          = 'Macro',
     TSInclude            = 'Include',
     TSKeyword            = 'Keyword',
     TSKeywordFunction    = 'Keyword',
     TSKeywordOperator    = 'Operator',
     TSLabel              = 'Label',
     TSLiteral            = 'String',
     TSMethod             = 'Function',
     TSNamespace          = 'Include',
     TSNumber             = 'Number',
     TSOperator           = 'Operator',
     TSParameter          = 'Identifier',
     TSParameterReference = 'Identifier',
     TSProperty           = 'Identifier',
     TSPunctBracket       = 'Delimiter',
     TSPunctDelimiter     = 'Delimiter',
     TSPunctSpecial       = 'Delimiter',
     TSRepeat             = 'Repeat',
     TSString             = 'String',
     TSStringEscape       = 'SpecialChar',
     TSStringRegex        = 'String',
     TSStrong             = 'bold',
     TSTag                = 'Label',
     TSTagDelimiter       = 'Label',
     -- TSText               = { fg = hue_6_2 },
     TSTitle              = 'Title',
     TSType               = 'Type',
     TSTypeBuiltin        = 'Type',
     TSUnderline          = 'Underlined',
     TSURI                = 'Underlined',
     TSVariableBuiltin    = 'Special',

}

local terminal_ansi_colors = {
    [0]  = term_black,
    [1]  = hue_5,
    [2]  = hue_4,
    [3]  = hue_6_2,
    [4]  = term_blue,
    [5]  = hue_3,
    [6]  = term_cyan,
    [7]  = term_white,
    [8]  = term_black,
    [9]  = hue_5,
    [10] = hue_4,
    [11] = hue_6_2,
    [12] = term_blue,
    [13] = hue_3,
    [14] = term_cyan,
    [15] = term_white
}


require(vim.g.colors_name)(highlight_group_normal, highlight_groups, terminal_ansi_colors)

-- Thanks to Iron-E (https://github.com/Iron-E) for the template (Iron-E/nvim-highlite).
-- vim: ft=lua

EOF
