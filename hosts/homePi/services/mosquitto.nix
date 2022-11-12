
{ ... }:


# https://hub.docker.com/_/eclipse-mosquitto
{
   config.virtualisation.oci-containers.containers = {
     mosquitto = {
       image = "eclipse-mosquitto:2";
      #  ports = ["127.0.0.1:3010:3010"];
      #  volumes = [
      #   #  "/root/hackagecompare/packageStatistics.json:/root/hackagecompare/packageStatistics.json"
      #  ];
      #  cmd = [
      #    "--base-url"
      #    "\"/hackagecompare\""
      #  ];
     };
   };
 }