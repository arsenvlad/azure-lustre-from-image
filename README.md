# Deploy Lustre 2.7 cluster using managed disks and image created from blob

The blob VHD image must be in your storage account within the same subscription and region/location where you are deploying the Lustre cluster. The template will create a managed image from the blob VHD and will use the created managed image to create the VMs.