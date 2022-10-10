{ config, pkgs, ... }:
{
  networking.firewall.allowedTCPPorts = [
  		8123
  ];

  virtualization.oci-containers.containers = {
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
        TZ = "America/Los_Angeles";
        PUID = "1000";
        GUID = "1000";
        PGID = "1000";
        PACKAGES = "iputils";
      };
    };
  };
}