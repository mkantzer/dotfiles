# shttps://www.reddit.com/r/NixOS/comments/to3iop/is_this_possible_on_nixos_home_assistant_and/i27o3m0/
{ config, pkgs, userParams, ... }:
let 
  containerDataPath = "/home/mk5r/DockerData";
  # network = "homeassistant_network";
  network = "host";
in
{
  systemd.services."init-docker-network-${network}" = {
    description = "Create docker network bridge: ${network}";
    after = [ "network.target" ];
    wantedBy = [ "multi-user.target" ];

    serviceConfig.Type = "oneshot";
    script = let dockercli = "${config.virtualisation.docker.package}/bin/docker";
             in ''
               # Put a true at the end to prevent getting non-zero return code, which will
               # crash the whole service.
               check=$(${dockercli} network ls | grep "${network}" || true)
               if [ -z "$check" ]; then
                 ${dockercli} network create ${network}
               else
                 echo "${network} already exists in docker"
               fi
             '';
  };

  networking.firewall.allowedTCPPorts = [ 
    # Home Assistant
    8123

    # zwavejs2mqtt
    3000
    8091

    # eclipse-mosquitto
    1883
    9001
  ];
  virtualisation.oci-containers.containers = {
    home-assistant = {
      image = "homeassistant/home-assistant:latest";
      dependsOn = [
        "zwavejs2mqtt"
        "eclipse-mosquitto"
      ];
      extraOptions = [ 
        "--pull=always"
        "--network=${network}" 
      ];
      ports = [
        "8123:8123"
      ];
      volumes = [
        "${containerDataPath}/home-assistant/config:/config"
        "${containerDataPath}/home-assistant/config/docker/run:/etc/services.d/home-assistant/run"
      ];
      environment = {
        TZ = "America/New_York";
        PUID = "1000";
        GUID = "1000";
        PGID = "1000";
        PACKAGES = "iputils";
      };
    };

    zwavejs2mqtt = {
      image = "zwavejs/zwavejs2mqtt:latest";
      dependsOn = [
        "eclipse-mosquitto"
      ];
      extraOptions = [ 
        "--pull=always"
        # "--device=/dev/ttyACM0:/dev/ttyACM0"
        "--device=/dev/ttyUSB0:/dev/ttyUSB0"
        "--network=${network}" 
      ];
      ports = [
        "3000:3000"
        "8091:8091"
      ];
      volumes = [
        "${containerDataPath}/home-assistant/config-zwavejs2mqtt:/usr/src/app/store"
      ];
    };

    eclipse-mosquitto = {
      image = "eclipse-mosquitto:latest";
      extraOptions = [ 
        "--pull=always"
        "--network=${network}" 
      ];
      ports = [
        "1883:1883"
        "9001:9001"
      ];
      volumes = [
        "${containerDataPath}/home-assistant/mqtt/config:/mosquitto/config"
        "${containerDataPath}/home-assistant/mqtt/data:/mosquitto/data"
        "${containerDataPath}/home-assistant/mqtt/logs:/mosquitto/logs"
      ];
      environment = {
        TZ = "America/New_York";
        PUID = "1000";
        PGID = "1000";
        UMASK_SET = "000";
      };
    };
  };
}