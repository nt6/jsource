NB. |/\ B ---------------------------------------------------------------

(0 0 1 1,: 0 1 0 0) -: |/\ 0 0 1 1 ,: 0 1 0 1
(20{.1) -: |/\20$1
(20$ 0) -: |/\20$0

res=. 4 : 'x|y'

(|/\"1 -: res/\"1) #:i.16
(|/\"1 -: res/\"1) #:i.32

(|/\   -: res/\  ) x=.1=?    13$4
(|/\   -: res/\  ) x=.1=?7   13$4
(|/\"1 -: res/\"1) x
(|/\   -: res/\  ) x=.1=?3 5 13$4
(|/\"1 -: res/\"1) x
(|/\"2 -: res/\"2) x

(|/\   -: res/\  ) x=.1=?    16$4
(|/\   -: res/\  ) x=.1=?8   16$4
(|/\"1 -: res/\"1) x
(|/\   -: res/\  ) x=.1=?2 4 16$4
(|/\"1 -: res/\"1) x
(|/\"2 -: res/\"2) x

(,'j')    -: |/\'j'
(,<'ace') -: |/\<'ace'

'domain error' -: |/\ etx 'deipnosophist'
'domain error' -: |/\ etx ;:'guard the glory that was Greece'
'domain error' -: |/\ etx u:'deipnosophist'
'domain error' -: |/\ etx ;:u:'guard the glory that was Greece'
'domain error' -: |/\ etx 10&u:'deipnosophist'
'domain error' -: |/\ etx ;:10&u:'guard the glory that was Greece'

4!:55 ;:'res x'


