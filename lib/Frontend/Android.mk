LOCAL_PATH:= $(call my-dir)

# For the host only
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES := \
  AttrList.inc \
  Attrs.inc \
  CC1Options.inc \
  DiagnosticASTKinds.inc \
  DiagnosticCommonKinds.inc \
  DiagnosticDriverKinds.inc \
  DiagnosticFrontendKinds.inc \
  DiagnosticLexKinds.inc \
  DiagnosticSemaKinds.inc \
  DeclNodes.inc \
  StmtNodes.inc

clang_frontend_SRC_FILES := \
  ASTConsumers.cpp \
  ASTMerge.cpp \
  ASTUnit.cpp \
  BoostConAction.cpp \
  CacheTokens.cpp \
  CompilerInstance.cpp \
  CompilerInvocation.cpp \
  DeclXML.cpp \
  DependencyFile.cpp \
  DiagChecker.cpp \
  DocumentXML.cpp \
  FrontendAction.cpp \
  FrontendActions.cpp \
  FrontendOptions.cpp \
  InitHeaderSearch.cpp \
  InitPreprocessor.cpp \
  LangStandards.cpp \
  PrintPreprocessedOutput.cpp \
  StmtXML.cpp \
  TextDiagnosticBuffer.cpp \
  TextDiagnosticPrinter.cpp \
  TypeXML.cpp \
  VerifyDiagnosticsClient.cpp \
  Warnings.cpp

LOCAL_SRC_FILES := $(clang_frontend_SRC_FILES)

LOCAL_MODULE:= libclangFrontend
LOCAL_MODULE_TAGS:= optional

LOCAL_MODULE_TAGS := optional

include $(CLANG_HOST_BUILD_MK)
include $(CLANG_TBLGEN_RULES_MK)
include $(BUILD_HOST_STATIC_LIBRARY)
