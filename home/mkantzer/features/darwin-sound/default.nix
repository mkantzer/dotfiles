{ config, lib, ... }:

{
  home.file."Library/Application Scripts/net.mousedown.EventScripts/switchAudioPlugIn.sh".text = ''#!/bin/bash

sleep 1

docked_output_count=$(/opt/homebrew/bin/SwitchAudioSource -a -f json -t output | /Users/${config.home.username}/.nix-profile/bin/jq -r '.name' | grep 'CalDigit Thunderbolt 3 Audio\|Yeti Stereo Microphone' | wc -l | xargs)

if [[ ''${docked_output_count} -gt 0 ]]
then
  LOOPBACK_OUTPUT_ID=$(/opt/homebrew/bin/SwitchAudioSource -a -f json -t output | /Users/${config.home.username}/.nix-profile/bin/jq -sr '.[] | select(.name=="LoopBack") | .id')
  /opt/homebrew/bin/SwitchAudioSource -t output -i $LOOPBACK_OUTPUT_ID
  YETI_OUTPUT_ID=$(/opt/homebrew/bin/SwitchAudioSource -a -f json -t input | /Users/${config.home.username}/.nix-profile/bin/jq -sr '.[] | select(.name=="Yeti Stereo Microphone") | .id')
  /opt/homebrew/bin/SwitchAudioSource -t input -i $YETI_OUTPUT_ID
else
  echo "not switching"
fi
  '';
  home.file."Library/Application Scripts/net.mousedown.EventScripts/switchAudioPlugOut.sh".text = ''#!/bin/bash

sleep 1

docked_output_count=$(/opt/homebrew/bin/SwitchAudioSource -a -f json -t output | /Users/${config.home.username}/.nix-profile/bin/jq -r '.name' | grep 'CalDigit Thunderbolt 3 Audio\|Yeti Stereo Microphone' | wc -l | xargs)

if [[ ''${docked_output_count} -eq 0 ]]
then
  LAPTOP_OUTPUT_ID=$(/opt/homebrew/bin/SwitchAudioSource -a -f json -t output | /Users/${config.home.username}/.nix-profile/bin/jq -sr '.[] | select(.name=="MacBook Pro Speakers") | .id')
  /opt/homebrew/bin/SwitchAudioSource -t output -i $LAPTOP_OUTPUT_ID
  LAPTOP_INPUT_ID=$(/opt/homebrew/bin/SwitchAudioSource -a -f json -t input | /Users/${config.home.username}/.nix-profile/bin/jq -sr '.[] | select(.name=="MacBook Pro Microphone") | .id')
  /opt/homebrew/bin/SwitchAudioSource -t input -i $LAPTOP_INPUT_ID
else
  echo "not switching"
fi
  '';
}