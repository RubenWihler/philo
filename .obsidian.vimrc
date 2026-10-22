" Configuration Vim pour Obsidian inspirée de LazyVim
" Nécessite le plugin communautaire 'Vimrc Support'

" --- Options de base ---
set clipboard=unnamed " Utiliser le presse-papier système par défaut

" Désactiver l'espace pour l'utiliser comme touche <Leader>
unmap <Space>

" --- Déplacement amélioré (Better up/down) ---
" Naviguer à travers les lignes visuelles (word wrap) au lieu des lignes réelles
nmap j gj
nmap k gk
vmap j gj
vmap k gk

" --- Navigation entre les fenêtres/panneaux (<C-hjkl>) ---
" Obsidian gère les panneaux via ses propres commandes
exmap focusLeft obcommand editor:focus-left
exmap focusRight obcommand editor:focus-right
exmap focusTop obcommand editor:focus-top
exmap focusBottom obcommand editor:focus-bottom

nmap <C-h> :focusLeft<CR>
nmap <C-l> :focusRight<CR>
nmap <C-k> :focusTop<CR>
nmap <C-j> :focusBottom<CR>

" --- Splits (Division d'écran) (<leader>- / <leader>|) ---
exmap splitVertical obcommand workspace:split-vertical
exmap splitHorizontal obcommand workspace:split-horizontal

nmap <Space>| :splitVertical<CR>
nmap <Space>- :splitHorizontal<CR>

" --- Buffers / Onglets (Shift-h / Shift-l) ---
exmap tabPrev obcommand workspace:previous-tab
exmap tabNext obcommand workspace:next-tab
exmap tabClose obcommand workspace:close

nmap <S-h> :tabPrev<CR>
nmap <S-l> :tabNext<CR>
nmap [b :tabPrev<CR>
nmap ]b :tabNext<CR>
nmap <Space>bd :tabClose<CR>
nmap <Space>wd :tabClose<CR>

" --- Déplacer des lignes (Alt+j / Alt+k) ---
exmap moveLineUp obcommand editor:swap-line-up
exmap moveLineDown obcommand editor:swap-line-down

nmap <A-j> :moveLineDown<CR>
nmap <A-k> :moveLineUp<CR>
vmap <A-j> :moveLineDown<CR>
vmap <A-k> :moveLineUp<CR>

" --- Effacer la recherche avec Echap ---
nmap <Esc> :nohl<CR>

" --- Indentation visuelle continue (< / >) ---
vmap < <gv
vmap > >gv

" --- Commenter (gcc / gc) ---
exmap toggleComment obcommand editor:toggle-comments
nmap gcc :toggleComment<CR>
vmap gc :toggleComment<CR>

" --- Sauvegarde (<C-s>) ---
exmap saveFile obcommand editor:save-file
nmap <C-s> :saveFile<CR>
imap <C-s> <Esc>:saveFile<CR>

" --- Ajouts "Telescope-like" (Bonus LazyVim) ---
exmap quickSwitcher obcommand switcher:open
exmap commandPalette obcommand command-palette:open
exmap searchInFiles obcommand global-search:open

" <leader><space> pour chercher des fichiers (Quick Switcher)
nmap <Space><Space> :quickSwitcher<CR>
" <leader>sg pour chercher du texte dans la vault
nmap <Space>sg :searchInFiles<CR>
" <leader>p pour ouvrir la palette de commandes Obsidian
nmap <Space>p :commandPalette<CR>
