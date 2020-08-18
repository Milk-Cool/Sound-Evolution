# Sound Evolution
# By Milk_Cool
effects = true
2.times do
  play 80, sustain: 0.2, release: 0
  sleep 2.5
  play 90
  sleep 0.5
  play 80, sustain: 0.2, release: 0
  sleep 3
end
in_thread do
  loop do
    if effects
      use_synth :prophet
      play 80, amp: 0.7
      sleep 0.25
      play 90, amp: 0.7
      sleep 0.25
      play 70, amp: 0.7
      sleep 0.25
      play 90, amp: 0.7
      sleep 0.25
    else
      break
    end
  end
end
2.times do
  play 80, sustain: 0.2, release: 0
  sample :drum_tom_mid_hard
  sleep 2.5
  play 90
  sample :drum_tom_mid_soft
  sleep 0.5
  play 80, sustain: 0.2, release: 0
  sample :drum_tom_mid_hard
  sleep 3
end
2.times do
  play 90, sustain: 0.2, release: 0
  sample :drum_tom_mid_hard
  sleep 2.5
  play 100
  sample :drum_tom_mid_soft
  sleep 0.5
  play 90, sustain: 0.2, release: 0
  sample :drum_tom_mid_hard
  sleep 3
end
in_thread do
  loop do
    if effects
      use_synth :bnoise
      play 60, sustain: 0.3, release: 0, amp: 0.5
      sleep 0.3
      play 65, sustain: 0.3, release: 0, amp: 0.5
      sleep 0.3
      play 70, sustain: 0.3, release: 0, amp: 0.5
      sleep 0.3
      play 75, sustain: 0.3, release: 0, amp: 0.5
      sleep 0.3
      play 80, sustain: 0.3, release: 0, amp: 0.5
      sleep 0.3
      play 85, sustain: 0.3, release: 0, amp: 0.5
      sleep 0.3
      play 90, sustain: 0.3, release: 0, amp: 0.5
      sleep 0.3
      play 95, sustain: 0.3, release: 0, amp: 0.5
      sleep 0.3
    else
      break
    end
  end
end
use_synth :tb303
2.times do
  play 70, sustain: 0.2, release: 0, amp: 1.75
  sample :drum_snare_hard, amp: 2.0
  sample :elec_blip
  sleep 2.5
  play 80, amp: 1.75
  sample :drum_snare_soft, amp: 2.0
  sleep 0.5
  play 70, sustain: 0.2, release: 0, amp: 1.75
  sample :drum_snare_soft, amp: 2.0
  sample :elec_blip
  sleep 3
end
2.times do
  play 80, sustain: 0.2, release: 0, amp: 1.75
  sample :drum_snare_hard, amp: 2.0
  sample :elec_blip
  sleep 2.5
  play 90, amp: 1.75
  sample :drum_snare_soft, amp: 2.0
  sleep 0.5
  play 80, sustain: 0.2, release: 0, amp: 1.75
  sample :drum_snare_soft, amp: 2.0
  sample :elec_blip
  sleep 3
end
effects = false
use_synth :noise
play 100, release: 9
use_synth :beep
sample :vinyl_rewind, amp: 3.0
2.times do
  with_fx :echo do
    play 80, sustain: 0.2, release: 0
    sleep 2.5
  end
  play 90
  sleep 0.5
  with_fx :echo do
    play 80, sustain: 0.2, release: 0
    sleep 3
  end
end
2.times do
  play 80, sustain: 0.2, release: 0
  sleep 2.5
  play 90
  sleep 0.5
  play 80, sustain: 0.2, release: 0
  sleep 3
end
sample :elec_blip
