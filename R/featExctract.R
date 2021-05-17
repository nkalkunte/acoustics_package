#' @title An acoustics data analysis function
#' @description This function allows you extract the entropy, fundamental frequency, and dominant frequency of acoustic waveforms.
#' @param wave waveform
#' @keywords acoustics
#' @export


featExtract = function(wave){
  signal = wave@left
  d = length(signal)
  df = seewave::dfreq(wave,wl = d, plot = FALSE)[2]
  ff = seewave::fund(wave,wl = d, threshold = 90,plot = FALSE)[,2]
  ff = ff[!is.na(ff)]
  h = seewave::H(wave)
  data = tibble::tibble('Total Entropy' = h, 'Dominant Frequency' = df,'Fundamental Frequency' = ff)
  return(data)
}



