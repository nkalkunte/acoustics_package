## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(acoustics)
library(tuneR)
library(seewave)
library(soundgen)

## -----------------------------------------------------------------------------
# #Sample 1 
# aud1 <- "zebra finch songs/f_mal11_song_6.wav"
# dat1 <- readWave(aud1)
# #Sample 2
# aud2 <- "zebra finch songs/f_mal1_song_1.wav"
# dat2 <- readWave(aud2)
# #Sample 3
# aud3 <- "zebra finch songs/f_mal5_song_1.wav"
# dat3 <- readWave(aud3)
# #Sample 4
# aud4 <- "zebra finch songs/m_mal2_song_1.wav"
# dat4 <- readWave(aud4)
# #Sample 5
# aud5 <- "zebra finch songs/m_mal9_song_4.wav"
# dat5 <- readWave(aud5)

#Playing and shoring Data structure of sound files
#setWavPlayer('/usr/bin/afplay') #using the built in command line audio player
listen(dat1)
str(dat1)

## -----------------------------------------------------------------------------
sig1 <- dat1@left
# plot waveform
plot(sig1, type = 'l', xlab = 'Time', ylab = 'Amplitude')
title('Sample 1')

## -----------------------------------------------------------------------------
oscillo(dat1)
title('Sample 1')

## -----------------------------------------------------------------------------

#par(mfrow=c(3,2))
# plot waveform
plot(sig1, type = 'l', xlab = 'Time', ylab = 'Amplitude')
title('Sample 1')

sig2 <- dat2@left
# plot waveform
plot(sig2, type = 'l', xlab = 'Time', ylab = 'Amplitude')
title('Sample 2')

sig3 <- dat3@left
# plot waveform
plot(sig3, type = 'l', xlab = 'Time', ylab = 'Amplitude')
title('Sample 3')

sig4 <- dat4@left
# plot waveform
plot(sig4, type = 'l', xlab = 'Time', ylab = 'Amplitude')
title('Sample 4')

sig5 <- dat5@left
# plot waveform
plot(sig5, type = 'l', xlab = 'Time', ylab = 'Amplitude')
title('Sample 5')

