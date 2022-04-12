DrawMolecule <- function(inputFormat, data, index, fileName){
  ChemmineR::draw_sdf(datFrame@SDF[[index]]@SDF[[1]], filename = fileName)
  print("Drawing molecule")
}
