##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Release
ProjectName            :=firstcpp
ConfigurationName      :=Release
WorkspacePath          := "/home/angel/Code/firstcpp/firstcpp"
ProjectPath            := "/home/angel/Code/firstcpp/firstcpp"
IntermediateDirectory  :=./Release
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=angel
Date                   :=04/06/17
CodeLitePath           :="/home/angel/.codelite"
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=$(PreprocessorSwitch)NDEBUG 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="firstcpp.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)include 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)pthread 
ArLibs                 :=  "pthread" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS := -std=c++11 -O2 -Wall $(Preprocessors)
CFLAGS   :=  -O2 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_FirstClass.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_SecondClass.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ThirdClass.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_PThread.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_TestMyThreadClass.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Task.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_TaskFactory.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ThreadInterface.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./Release || $(MakeDirCommand) ./Release


$(IntermediateDirectory)/.d:
	@test -d ./Release || $(MakeDirCommand) ./Release

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/angel/Code/firstcpp/firstcpp/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM "main.cpp"

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) "main.cpp"

$(IntermediateDirectory)/src_FirstClass.cpp$(ObjectSuffix): src/FirstClass.cpp $(IntermediateDirectory)/src_FirstClass.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/angel/Code/firstcpp/firstcpp/src/FirstClass.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FirstClass.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FirstClass.cpp$(DependSuffix): src/FirstClass.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FirstClass.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FirstClass.cpp$(DependSuffix) -MM "src/FirstClass.cpp"

$(IntermediateDirectory)/src_FirstClass.cpp$(PreprocessSuffix): src/FirstClass.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FirstClass.cpp$(PreprocessSuffix) "src/FirstClass.cpp"

$(IntermediateDirectory)/src_SecondClass.cpp$(ObjectSuffix): src/SecondClass.cpp $(IntermediateDirectory)/src_SecondClass.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/angel/Code/firstcpp/firstcpp/src/SecondClass.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_SecondClass.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_SecondClass.cpp$(DependSuffix): src/SecondClass.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_SecondClass.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_SecondClass.cpp$(DependSuffix) -MM "src/SecondClass.cpp"

$(IntermediateDirectory)/src_SecondClass.cpp$(PreprocessSuffix): src/SecondClass.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_SecondClass.cpp$(PreprocessSuffix) "src/SecondClass.cpp"

$(IntermediateDirectory)/src_ThirdClass.cpp$(ObjectSuffix): src/ThirdClass.cpp $(IntermediateDirectory)/src_ThirdClass.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/angel/Code/firstcpp/firstcpp/src/ThirdClass.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ThirdClass.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ThirdClass.cpp$(DependSuffix): src/ThirdClass.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ThirdClass.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ThirdClass.cpp$(DependSuffix) -MM "src/ThirdClass.cpp"

$(IntermediateDirectory)/src_ThirdClass.cpp$(PreprocessSuffix): src/ThirdClass.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ThirdClass.cpp$(PreprocessSuffix) "src/ThirdClass.cpp"

$(IntermediateDirectory)/src_PThread.cpp$(ObjectSuffix): src/PThread.cpp $(IntermediateDirectory)/src_PThread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/angel/Code/firstcpp/firstcpp/src/PThread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_PThread.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_PThread.cpp$(DependSuffix): src/PThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_PThread.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_PThread.cpp$(DependSuffix) -MM "src/PThread.cpp"

$(IntermediateDirectory)/src_PThread.cpp$(PreprocessSuffix): src/PThread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_PThread.cpp$(PreprocessSuffix) "src/PThread.cpp"

$(IntermediateDirectory)/src_TestMyThreadClass.cpp$(ObjectSuffix): src/TestMyThreadClass.cpp $(IntermediateDirectory)/src_TestMyThreadClass.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/angel/Code/firstcpp/firstcpp/src/TestMyThreadClass.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_TestMyThreadClass.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_TestMyThreadClass.cpp$(DependSuffix): src/TestMyThreadClass.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_TestMyThreadClass.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_TestMyThreadClass.cpp$(DependSuffix) -MM "src/TestMyThreadClass.cpp"

$(IntermediateDirectory)/src_TestMyThreadClass.cpp$(PreprocessSuffix): src/TestMyThreadClass.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_TestMyThreadClass.cpp$(PreprocessSuffix) "src/TestMyThreadClass.cpp"

$(IntermediateDirectory)/src_Task.cpp$(ObjectSuffix): src/Task.cpp $(IntermediateDirectory)/src_Task.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/angel/Code/firstcpp/firstcpp/src/Task.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Task.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Task.cpp$(DependSuffix): src/Task.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Task.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Task.cpp$(DependSuffix) -MM "src/Task.cpp"

$(IntermediateDirectory)/src_Task.cpp$(PreprocessSuffix): src/Task.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Task.cpp$(PreprocessSuffix) "src/Task.cpp"

$(IntermediateDirectory)/src_TaskFactory.cpp$(ObjectSuffix): src/TaskFactory.cpp $(IntermediateDirectory)/src_TaskFactory.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/angel/Code/firstcpp/firstcpp/src/TaskFactory.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_TaskFactory.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_TaskFactory.cpp$(DependSuffix): src/TaskFactory.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_TaskFactory.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_TaskFactory.cpp$(DependSuffix) -MM "src/TaskFactory.cpp"

$(IntermediateDirectory)/src_TaskFactory.cpp$(PreprocessSuffix): src/TaskFactory.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_TaskFactory.cpp$(PreprocessSuffix) "src/TaskFactory.cpp"

$(IntermediateDirectory)/src_ThreadInterface.cpp$(ObjectSuffix): src/ThreadInterface.cpp $(IntermediateDirectory)/src_ThreadInterface.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/angel/Code/firstcpp/firstcpp/src/ThreadInterface.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ThreadInterface.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ThreadInterface.cpp$(DependSuffix): src/ThreadInterface.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ThreadInterface.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ThreadInterface.cpp$(DependSuffix) -MM "src/ThreadInterface.cpp"

$(IntermediateDirectory)/src_ThreadInterface.cpp$(PreprocessSuffix): src/ThreadInterface.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ThreadInterface.cpp$(PreprocessSuffix) "src/ThreadInterface.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Release/


