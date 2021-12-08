/*
* The blowup program.
*
* @author Matthew Sanii
* @version 1.0
* @since 2021-12-08
*/

import Foundation

func blowUp(startString: String, times: Int, remain: Int) -> String {
  var endString = ""
  if remain == 0 {
    return endString
  }
  var copy = times
  let spot = String(Array(startString)[0])
  while copy != 0 {
    endString += spot
    copy -= 1
  }
  let copies = Int(spot) ?? 0
  endString += blowUp(startString: String(startString.suffix(remain - 1)),
  times: copies, remain: (remain - 1))
  return endString
}

print("Input the string you want blownup: ")
let userChoice = readLine()!
let inputSize = userChoice.count
if inputSize == 0 {
  print("Must input something.")
  print("\nDone")
  exit(0)
} else {
  let starter = 0
  let result = blowUp(startString: userChoice, times: starter, remain: inputSize)
  print("The blownup string is: ", result)
}
