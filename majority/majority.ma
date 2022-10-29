[top]
components : grid

[grid]
type : cell
dim : (5,5)
delay : inertial
defaultDelayTime  : 0
border : nowrapped
neighbors : grid(-1,-1) grid(-1,0) grid(-1,1)
neighbors : grid(0,-1)  grid(0,0)  grid(0,1)
neighbors : grid(1,-1)  grid(1,0)  grid(1,1)
initialvalue : 3
initialCellsValue : majority.val
localtransition : majority-rule

[majority-rule]
rule : 1 100 {(-1,-1) + (-1,0) + (-1,1) + (0,-1) + (0,0) + (0,1) + (1,-1) + (1,0) + (1,1) > 4 }
rule : 0 100 { t }
