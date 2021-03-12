#### Restores OnePlus 6T Fajita to Oxygen OS 9.0.17 on a Linux PC using bash and fastboot

- Requires binary .img files and twrp.img file (see release section for download)
- Requires Android Debug Bridge tools and fastboot on Linux host
- For Oxygen OS 10+ just update after restoring
- This will wipe all data and restore the phone to factory
- Uses sudo to prevent permission issues and will require your hosts root password
- Prompts for each slot and for basic and recovery partitions





Start phone in fastboot mode (pwr_button + volume_dwn + volume_up)

Open terminal on host in the directory containing the scripts

Running the following command and answer the on screen prompts
```
flash-all.sh
```
