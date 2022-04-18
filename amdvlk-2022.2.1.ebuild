# AMDVLK-2022.2.1
# Vulkan Driver

DESCRIPTION="AMDVLK test package"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
RESTRICT="nomirror"
DEPENDS=""
SRC_URI="https://drive.google.com/file/d/1EMCa7uP_dKU_kw7pdgwgxedynxa7WF2M/view?usp=sharing"

# Install
src_install() {
        cp -vR ${S}/etc/vulkan/icd.d/amd_icd32.json ${D}/etc/vulkan/icd.d/amd_icd32.json
        cp -vR ${S}/etc/vulkan/icd.d/amd_icd64.json ${D}/etc/vulkan/icd.d/amd_icd64.json
        cp -vR ${S}/etc/vulkan/implicit_layer.d/amd_icd32.json ${D}/etc/vulkan/implicit_layer.d/amd_icd32.json
        cp -vR ${S}/etc/vulkan/implicit_layer.d/amd_icd64.json ${D}/etc/vulkan/implicit_layer.d/amd_icd64.json
        cp -vR ${S}/usr/lib/i386-linux-gnu/amdvlk32.so ${D}/usr/lib/i386-linux-gnu/amdvlk32.so
        cp -vR ${S}/usr/lib/x86_64-linux-gnu/amdvlk64.so ${D}/usr/lib/x86_64-linux-gnu/amdvlk64.so
}
