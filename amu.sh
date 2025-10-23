docker run -it -v $PWD:/riscos-source -v $PWD/../build:/riscos-build --workdir /riscos-source docker-registry.gerph.org/gerph/riscos-build riscos-amu BUILD32=1
docker run -it -v $PWD:/riscos-source -v $PWD/../build:/riscos-build --workdir /riscos-source docker-registry.gerph.org/gerph/riscos-build riscos-amu BUILD32=1 export
