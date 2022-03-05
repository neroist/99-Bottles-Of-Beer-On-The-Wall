import strformat

proc bottlesOfBeerOnTheWall*(bottles: cint = 99): seq[cstring] {.exportc.} =
  for bottlesNum in countdown(bottles, 1):
    result.add cstring(&"{bottlesNum} bottles of beer on the wall, {bottlesNum} bottles of beer.\n\n")

    if bottlesNum == 1:
      result.add cstring("Take one down and pass it around, no more bottles of beer on the wall.\n")
      result.add cstring("No more bottles of beer on the wall, no more bottles of beer.")
      result.add cstring(&"Go to the store and buy some more, {bottles} bottles of beer on the wall.")
    else:
      result.add cstring(&"Take one down and pass it around, {bottlesNum} bottles of beer on the wall.\n")
