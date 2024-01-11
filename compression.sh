#### COMPRESSION STUFF ####
# Compress by tar
name_of_compressed_file=
tar -czvf ${name_of_compressed_file}.tar.gz ${path_to_folder}

# Extract tar file
tar -xf ${name_of_compressed_file}.tar.${tar_type}


# partially download files through html request by specifying by†es
curl -o partial.zip -H "Range: bytes=0-1073741823" [URL]