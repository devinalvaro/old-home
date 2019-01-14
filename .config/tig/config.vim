# Vim-style keybindings for Tig
#
# To use these keybindings copy t
# it from your ~/.tigrc file:
#
#	$ cp contrib/vim.tigrc ~/.tigr
#	$ echo "source ~/.tigrc.vim" >

bind generic h scroll-left
bind generic j move-down
bind generic k move-up
bind generic l scroll-right

bind generic g  none
bind generic gg move-first-line
bind generic gj next
bind generic gk previous
bind generic gp parent
bind generic gP back
bind generic gn view-next

bind main    G move-last-line
bind generic G move-last-line

bind generic <C-f> move-page-down
bind generic <C-b> move-page-up

bind generic v  none
bind generic vm view-main
bind generic vd view-diff
bind generic vl view-log
bind generic vt view-tree
bind generic vb view-blob
bind generic vx view-blame
bind generic vr view-refs
bind generic vs view-status
bind generic vu view-stage
bind generic vy view-stash
bind generic vg view-grep
bind generic vp view-pager
bind generic vh view-help

bind generic o  none
bind generic oo :toggle sort-orde
bind generic os :toggle sort-fiel
bind generic on :toggle line-numb
bind generic od :toggle date
bind generic oa :toggle author
bind generic og :toggle line-grap
bind generic of :toggle file-name
bind generic op :toggle ignore-sp
bind generic oi :toggle id
bind generic ot :toggle commit-ti
bind generic oF :toggle file-filt
bind generic or :toggle commit-ti

bind generic @  none
bind generic @j :/^@@
bind generic @k :?^@@
bind generic @- :toggle diff-cont
bind generic @+ :toggle diff-cont

bind status  u  none
bind stage   u  none
bind generic uu status-update
bind generic ur status-revert
bind generic um status-merge
bind generic ul stage-update-line
bind generic us stage-split-chunk

bind generic c  none
bind generic cc !git commit
bind generic ca !?@git commit --a

bind generic K view-help
bind generic <C-w><C-w> view-next
