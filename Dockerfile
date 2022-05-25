FROM mhart/alpine-node:12.19.1

LABEL "com.github.actions.name"="Github ZIPPER"
LABEL "com.github.actions.description"="ZIP a folder or a file and push them into release."
LABEL "com.github.actions.icon"="message-square"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/TaiStudio/Zipper"
LABEL "homepage"="https://github.com/TaiStudio/Zipper"
LABEL "maintainer"="Tai Studio <tai.studio@outlook.fr>"
LABEL "version"="1.0.0"

ADD package.json package-lock.json /
RUN npm ci --production
ADD main.js /
RUN chmod +x /main.js

ENTRYPOINT ["node", "/main.js"]