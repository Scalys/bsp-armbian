# openenclave
local package_name="open-enclave"
local package_repo="https://github.com/openenclave/openenclave.git"
local package_ref="branch:v0.13.x"
local package_install_target="open-enclave"
local package_component="${release}-utils"
# local package_install_chroot=""
local package_builddeps="cmake"

package_checkbuild()
{
	true
}

package_checkinstall()
{
	# only needed for building TA's and PPA
	true
}
