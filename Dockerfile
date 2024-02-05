FROM python:3.9-bullseye

RUN apt update && apt install -y jq

RUN python3 -m pip install mkdocs mkdocs-material mkdocs-git-revision-date-localized-plugin mkdocs-swan mkdocs-helm mkdocs-licenseinfo mkdocs-multilang mkdocs-autozip

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
