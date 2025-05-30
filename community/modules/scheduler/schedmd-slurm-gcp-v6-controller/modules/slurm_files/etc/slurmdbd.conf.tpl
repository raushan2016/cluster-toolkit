# slurmdbd.conf
# https://slurm.schedmd.com/slurmdbd.conf.html

DebugLevel=info
PidFile=/var/run/slurm/slurmdbd.pid

################################################################################
#              vvvvv  WARNING: DO NOT MODIFY SECTION BELOW  vvvvv              #
################################################################################

AuthType=auth/{auth_key}
AuthAltTypes=auth/jwt
AuthAltParameters=jwt_key={state_save}/jwt_hs256.key

DbdHost={control_host}

LogFile={slurmlog}/slurmdbd.log

SlurmUser=slurm

StorageLoc={db_name}

StorageType=accounting_storage/mysql
StorageHost={db_host}
StoragePort={db_port}
StorageUser={db_user}
StoragePass={db_pass}

################################################################################
#              ^^^^^  WARNING: DO NOT MODIFY SECTION ABOVE  ^^^^^              #
################################################################################
