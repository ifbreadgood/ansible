vim.cmd([[
    set ignorecase smartcase incsearch hlsearch number scrolloff=10 nowrap
    set noswapfile nobackup
    set shiftwidth=4 tabstop=4 expandtab autoindent smartindent
    set clipboard+=unnamedplus
    set list listchars=tab:>\ ,trail:.,lead:.

    nnoremap /= :so $MYVIMRC<cr>

    " <c-v> <key> to check key code
    inoremap { {}<Left>
    inoremap [ []<Left>
    inoremap ( ()<Left>
    inoremap " ""<Left>
    inoremap ' ''<Left>

    nnoremap ' ciW'<c-r>"'<esc>
    nnoremap " ciW"<c-r>""<esc>
    nnoremap ( ciW(<c-r>")<esc>
    nnoremap [ ciW[<c-r>"]<esc>
    nnoremap { ciW{<c-r>"}<esc>
    
    vnoremap /' c'<c-r>"'<esc>
    vnoremap /" c"<c-r>""<esc>
    vnoremap /( c(<c-r>")<esc>
    vnoremap /[ c[<c-r>"]<esc>
    vnoremap /{ c{<c-r>"}<esc>

    tnoremap <esc> <C-\><C-N>
    "tnoremap `` <C-\><C-N><C-w><C-w>

    inoremap <Esc> <Esc>:w<Enter>
    nnoremap <Esc> :nohlsearch<Enter>:w<Enter>

    nnoremap Q :bd!<Enter>
    nnoremap qq :q<Enter>
    nnoremap qd :q!<Enter>
    nnoremap zz ZZ
    tnoremap qq <C-\><C-N>:bd!<Enter>

    nnoremap zf <cmd>Format<cr><cmd>checktime<cr>

    nnoremap /. :Neotree float reveal<cr>

    nnoremap tff <cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git', '-g', '!.terraform', '-g', '!node_modules' }})<cr>
    nnoremap tfd <cmd>Telescope dir find_files<cr>
    nnoremap tb <cmd>Telescope buffers<cr>
    nnoremap tt <cmd>Telescope buffers<cr>term://
    nnoremap th <cmd>Telescope help_tags<cr>
    nnoremap tsa <cmd>Telescope live_grep<cr>
    nnoremap tsd <cmd>Telescope dir live_grep<cr>
    nnoremap tss <cmd>Telescope current_buffer_fuzzy_find<cr>
    nnoremap tgc <cmd>Telescope git_commits<cr>
    nnoremap tgf <cmd>Telescope git_bcommits<cr>
    nnoremap tgs <cmd>Telescope git_status<cr>
    nnoremap tgt <cmd>Telescope git_stash<cr>
    nnoremap tgb <cmd>Telescope git_branches<cr>
    nnoremap tk <cmd>Telescope keymaps<cr>
    nnoremap trr <cmd>Telescope resume<cr>
    nnoremap trg <cmd>Telescope registers<cr>

    vnoremap /g y<esc><cmd>Telescope live_grep<cr><c-r>"

    nnoremap ldd  <cmd>Telescope lsp_definitions<cr>
    nnoremap lsd  <cmd>Telescope lsp_document_symbols<cr>
    nnoremap lswd  <cmd>Telescope lsp_dynamic_workspace_symbols<cr>
    nnoremap lim  <cmd>Telescope lsp_implementations<cr>
    nnoremap lic  <cmd>Telescope lsp_incoming_calls<cr>
    nnoremap loc  <cmd>Telescope lsp_outgoing_calls<cr>
    nnoremap lrf  <cmd>Telescope lsp_references<cr><BS>
    nnoremap ltd  <cmd>Telescope lsp_type_definitions<cr>
    nnoremap lsw  <cmd>Telescope lsp_workspace_symbols<cr>
    nnoremap lc  <cmd>lua vim.lsp.buf.code_action()<cr>
    "nnoremap ld  <cmd>lua vim.lsp.buf.declaration()<cr>
    "nnoremap ldf <cmd>lua vim.lsp.buf.definition()<cr>
    "nnoremap lds <cmd>lua vim.lsp.buf.document_symbol()<cr>
    nnoremap le <cmd>lua vim.lsp.buf.execute_command()<cr>
    nnoremap lf <cmd>lua vim.lsp.buf.format({async = true})<cr>
    nnoremap lh <cmd>lua vim.lsp.buf.hover()<cr>
    "nnoremap li <cmd>lua vim.lsp.buf.implementation()<cr>
    "nnoremap li <cmd>lua vim.lsp.buf.incoming_calls()<cr>
    "nnoremap lo <cmd>lua vim.lsp.buf.outgoing_calls()<cr>
    nnoremap lrn <cmd>lua vim.lsp.buf.rename()<cr>
    "nnoremap lr <cmd>lua vim.lsp.buf.references()<cr>
    "nnoremap ls <cmd>lua vim.lsp.buf.signature_help()<cr>
    nnoremap lth <cmd>lua vim.lsp.buf.typehierarchy()<cr>
    "nnoremap ltd <cmd>lua vim.lsp.buf.type_definition()<cr>

    " start - window and tab resize/navigation
    set splitbelow splitright
    
    nnoremap `t <cmd>bo split term://%:p:h//zsh<cr><cmd>resize 30<cr>a

    inoremap <s-left> <cmd>tabprevious<cr>
    inoremap <s-right> <cmd>tabnext<cr>
    
    nnoremap <c-up> <c-w><up>
    nnoremap <c-down> <c-w><down>
    nnoremap <c-left> <c-w><left>
    nnoremap <c-right> <c-w><right>
    
    nnoremap <s-up> <cmd>tabnew<cr>
    nnoremap <s-down> <cmd>tabclose<cr>
    nnoremap <s-left> <cmd>tabprevious<cr>
    nnoremap <s-right> <cmd>tabnext<cr>

    nnoremap <m-up> <cmd>horizontal resize<cr>
    nnoremap <m-down> <cmd>horizontal resize 30<cr>
    nnoremap <m-left> <cmd>horizontal wincmd =<cr>
    nnoremap <m-right> <cmd>vertical resize<cr>
    
    nnoremap <m-s-up> <cmd>horizontal resize +5<cr>
    nnoremap <m-s-down> <cmd>horizontal resize -5<cr>
    nnoremap <m-s-left> <cmd>vertical resize -5<cr>
    nnoremap <m-s-right> <cmd>vertical resize +5<cr>
    
    nnoremap <c-s-right> <cmd>vsplit<cr>
    nnoremap <c-s-down> <cmd>split<cr>
    nnoremap <c-s-up> :tabe %<cr>

    tnoremap <c-up> <C-\><C-N><C-w><up>
    tnoremap <c-down> <c-w><down>
    tnoremap <c-left> <c-w><left>
    tnoremap <c-right> <c-w><right>
    
    tnoremap <s-up> <cmd>tabnew<cr>
    tnoremap <s-down> <cmd>tabclose<cr>
    tnoremap <s-left> <cmd>tabprevious<cr>
    tnoremap <s-right> <cmd>tabnext<cr>
    
    tnoremap <m-up> <cmd>horizontal resize<cr>
    tnoremap <m-down> <cmd>horizontal resize 30<cr>
    tnoremap <m-left> <cmd>horizontal wincmd =<cr>
    tnoremap <m-right> <cmd>vertical resize<cr>
    
    tnoremap <m-s-up> <cmd>horizontal resize +5<cr>
    tnoremap <m-s-down> <cmd>horizontal resize -5<cr>
    tnoremap <m-s-left> <cmd>vertical resize -5<cr>
    tnoremap <m-s-right> <cmd>vertical resize +5<cr>
    
    "tnoremap <c-s-right> echo test<cr>
    tnoremap <c-s-right> pwd \| wl-copy -pn<cr><c-\><c-n>:vsplit term://<c-r>*//zsh<cr>
    "<esc>:vsplit term://<c-r>"//zsh<cr>
    tnoremap <c-s-down> <cmd>split<cr>

    tnoremap <PageUp> <c-\><c-N><PageUp>
    " end - window and tab resize/navigation

    " home
    inoremap <Home> <esc>I
    " reload config
    nnoremap <F12>0 <cmd>so $MYVIMRC<cr><cmd>nohl<cr>
    " delete to start of line
    inoremap <M-Home> <c-u>
    " delete to end of line
    inoremap <M-End> <esc><right>C
    " select in word and paste
    nnoremap vv viwp
    " reload lsp
    nnoremap <F12><F12> <cmd>LspRestart<cr>
    inoremap <F12><F12> <cmd>LspRestart<cr>

    nnoremap /z :lua vim.diagnostic.config({virtual_text=not vim.diagnostic.config().virtual_text})<cr>

    " press <Tab> to expand or jump in a snippet. These can also be mapped separately
    " via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
    imap <silent><expr> ` luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '`'
    " -1 for jumping backwards.
    inoremap <silent> <F1> <cmd>lua require('luasnip').jump(1)<Cr>
    inoremap <silent> <F13> <cmd>lua require('luasnip').jump(-1)<Cr>

    snoremap <silent> <F1> <cmd>lua require('luasnip').jump(1)<Cr>
    snoremap <silent> <S-F1> <cmd>lua require('luasnip').jump(-1)<Cr>

    " For changing choices in choiceNodes (not strictly necessary for a basic setup).
    imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
    smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

    " WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
]])

require("config.lazy")
vim.cmd([[
    colorscheme tokyonight-night
    " trigger `autoread` when files changes on disk
    set autoread
    autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
    " notification after file change
    autocmd FileChangedShellPost * echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
]])

-- local api = vim.api
-- local fn = vim.fn
-- local autosave = api.nvim_create_augroup("autosave", { clear = true })
-- api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
--     pattern = "*",
--     group = autosave,
--     callback = function(ctx)
--         vim.cmd("silent w")
--         vim.notify("Saved at " .. os.date("%H:%M:%S"))
--     end,
-- })
--

