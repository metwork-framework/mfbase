# Nginx configuration

The MFBASE :index:`Nginx configuration` is stored in the `[nginx]` section of the `/home/mfbase/config/config.ini` file, e.g.

```cfg
{% raw %}
#################
##### NGINX #####
#################
[nginx]

# Set flag=0 here if you don't want to use blob storage
# in mfbase
flag=1

# nginx port for blob storage on mfbase (you can change this)
# (but you can't set a value < 1024)
port=18942

# maximum size (in MB) for one storage item
upload_max_body_size=100

# (if you change this, try to change storage_dir to be on
#  the same filesystem too)
clientbody_temp_path={{MFMODULE_RUNTIME_HOME}}/var/storage.tmp

# number of workers
workers={{MFHARDWARE_NUMBER_OF_CPU_CORES_MULTIPLIED_BY_2}}

# do you want access logging (yes: 1, no: 0)
logging=1

# Storage directory
# (if you change this, try to change clientbody_temp_path to be on
#  the same filesystem too)
storage_dir={{MFMODULE_RUNTIME_HOME}}/var/storage

# HTTP/WEBDAV methods allowed
storage_dav_methods=PUT DELETE MKCOL COPY MOVE

# The WebDAV specification only allows creating files in already existing
# directories. This directive allows creating all needed intermediate directories.
# (set to 0 if you don't want this)
storage_create_full_put_path=1

# Can be used to restrict some DELETE operations on the storage tree
# see http://nginx.org/en/docs/http/ngx_http_dav_module.html#min_delete_depth
storage_min_delete_depth=0

# If set to 1, the nginx autoindex feature will be on for storage dir
# (see http://nginx.org/en/docs/http/ngx_http_autoindex_module.html)
storage_autoindex=1

{% endraw %}
```


<!--
Intentional comment to prevent m2r from generating bad rst statements when the file ends with a block .. xxx ::
-->
