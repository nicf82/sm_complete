function _sm_complete() {
    local cur prev opts
    SM_DIR="$WORKSPACE/service-manager-config" 
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    services=$(jq 'keys' $SM_DIR/services.json $SM_DIR/profiles.json | awk -F'"' '{print $2}')
    switches=$(sm --help | tr ' ' '\n' | grep -E '^-.+' | tr -d ',')
    opts="$services $switches"

    if [[ ${cur} == * ]] ; then
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    fi
}
complete -F _sm_complete sm
