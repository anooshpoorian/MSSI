species_park_occur <- function(city,species){

  library(dodgr)
  library(osmdata)
  library(spocc)

  #dat_sc <- dodgr_streetnet_sc ("montreal canada")
  #graph <- weight_streetnet (dat_sc, wt_profile = "foot")
  #names(graph)[1:7] <- c("from_id", "to_id", "edge_id", "from_lon", "from_lat", "to_lon", "to_lat")
  #head(graph)

  my_bbox <- osmdata::getbb(city)
  parks <- opq(bbox = my_bbox, timeout = 900) %>%
    add_osm_feature(key = 'leisure', value = 'park')  %>%
    osmdata_sp() #This specifies downloading an SC file


  one <- occ(query = species, from = 'gbif', limit = 6000, has_coords = TRUE, geometry = my_bbox)
  oner <- occ2df(one)
  oner

  sp::plot(parks$osm_polygons, border="green")
  points(oner$longitude, oner$latitude, pch=19, cex=0.5, col="cornflowerblue")
}
