import collections
import os
from mfplugin.configuration import Configuration
from mfplugin.utils import NON_REQUIRED_BOOLEAN_DEFAULT_TRUE, \
    NON_REQUIRED_STRING, null_to_empty

MFBASE_NGINX_STORAGE_DAV_METHODS = \
    os.environ.get('MFBASE_NGINX_STORAGE_DAV_METHODS', '')


def coerce_storage_auth_passwd_filename(value):
    if value != "" and not value.startswith('/'):
        path = os.path.join(os.environ["MFBASE_CURRENT_PLUGIN_DIR"], value)
        return path
    return value


def storage_auth_passwd_filename_check(field, value, error):
    if value != "":
        if not os.path.isfile(value):
            error(field, "must exist (%s is not a file)" % value)


def coerce_storage_forbidden_dav_methods(value):
    if value != "":
        value = value.replace(" ", ",")
        tmp = [x.strip().upper() for x in value.split(',')]
        return ",".join(tmp)
    return value


MFBASE_SCHEMA_OVERRIDE = {
    "general": {
        "schema": {
            "_use_postgresql": NON_REQUIRED_BOOLEAN_DEFAULT_TRUE,
            "_use_storage": NON_REQUIRED_BOOLEAN_DEFAULT_TRUE,
            "storage_access_allows": {
                **NON_REQUIRED_STRING,
                "default": "all",
            },
            "storage_auth_passwd_filename": {
                **NON_REQUIRED_STRING,
                "default": "",
                "coerce": (null_to_empty, coerce_storage_auth_passwd_filename),
                "check_with": storage_auth_passwd_filename_check
            },
            "storage_satisfy": {
                **NON_REQUIRED_STRING,
                "default": "any",
                "allowed": ["any", "all"]
            },
            "storage_forbidden_dav_methods": {
                **NON_REQUIRED_STRING,
                "default": "",
                "coerce": (null_to_empty, coerce_storage_forbidden_dav_methods)
            },
            "storage_dav_access": {
                **NON_REQUIRED_STRING,
                "default": ""
            },
            "storage_autoindex_format": {
                **NON_REQUIRED_STRING,
                "default": "html",
            },
        }
    }
}


# See https://gist.github.com/angstwad/bf22d1822c38a92ec0a9
def dict_merge(dct, merge_dct):
    for k, v in merge_dct.items():
        if (k in dct and isinstance(dct[k], dict)
                and isinstance(merge_dct[k], collections.abc.Mapping)):
            dict_merge(dct[k], merge_dct[k])
        else:
            dct[k] = merge_dct[k]


class MfbaseConfiguration(Configuration):

    def get_schema(self):
        schema = Configuration.get_schema(self)
        dict_merge(schema, MFBASE_SCHEMA_OVERRIDE)
        return schema

    def after_load(self):
        tmp = MFBASE_NGINX_STORAGE_DAV_METHODS.replace(' ', ',')
        dav_methods = [x.strip().upper() for x in tmp.split(',')]
        fmethods = self.storage_forbidden_dav_methods
        if fmethods != "":
            tmp2 = fmethods.split(',')
            for t in tmp2:
                if t in dav_methods:
                    dav_methods.remove(t)
        self._doc["general"]["_storage_dav_methods"] = " ".join(dav_methods)

    @property
    def use_postgresql(self):
        self.load()
        return self._doc["general"]["_use_postgresql"]

    @property
    def storage_dav_methods(self):
        self.load()
        return self._doc["general"]["_storage_dav_methods"]

    @property
    def storage_dav_access(self):
        self.load()
        return self._doc["general"]["storage_dav_access"]

    @property
    def use_storage(self):
        self.load()
        return self._doc["general"]["_use_storage"]

    @property
    def storage_access_allows(self):
        self.load()
        return self._doc["general"]["storage_access_allows"]

    @property
    def storage_auth_passwd_filename(self):
        self.load()
        return self._doc["general"]["storage_auth_passwd_filename"]

    @property
    def storage_satisfy(self):
        self.load()
        return self._doc["general"]["storage_satisfy"]

    @property
    def storage_forbidden_dav_methods(self):
        self.load()
        return self._doc["general"]["storage_forbidden_dav_methods"]

    @property
    def storage_autoindex_format(self):
        self.load()
        return self._doc["general"]["storage_autoindex_format"]
