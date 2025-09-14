alias j+='cat {{ alias_directory }}/{{ item | basename() }}'

alias _g='docker container run --rm --name gradle-tmp --user `id -u`:`id -g` --workdir /tmp/x --volume $PWD:/tmp/x gradle:8-jdk21'

alias _gh='_g help --task'
alias _gi='_g gradle init --dsl kotlin --no-incubating --java-version 21 --test-framework junit-jupiter --type java-application --no-split-project --project-name'
alias _gg='_g ./gradlew'