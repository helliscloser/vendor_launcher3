#
# Copyright (C) 2022 tg@hopethislasts
# Copyright (C) 2022 𝑨𝒎𝒓 𝑮𝒂𝒎𝒂𝒍
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Copy permission files
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/launcher3mod/Prebuilts/product/etc/default-permissions,$(TARGET_COPY_OUT_PRODUCT)/etc/default_permissions)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/launcher3mod/Prebuilts/product/etc/sysconfig,$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/launcher3mod/Prebuilts/system_ext/etc,$(TARGET_COPY_OUT_SYSTEM_EXT)/etc)

PRODUCT_COPY_FILES += \
$(call find-copy-subdir-files,*,vendor/launcher3mod/Prebuilts/system_ext/priv-app/Launcher3QuickStep/oat,$(TARGET_COPY_OUT_SYSTEM)/system_ext/priv-app/Launcher3QuickStep/oat) \
$(call find-copy-subdir-files,*,vendor/launcher3mod/Prebuilts/system_ext/priv-app/OmniJaws/oat,$(TARGET_COPY_OUT_SYSTEM)/system_ext/priv-app/OmniJaws/oat) \
$(call find-copy-subdir-files,*,vendor/launcher3mod/Prebuilts/system_ext/priv-app/QuickAccessWallet/oat,$(TARGET_COPY_OUT_SYSTEM)/system_ext/priv-app/QuickAccessWallet/oat) \
$(call find-copy-subdir-files,*,vendor/launcher3mod/Prebuilts/system_ext/priv-app/ThemePicker/oat,$(TARGET_COPY_OUT_SYSTEM)/system_ext/priv-app/ThemePicker/oat) \

# Properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.boot.vendor.overlay.static=false

# Build apps
PRODUCT_PACKAGES += \
   Launcher3QuickStepMod \
   QuickSwitchOverlayMod \
   PixelThemesStubMod \
   OmniJawsMod \
   Remover \
   QuickAccessWalletMod \
   ThemePickerMod
