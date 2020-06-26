#!/bin/bash

find app/. -type f -name "*.php" -exec sed -i '' 's/Netgen\\Bundle\\BlockManagerBundle/Netgen\\Bundle\\LayoutsBundle/g' {} +
find app/. -type f -name "*.php" -exec sed -i '' 's/NetgenBlockManagerBundle/NetgenLayoutsBundle/g' {} +

find app/. -type f -name "*.php" -exec sed -i '' 's/Netgen\\Bundle\\BlockManagerAdminBundle/Netgen\\Bundle\\LayoutsAdminBundle/g' {} +
find app/. -type f -name "*.php" -exec sed -i '' 's/NetgenBlockManagerAdminBundle/NetgenLayoutsAdminBundle/g' {} +

find app/. -type f -name "*.php" -exec sed -i '' 's/Netgen\\Bundle\\BlockManagerDebugBundle/Netgen\\Bundle\\LayoutsDebugBundle/g' {} +
find app/. -type f -name "*.php" -exec sed -i '' 's/NetgenBlockManagerDebugBundle/NetgenLayoutsDebugBundle/g' {} +

find app/. -type f -name "*.php" -exec sed -i '' 's/Netgen\\Bundle\\BlockManagerStandardBundle/Netgen\\Bundle\\LayoutsStandardBundle/g' {} +
find app/. -type f -name "*.php" -exec sed -i '' 's/NetgenBlockManagerStandardBundle/NetgenLayoutsStandardBundle/g' {} +

find app/. -type f -name "*.php" -exec sed -i '' 's/Netgen\\Bundle\\BlockManagerUIBundle/Netgen\\Bundle\\LayoutsUIBundle/g' {} +
find app/. -type f -name "*.php" -exec sed -i '' 's/NetgenBlockManagerUIBundle/NetgenLayoutsUIBundle/g' {} +

find app/. -type f -name "*.php" -exec sed -i '' 's/Netgen\\Bundle\\EzPublishBlockManagerBundle/Netgen\\Bundle\\LayoutsEzPlatformBundle/g' {} +
find app/. -type f -name "*.php" -exec sed -i '' 's/NetgenEzPublishBlockManagerBundle/NetgenLayoutsEzPlatformBundle/g' {} +

find app/. -type f -name "*.php" -exec sed -i '' 's/Netgen\\Bundle\\SiteAPIBlockManagerBundle/Netgen\\Bundle\\LayoutsEzPlatformSiteApiBundle/g' {} +
find app/. -type f -name "*.php" -exec sed -i '' 's/NetgenSiteAPIBlockManagerBundle/NetgenLayoutsEzPlatformSiteApiBundle/g' {} +



find app/. -type f -name "*.yml" -exec sed -i '' 's/netgen_block_manager/netgen_layouts/g' {} + 
find src/. -type f -name "*.twig" -exec sed -i '' 's/@ngbm/@nglayouts/g' {} +
find src/. -type f -name "*.yml" -exec sed -i '' 's/@ngbm/@nglayouts/g' {} +

find src/. -type f -name "*.twig" -exec sed -i '' 's/ngbm_/nglayouts_/g' {} +

# Netgen Layouts Twig globals

find src/. -type f -name "*.twig" -exec sed -i '' 's/ngbm.layoutTemplate/nglayouts.layoutTemplate/g' {} +
find src/. -type f -name "*.twig" -exec sed -i '' 's/ngbm.pageLayoutTemplate/nglayouts.pageLayoutTemplate/g' {} +
find src/. -type f -name "*.twig" -exec sed -i '' 's/ngbm.debug/nglayouts.debug/g' {} +
find src/. -type f -name "*.twig" -exec sed -i '' 's/ngbm.layout/nglayouts.layout/g' {} + 

# Semantic configuration roots have been renamed

find src/. -type f -name "*.yml" -exec sed -i '' 's/netgen_block_manager/netgen_layouts/g' {} +
find app/. -type f -name "*.yml" -exec sed -i '' 's/netgen_site_api_block_manager/netgen_layouts_ez_platform_site_api/g' {} +

