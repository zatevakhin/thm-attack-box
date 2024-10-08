{pkgs, ...}: {
  # https://devenv.sh/basics/
  env.REMOTE_CONFIG = "tryhackme.ovpn";

  # https://devenv.sh/packages/
  packages = [pkgs.git];

  # https://devenv.sh/scripts/
  scripts.box-build.exec = ''
    docker compose build
  '';

  scripts.box-start.exec = ''
    docker compose up -d
  '';

  scripts.box-stop.exec = ''
    docker compose stop
  '';

  scripts.box-exec.exec = ''
    docker compose exec box bash
  '';

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # See full reference at https://devenv.sh/reference/options/
}
