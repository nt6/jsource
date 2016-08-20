NB. #.y -----------------------------------------------------------------

base1 =. 2&#.
f     =. *./@,@:(#. -: base1)

NB. Boolean
f ?2 3 4$2
f ?2

NB. integer
f _6000+?2 3 4$12345
f _500+?1000

NB. floating point
f o._5000+?2 3 4$10000
f o._500+?1000

NB. complex
f r.?2 3 4$1000
f r.?12345

0      -: #. ''
0      -: #. (,0)
1      -: #. (,1)
2      -: #. 1 0
4      -: #. 1 0 0
8      -: #. 1 0 0 0
13     -: #. 1 1 0 1
(2^69) -: #.70{.1
(i.4)  -: #.4 2$0 0 0 1 1 0 1 1

(_3r2+2x^n+1) = #. (n$1),1r2 [ n=: 30
(_3r2+2x^n+1) = #. (n$1),1r2 [ n=: 34
(_3r2+2x^n+1) = #. (n$1),1r2 [ n=: 62
(_3r2+2x^n+1) = #. (n$1),1r2 [ n=: 66

x -: #."0 x=: 10 ?@$ 2
x -: #."0 x=: 10 ?@$ 2e6
x -: #."0 x=: 10 ?@$ 200x
x -: #."0 x=: 100 * 10 ?@$ 0

'domain error' -: #. etx 'abc'
'domain error' -: #. etx ;:'Cogito, ergo sum.'


NB. x#.y ----------------------------------------------------------------

rank  =. #@$
ext   =. (#@] # [)`[ @. (*@rank@[)
base2 =. (] +/ .* */\.@}.@(,&1)@ext)"1
f     =. *./@,@:(#. -: base2)

NB. Boolean
(?2)       f ?2
(?2)       f ?10$2
(?2)       f ?7 2$2
(?2)       f ?4 3 5$2
(?10$2)    f ?2
(?10$2)    f ?10$2
(?10$2)    f ?2 10$2
(?10$2)    f ?1 2 3 10$2
(?10 4$2)  f ?2
(?10 4$2)  f ?4$2
(?10 4$2)  f ?10 2 4$2
(?10 4$2)  f ?10 1 1 4$2
(?2 3 4$2) f ?2
(?2 3 4$2) f ?4$2
(?2 3 4$2) f ?2 4$2
(?2 3 4$2) f ?2 3 0 4$2

NB. integer
(?200) f ?2
(?200) f ?10$200
(?200) f _900+?7 2$2000
(?200) f _900+?2 3 4$2000
(_100+?7$200) f ?2
(_100+?7$200) f _900+?7$2000
(_100+?7$200) f _900+?1 7$2100
(_100+?7$200) f _900+?3 2 7$2100
(_100+?2 7$200) f ?2
(_100+?2 7$200) f _900+?7$100
(_100+?2 7$200) f _900+?2 1 7$100
(_100+?2 7$200) f _900+?2 3 7$100
(_100+?3 2 7$200) f _1000+?2000
(_100+?2 3 7$200) f ?7$2
(_100+?3 2 7$200) f _900+?3 7$100
(_100+?3 2 7$200) f _900+?3 2 7$100

NB. floating point
(o.?200) f ?2
(o.?200) f o.?10$200
(o.?200) f ?7 2$2
(o.?200) f _900+?4 3 2$2000
(o._100+?7$200) f o.?2
(o._100+?7$200) f o._900+?7$2000
(o._100+?7$200) f _900+?1 7$2000
(o._100+?7$200) f _900+?2 3 7$2000
(o._100+?2 7$200) f ^?2
(o._100+?2 7$200) f ^_9+?7$20
(o._100+?2 7$200) f _900+?2 7$100
(o._100+?2 7$200) f o._900+?2 3 7$100
(o._100+?3 2 7$200) f o._1000+?2000
(o._100+?2 3 7$200) f ?7$2000
(o._100+?3 2 7$200) f o._900+?3 7$100
(o._100+?3 2 7$200) f _900+?3 2 7$100

NB. complex
(r.?200) f r.?2
(r.?200) f o.?10$200
(r.?200) f ?7 2$2
(r.?200) f j._900+?4 3 2$2000
(r._100+?7$200) f r.?2
(r._100+?7$200) f r._900+?7$2000
(r._100+?7$200) f _900+?1 7$2000
(r._100+?7$200) f _900+?1 1 1 7$2000
(r._100+?2 7$200) f r.?2
(r._100+?2 7$200) f r._9+?7$20
(r._100+?2 7$200) f _900+?2 1 7$100
(r._100+?2 7$200) f r._900+?2 3 1 7$100
(r._100+?3 2 7$200) f r._1000+?2000
(r._100+?2 3 7$200) f r.?7$2000
(r._100+?3 2 7$200) f o._900+?3 7$100
(r._100+?3 2 7$200) f _900+?3 2 7$100

465    -: 10 #. 4 6 5
465    -: 10 10 10 #. 4 6 5
444    -: 10 10 10 #. 4
12 345 -: 10#.i.2 3

(_3r2+2x^n+1) = 2 #. (n$1),1r2 [ n=: 30
(_3r2+2x^n+1) = 2 #. (n$1),1r2 [ n=: 34
(_3r2+2x^n+1) = 2 #. (n$1),1r2 [ n=: 62
(_3r2+2x^n+1) = 2 #. (n$1),1r2 [ n=: 66

'domain error' -: 'abc'   #. etx 1 2 3
'domain error' -: (u:'abc')   #. etx 1 2 3
'domain error' -: (10&u:'abc')   #. etx 1 2 3
'domain error' -: (1;2;3) #. etx 1 2 3
'domain error' -: 1 2 3   #. etx 'a'
'domain error' -: 1 2 3   #. etx u:'a'
'domain error' -: 1 2 3   #. etx 10&u:'a'
'domain error' -: 1 2 3   #. etx <5


4!:55 ;:'base1 base2 ext f n rank x'


