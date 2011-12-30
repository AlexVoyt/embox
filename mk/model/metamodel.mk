# Generated by Xpand using M2Make template.

# Meta model for 'EModel' package.

ifndef __model_metamodel_mk
__model_metamodel_mk := $(lastword $(MAKEFILE_LIST))

include $(dir $(__model_metamodel_mk))metamodel_impl.mk

# Provides static access to contents of 'EModel' model.
# See 'eModelMetaModel'.
define class-EModelMetaModel
	$(super EMetaModel)

	$(property ENode : EMetaClass)
	$(property ENode_eMetaClass : EMetaReference)
	$(property ENode_eResource : EMetaAttribute)
	$(property ENode_eContainer : EMetaReference)
	$(property ENode_eRootContainer : EMetaReference)
	$(property ENode_eContents : EMetaReference)
	$(property ENode_eAllContents : EMetaReference)

	$(property ELink : EMetaClass)
	$(property ELink_eMetaReference : EMetaReference)

	$(property EMetaType : EMetaClass)
	$(property EMetaType_instanceClass : EMetaAttribute)
	$(property EMetaType_eMetaModel : EMetaReference)

	$(property EMetaClass : EMetaClass)
	$(property EMetaClass_abstract : EMetaAttribute)
	$(property EMetaClass_interface : EMetaAttribute)
	$(property EMetaClass_eSuperTypes : EMetaReference)
	$(property EMetaClass_eAllSuperTypes : EMetaReference)
	$(property EMetaClass_eFeatures : EMetaReference)
	$(property EMetaClass_eAllFeatures : EMetaReference)
	$(property EMetaClass_eAttributes : EMetaReference)
	$(property EMetaClass_eAllAttributes : EMetaReference)
	$(property EMetaClass_eReferences : EMetaReference)
	$(property EMetaClass_eAllReferences : EMetaReference)
	$(property EMetaClass_eAllContainments : EMetaReference)

	$(property EMetaPrimitive : EMetaClass)

	$(property EMetaFeature : EMetaClass)
	$(property EMetaFeature_changeable : EMetaAttribute)
	$(property EMetaFeature_volatile : EMetaAttribute)
	$(property EMetaFeature_transient : EMetaAttribute)
	$(property EMetaFeature_derived : EMetaAttribute)
	$(property EMetaFeature_instanceProperty : EMetaAttribute)
	$(property EMetaFeature_eContainingClass : EMetaReference)

	$(property EMetaReference : EMetaClass)
	$(property EMetaReference_containment : EMetaAttribute)
	$(property EMetaReference_container : EMetaAttribute)
	$(property EMetaReference_eOpposite : EMetaReference)
	$(property EMetaReference_eReferenceType : EMetaReference)

	$(property EMetaAttribute : EMetaClass)
	$(property EMetaAttribute_eAttributeType : EMetaReference)

	$(property EMetaModel : EMetaClass)
	$(property EMetaModel_eFactory : EMetaReference)
	$(property EMetaModel_eTypes : EMetaReference)

	$(property EModelFactory : EMetaClass)
	$(property EModelFactory_eMetaModel : EMetaReference)

	$(property ENamed : EMetaClass)
	$(property ENamed_name : EMetaAttribute)

	$(property ETyped : EMetaClass)
	$(property ETyped_lowerBound : EMetaAttribute)
	$(property ETyped_upperBound : EMetaAttribute)
	$(property ETyped_eType : EMetaReference)
endef

$(def_all)

eModelMetaModel := $(call new,EModelMetaModelImpl)

endif # __model_metamodel_mk

