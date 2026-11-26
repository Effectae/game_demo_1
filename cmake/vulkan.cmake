set(VulkanHppDir ${PROJECT_SOURCE_DIR}/submodules/vulkan_hpp)

set(VULKAN_HPP_NO_EXCEPTIONS ON CACHE BOOL "Disable the exception in vulkan" FORCE)
set(VULKAN_HPP_RAII_NO_EXCEPTIONS ON CACHE BOOL "Disable the raii exception in vulkan" FORCE)

set(VULKAN_HPP_USE_STD_EXPECTED ON CACHE BOOL "Enable the expected in vulkan" FORCE)

add_subdirectory(${VulkanHppDir})
