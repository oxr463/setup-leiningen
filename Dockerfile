FROM clojure:lein-alpine

RUN apk update && apk add npm

RUN set -ex; \
  echo "(defproject dummy \"\" :plugins [[lein-ancient \"0.6.15\"][lein-npm \"0.6.2\"][lein-cljsbuild \"1.1.7\"]] :dependencies [[org.clojure/clojure \"${CLOJURE_VER%.*}\"][org.clojure/clojurescript \"${CLOJURESCRIPT_VER}\"]])" > project.clj; \
  lein ancient upgrade :check-clojure; \
  lein do deps, npm install; \
  rm project.clj
  
