{ pkgs, ... }: {

  nix.trustedUsers = [ "root" "thomas" ];

  users.users = {

    thomas = {
      isNormalUser = true;
      home = "/home/thomas";
      extraGroups = [ "wheel" "docker" ];
      openssh.authorizedKeys.keys = [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDcVl0JGuR8XLj2xnGhHqazghmuQWAFdxVVMOyQdYqJSp1MSWnRwQ7uaLGfBnahBzxlw92VLrcuG20rfGHH8EFy/WU7kG0BFGbjLiPtUQdN+XHu9469haJjqCm6Uol0Dj/dnM7XbQlhRal/h2iYtxZIIbPr3quSrmvqu3fZxJ5LNtlqW9J6h8aC9g3iz6nzXzZVY5c7URZQxWnBUVx4z5haHqUkSwCmUyrE6cAsWSMH9gR/8zvYg4sbh5iRRUgt1EOlgANDaKabCd6Ee5g9v54E9svoQEzD03qKgbMIV2cFc88KgfKXgEyUK6A0tEwGb2KILdIJeU/Z4bSUPqdbnDdx thoma@DESK"
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCwAYNOEVX7DG9nVoe/eR2sLbOATShKFpcwEqvnYUvyqkOS8FvzRDFzc2jNsV+uJIjN2gLtw6vY6MBYHoMbpPRLKOVsKRt+2rXE6KaAXH5UXqF2Pwygt4kV8FfUwIN7m4N0wGEPlI5+TH/UDCsNtmvmSSc/XM7sprxiZ/v5RgvA8hZf6AjMYI4yzZAl/9frv8X3p4jrNkIEW6mzq1NiF93w8NLEKpuUButN/GKcS4avbAbt+l7LQfjrLgJ+zACFTm9HCIt0miy05+ovLAXuHuCgpG1ehrm7xlJOu6FhbRqcEziZ5lhp9ZP+IB8G9BZEjqU7HbZyMR3PCIex6VsRDjax thomas@horus"
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDikptkb6Dc+SHkfI0OS010RSXzQp0dtw9Hhv2wzoRSeMZL7NFxNNnTn7VuyW/hKGm6PFW3hXTvaSeeiCMWAYusor/NG4/UB8Iv3zuidproOaevDSSCCm5jccDGvSabfS3Zy/eoO7WAKMS3yFmYZooCKA+Wf3g5Cy6pGOUqKALmSfJ5J529Fb58JSohcJTcEHp8647h3VF7iSgyZ+p2M8e1KHnQkN9NXkZSX3G0pnwCxbGkBI8PVsmOHKbNKdnlEUh4Rdgyp9cwImBrM6mprWe8Km6CFz/+oc1fv5sApX1YOc03mfSvyRr4oC/0RH+nU0ZgV0dk/JYo4p+evzJXkkGDwafTfgz47b4ROoNYl3CHyim8q28qfapCMsXelb4WUog6U/38PO/sTUEP9W86OOiLiKmPxPV9MJMU57229zZ5vAdjvRIu9OdJyxOCAK31jJoCvyR2bFBl6BjDQWndBtMOote5x4XagFB7NRe8oBae+vxzy4yOvvDGZbfAMysYR/s= thomas@odin"
      ];
    };

  };
}
