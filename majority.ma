[top]
components : grid

[grid]
type : cell
dim : (40,40)
delay : transport
defaultDelayTime  : 0
border : wrapped
neighbors : grid(-1,-1) grid(-1,0) grid(-1,1)
neighbors : grid(0,-1)  grid(0,0)  grid(0,1)
neighbors : grid(1,-1)  grid(1,0)  grid(1,1)
initialvalue : 0
initialCellsValue : majority.val
localtransition : majority-rule

[majority-rule]


rule : {1} {uniform(100,200)} {(-1,-1) + (-1,0) + (-1,1) + (0,-1) + (0,0) + (0,1) + (1,-1) + (1,0) + (1,1) > 4 and uniform(0,1) < 0.7  }
rule : {0} {uniform(100,200)} {(-1,-1) + (-1,0) + (-1,1) + (0,-1) + (0,0) + (0,1) + (1,-1) + (1,0) + (1,1) <= 4 and uniform(0,1) < 0.7  }
rule : {(0,0)} {uniform(100,200)} { t }
