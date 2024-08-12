isup() {
    local url="https://www.isitdownrightnow.com/check.php?domain=$domain"
    local up_pattern="statusup"
    local down_pattern="statusdown"

    local domain="$1"
    
    if [[ -z "$domain" ]]; then
        echo "Error: Please provide a domain name as an argument."
        return 1
    fi
  
    local up_status=$(curl -s "$url" | grep -o "$up_pattern")
    local down_status=$(curl -s "$url" | grep -o "$down_pattern")

    if [[ -n "$up_status" ]]; then
        echo "$domain is up"
        return 0
    elif [[ -n "$down_status" ]]; then
        echo "$domain is down"
        return 1
    else
        echo "Unable to determine the status of $domain"
        return 2
    fi
}
