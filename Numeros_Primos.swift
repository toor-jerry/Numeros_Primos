import Foundation

func numerosPrimosHastaN(numeroParam: Int) -> String {
  var numero = numeroParam
  var numeroPrimo = ""
  if numero == 0 || numero == 1 || numero == 4 {
    return ""
  }

  var esPrimo = true
  for num in 2..<numero {
    if numero % num == 0 {
      esPrimo = false
    }
  }
 
  
  if esPrimo {
    numeroPrimo += "- \(numero)"
  }
   numero -= 1
  
    numeroPrimo += numerosPrimosHastaN(numeroParam: numero)
    return numeroPrimo
  
}

print(numerosPrimosHastaN(numeroParam: 40))