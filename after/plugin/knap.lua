-- local gknapsettings = {
-- 	texoutputext = "pdf",
-- 	textopdf = "pdflatex -synctex=1 -halt-on-error -interaction=batchmode %docroot%",
-- 	textopdfviewerlaunch = "mupdf %outputfile%",
-- 	textopdfviewerrefresh = "kill -HUP %pid%",
-- }
--
local gknapsettings = {
	texoutputext = "pdf",
	textopdf = "pdflatex -synctex=1 -halt-on-error -interaction=batchmode %docroot%",
	textopdfviewerlaunch = "Sioyek-x86_64.AppImage --inverse-search 'nvim --headless -es --cmd \"lua require('\"'\"'knaphelper'\"'\"').relayjump('\"'\"'%servername%'\"'\"','\"'\"'%1'\"'\"',%2,0)\"' --new-window %outputfile%",
	textopdfviewerrefresh = "none",
	textopdfforwardjump = "Sioyek-x86_64.AppImage --inverse-search 'nvim --headless -es --cmd \"lua require('\"'\"'knaphelper'\"'\"').relayjump('\"'\"'%servername%'\"'\"','\"'\"'%1'\"'\"',%2,0)\"' --reuse-window --forward-search-file %srcfile% --forward-search-line %line% %outputfile%",
}
vim.g.knap_settings = gknapsettings