# Find translation files to rename

find src/. -type f -name "ngbm.*.yml"
find app/. -type f -name "ngbm.*.yml"

# Symfony dependency injection tags:

find src/. -type f -name "*.yml" -exec sed -i '' 's/netgen_block_manager.block.block_definition_handler/netgen_layouts.block_definition_handler/g' {} +
find src/. -type f -name "*.yml" -exec sed -i '' 's/netgen_block_manager.block.block_definition_handler.plugin/netgen_layouts.block_definition_handler.plugin/g' {} +
find src/. -type f -name "*.yml" -exec sed -i '' 's/netgen_block_manager.collection.query_type_handler/netgen_layouts.query_type_handler/g' {} +
find src/. -type f -name "*.yml" -exec sed -i '' 's/netgen_block_manager.parameters.parameter_type/netgen_layouts.parameter_type/g' {} +
find src/. -type f -name "*.yml" -exec sed -i '' 's/netgen_block_manager.parameters.form.mapper/netgen_layouts.parameter_type.form_mapper/g' {} +
find src/. -type f -name "*.yml" -exec sed -i '' 's/netgen_block_manager.layout.resolver.target_type/netgen_layouts.target_type/g' {} +
find src/. -type f -name "*.yml" -exec sed -i '' 's/netgen_block_manager.layout.resolver.form.target_type.mapper/netgen_layouts.target_type.form_mapper/g' {} +
find src/. -type f -name "*.yml" -exec sed -i '' 's/netgen_block_manager.layout.resolver.target_handler.doctrine/netgen_layouts.target_type.doctrine_handler/g' {} +
find src/. -type f -name "*.yml" -exec sed -i '' 's/netgen_block_manager.layout.resolver.condition_type/netgen_layouts.condition_type/g' {} +
find src/. -type f -name "*.yml" -exec sed -i '' 's/netgen_block_manager.layout.resolver.form.condition_type.mapper/netgen_layouts.condition_type.form_mapper/g' {} +
find src/. -type f -name "*.yml" -exec sed -i '' 's/netgen_block_manager.view.template_matcher/netgen_layouts.view_matcher/g' {} +
find src/. -type f -name "*.yml" -exec sed -i '' 's/netgen_block_manager.item.value_converter/netgen_layouts.cms_value_converter/g' {} +
find src/. -type f -name "*.yml" -exec sed -i '' 's/netgen_block_manager.item.value_loader/netgen_layouts.cms_value_loader/g' {} +
find src/. -type f -name "*.yml" -exec sed -i '' 's/netgen_block_manager.item.value_url_generator/netgen_layouts.cms_value_url_generator/g' {} +

Roles

find app/. -type f -name "*.yml" -exec sed -i '' 's/ROLE_NGBM_/ROLE_NGLAYOUTS_/g' {} +
find src/. -type f -name "*.yml" -exec sed -i '' 's/ROLE_NGBM_/ROLE_NGLAYOUTS_/g' {} +


find src/. -type f -name "*.php" -exec sed -i '' 's/BlockManagerEvents/LayoutsEvents/g' {} +
find src/. -type f -name "*.php" -exec sed -i '' 's/BlockManagerAdminEvents/LayoutsAdminEvents/g' {} +



find src/. -type f -name "*.yml" -exec sed -i '' 's/@NetgenBlockManager\/api/@NetgenLayoutsAdmin\/app/g' {} +
find src/. -type f -name "*.yml" -exec sed -i '' 's/@NetgenBlockManagerStandard\/api/@NetgenLayoutsStandard\/app/g' {} +


Watch for breadcrumb-wrapper

find src/. -type f -name "*.twig" -exec sed -i '' 's/bm-/ngl-/g' {} +
find src/. -type f -name "*.scss" -exec sed -i '' 's/bm-/ngl-/g' {} +


find app/. -type f -name "*.yml" -exec sed -i '' 's/ngbm_api_/nglayouts_app_api_/g' {} +


find src/. -type f -name "*.twig" -exec sed -i '' 's/nglayouts_render_item/nglayouts_render_result/g' {} +



