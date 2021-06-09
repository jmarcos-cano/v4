FROM node:14.16.0-alpine

# FROM gatsbyjs/gatsby:onbuild as build


# FROM gatsbyjs/gatsby
# COPY --from=build /app/public /pub
# PROD:
# npm run build
# npm run serve


RUN npm install -g gatsby-cli


COPY . .

RUN yarn

CMD ["npm", "start"]
