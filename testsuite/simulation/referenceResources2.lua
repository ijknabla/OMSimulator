-- status: correct
-- teardown_command: rm -rf referenceResources2_lua/
-- linux: yes
-- mingw32: yes
-- mingw64: yes
-- win: yes
-- mac: no

oms_setCommandLineOption("--suppressPath=true")
oms_setTempDirectory("./referenceResources2_lua/")
oms_setWorkingDirectory("./referenceResources2_lua/")

oms_importFile("../../resources/importExportAllResources.ssp");

oms_setResultFile("import_parameter_mapping", "referenceResources2.mat", 10)

print("info:    Virgin Parameter Settings")
print("info:      import_parameter_mapping.co_sim.Input_1              : " .. oms_getReal("import_parameter_mapping.co_sim.Input_1"))
print("info:      import_parameter_mapping.co_sim.Input_2              : " .. oms_getReal("import_parameter_mapping.co_sim.Input_2"))
print("info:      import_parameter_mapping.co_sim.Input_3              : " .. oms_getReal("import_parameter_mapping.co_sim.Input_3"))
print("info:      import_parameter_mapping.co_sim.parameter_1          : " .. oms_getReal("import_parameter_mapping.co_sim.parameter_1"))
print("info:      import_parameter_mapping.co_sim.parameter_2          : " .. oms_getReal("import_parameter_mapping.co_sim.parameter_2"))

print("info:      import_parameter_mapping.co_sim.System1.Input_1      : " .. oms_getReal("import_parameter_mapping.co_sim.System1.Input_1"))
print("info:      import_parameter_mapping.co_sim.System1.Input_2      : " .. oms_getReal("import_parameter_mapping.co_sim.System1.Input_2"))
print("info:      import_parameter_mapping.co_sim.System1.parameter_1  : " .. oms_getReal("import_parameter_mapping.co_sim.System1.parameter_1"))
print("info:      import_parameter_mapping.co_sim.System1.parameter_2  : " .. oms_getReal("import_parameter_mapping.co_sim.System1.parameter_2"))

print("info:      import_parameter_mapping.co_sim.System2.Input_1      : " .. oms_getReal("import_parameter_mapping.co_sim.System2.Input_1"))
print("info:      import_parameter_mapping.co_sim.System2.Input_2      : " .. oms_getReal("import_parameter_mapping.co_sim.System2.Input_2"))
print("info:      import_parameter_mapping.co_sim.System2.parameter_1  : " .. oms_getReal("import_parameter_mapping.co_sim.System2.parameter_1"))
print("info:      import_parameter_mapping.co_sim.System2.parameter_2  : " .. oms_getReal("import_parameter_mapping.co_sim.System2.parameter_2"))


-- delete the ssv references
oms_deleteResources("import_parameter_mapping.co_sim:import_parameter_mapping.ssv")
-- switch with new references, ssv and ssm file
oms_referenceResources("import_parameter_mapping.co_sim:external_import_parameter_mapping.ssv", "external_import_parameter_mapping.ssm") -- optional second argument for ssm f

oms_instantiate("import_parameter_mapping")

oms_initialize("import_parameter_mapping")

print("info:    Initialization after switching with new references")
print("info:      import_parameter_mapping.co_sim.Input_1              : " .. oms_getReal("import_parameter_mapping.co_sim.Input_1"))
print("info:      import_parameter_mapping.co_sim.Input_2              : " .. oms_getReal("import_parameter_mapping.co_sim.Input_2"))
print("info:      import_parameter_mapping.co_sim.Input_3              : " .. oms_getReal("import_parameter_mapping.co_sim.Input_3"))
print("info:      import_parameter_mapping.co_sim.parameter_1          : " .. oms_getReal("import_parameter_mapping.co_sim.parameter_1"))
print("info:      import_parameter_mapping.co_sim.parameter_2          : " .. oms_getReal("import_parameter_mapping.co_sim.parameter_2"))

print("info:      import_parameter_mapping.co_sim.System1.Input_1      : " .. oms_getReal("import_parameter_mapping.co_sim.System1.Input_1"))
print("info:      import_parameter_mapping.co_sim.System1.Input_2      : " .. oms_getReal("import_parameter_mapping.co_sim.System1.Input_2"))
print("info:      import_parameter_mapping.co_sim.System1.parameter_1  : " .. oms_getReal("import_parameter_mapping.co_sim.System1.parameter_1"))
print("info:      import_parameter_mapping.co_sim.System1.parameter_2  : " .. oms_getReal("import_parameter_mapping.co_sim.System1.parameter_2"))

print("info:      import_parameter_mapping.co_sim.System2.Input_1      : " .. oms_getReal("import_parameter_mapping.co_sim.System2.Input_1"))
print("info:      import_parameter_mapping.co_sim.System2.Input_2      : " .. oms_getReal("import_parameter_mapping.co_sim.System2.Input_2"))
print("info:      import_parameter_mapping.co_sim.System2.parameter_1  : " .. oms_getReal("import_parameter_mapping.co_sim.System2.parameter_1"))
print("info:      import_parameter_mapping.co_sim.System2.parameter_2  : " .. oms_getReal("import_parameter_mapping.co_sim.System2.parameter_2"))

oms_simulate("import_parameter_mapping")

print("info:    Simulation")
print("info:      import_parameter_mapping.co_sim.Input_1              : " .. oms_getReal("import_parameter_mapping.co_sim.Input_1"))
print("info:      import_parameter_mapping.co_sim.Input_2              : " .. oms_getReal("import_parameter_mapping.co_sim.Input_2"))
print("info:      import_parameter_mapping.co_sim.Input_3              : " .. oms_getReal("import_parameter_mapping.co_sim.Input_3"))
print("info:      import_parameter_mapping.co_sim.parameter_1          : " .. oms_getReal("import_parameter_mapping.co_sim.parameter_1"))
print("info:      import_parameter_mapping.co_sim.parameter_2          : " .. oms_getReal("import_parameter_mapping.co_sim.parameter_2"))

print("info:      import_parameter_mapping.co_sim.System1.Input_1      : " .. oms_getReal("import_parameter_mapping.co_sim.System1.Input_1"))
print("info:      import_parameter_mapping.co_sim.System1.Input_2      : " .. oms_getReal("import_parameter_mapping.co_sim.System1.Input_2"))
print("info:      import_parameter_mapping.co_sim.System1.parameter_1  : " .. oms_getReal("import_parameter_mapping.co_sim.System1.parameter_1"))
print("info:      import_parameter_mapping.co_sim.System1.parameter_2  : " .. oms_getReal("import_parameter_mapping.co_sim.System1.parameter_2"))

print("info:      import_parameter_mapping.co_sim.System2.Input_1      : " .. oms_getReal("import_parameter_mapping.co_sim.System2.Input_1"))
print("info:      import_parameter_mapping.co_sim.System2.Input_2      : " .. oms_getReal("import_parameter_mapping.co_sim.System2.Input_2"))
print("info:      import_parameter_mapping.co_sim.System2.parameter_1  : " .. oms_getReal("import_parameter_mapping.co_sim.System2.parameter_1"))
print("info:      import_parameter_mapping.co_sim.System2.parameter_2  : " .. oms_getReal("import_parameter_mapping.co_sim.System2.parameter_2"))

src = oms_exportSnapshot("import_parameter_mapping");
print(src)

oms_terminate("import_parameter_mapping")
oms_delete("import_parameter_mapping")




-- Result:
-- info:    Virgin Parameter Settings
-- info:      import_parameter_mapping.co_sim.Input_1              : 20.0
-- info:      import_parameter_mapping.co_sim.Input_2              : 20.0
-- info:      import_parameter_mapping.co_sim.Input_3              : 50.0
-- info:      import_parameter_mapping.co_sim.parameter_1          : -30.0
-- info:      import_parameter_mapping.co_sim.parameter_2          : -40.0
-- info:      import_parameter_mapping.co_sim.System1.Input_1      : 20.0
-- info:      import_parameter_mapping.co_sim.System1.Input_2      : 20.0
-- info:      import_parameter_mapping.co_sim.System1.parameter_1  : -30.0
-- info:      import_parameter_mapping.co_sim.System1.parameter_2  : 0.0
-- info:      import_parameter_mapping.co_sim.System2.Input_1      : 20.0
-- info:      import_parameter_mapping.co_sim.System2.Input_2      : 20.0
-- info:      import_parameter_mapping.co_sim.System2.parameter_1  : -30.0
-- info:      import_parameter_mapping.co_sim.System2.parameter_2  : 0.0
-- info:    model doesn't contain any continuous state
-- info:    model doesn't contain any continuous state
-- info:    Result file: referenceResources2.mat (bufferSize=10)
-- info:    Initialization after switching with new references
-- info:      import_parameter_mapping.co_sim.Input_1              : -200.0
-- info:      import_parameter_mapping.co_sim.Input_2              : -200.0
-- info:      import_parameter_mapping.co_sim.Input_3              : -300.0
-- info:      import_parameter_mapping.co_sim.parameter_1          : -400.0
-- info:      import_parameter_mapping.co_sim.parameter_2          : -500.0
-- info:      import_parameter_mapping.co_sim.System1.Input_1      : -200.0
-- info:      import_parameter_mapping.co_sim.System1.Input_2      : -200.0
-- info:      import_parameter_mapping.co_sim.System1.parameter_1  : -400.0
-- info:      import_parameter_mapping.co_sim.System1.parameter_2  : 0.0
-- info:      import_parameter_mapping.co_sim.System2.Input_1      : -200.0
-- info:      import_parameter_mapping.co_sim.System2.Input_2      : -200.0
-- info:      import_parameter_mapping.co_sim.System2.parameter_1  : -400.0
-- info:      import_parameter_mapping.co_sim.System2.parameter_2  : 0.0
-- info:    Simulation
-- info:      import_parameter_mapping.co_sim.Input_1              : -200.0
-- info:      import_parameter_mapping.co_sim.Input_2              : -200.0
-- info:      import_parameter_mapping.co_sim.Input_3              : -300.0
-- info:      import_parameter_mapping.co_sim.parameter_1          : -400.0
-- info:      import_parameter_mapping.co_sim.parameter_2          : -500.0
-- info:      import_parameter_mapping.co_sim.System1.Input_1      : -200.0
-- info:      import_parameter_mapping.co_sim.System1.Input_2      : -200.0
-- info:      import_parameter_mapping.co_sim.System1.parameter_1  : -400.0
-- info:      import_parameter_mapping.co_sim.System1.parameter_2  : 0.0
-- info:      import_parameter_mapping.co_sim.System2.Input_1      : -200.0
-- info:      import_parameter_mapping.co_sim.System2.Input_2      : -200.0
-- info:      import_parameter_mapping.co_sim.System2.parameter_1  : -400.0
-- info:      import_parameter_mapping.co_sim.System2.parameter_2  : 0.0
-- <?xml version="1.0"?>
-- <oms:snapshot
--   xmlns:oms="https://raw.githubusercontent.com/OpenModelica/OMSimulator/master/schema/oms.xsd"
--   partial="false">
--   <oms:file
--     name="SystemStructure.ssd">
--     <ssd:SystemStructureDescription
--       xmlns:ssc="http://ssp-standard.org/SSP1/SystemStructureCommon"
--       xmlns:ssd="http://ssp-standard.org/SSP1/SystemStructureDescription"
--       xmlns:ssv="http://ssp-standard.org/SSP1/SystemStructureParameterValues"
--       xmlns:ssm="http://ssp-standard.org/SSP1/SystemStructureParameterMapping"
--       xmlns:ssb="http://ssp-standard.org/SSP1/SystemStructureSignalDictionary"
--       xmlns:oms="https://raw.githubusercontent.com/OpenModelica/OMSimulator/master/schema/oms.xsd"
--       name="import_parameter_mapping"
--       version="1.0">
--       <ssd:System
--         name="co_sim">
--         <ssd:Connectors>
--           <ssd:Connector
--             name="Input_1"
--             kind="input">
--             <ssc:Real />
--           </ssd:Connector>
--           <ssd:Connector
--             name="Input_2"
--             kind="input">
--             <ssc:Real />
--           </ssd:Connector>
--           <ssd:Connector
--             name="Input_3"
--             kind="input">
--             <ssc:Real />
--           </ssd:Connector>
--           <ssd:Connector
--             name="Output_cref"
--             kind="output">
--             <ssc:Real />
--           </ssd:Connector>
--           <ssd:Connector
--             name="parameter_1"
--             kind="parameter">
--             <ssc:Real />
--           </ssd:Connector>
--           <ssd:Connector
--             name="parameter_2"
--             kind="parameter">
--             <ssc:Real />
--           </ssd:Connector>
--         </ssd:Connectors>
--         <ssd:ParameterBindings>
--           <ssd:ParameterBinding
--             source="resources/external_import_parameter_mapping.ssv">
--             <ssd:ParameterMapping
--               source="resources/external_import_parameter_mapping.ssm" />
--           </ssd:ParameterBinding>
--         </ssd:ParameterBindings>
--         <ssd:Elements>
--           <ssd:System
--             name="System2">
--             <ssd:Connectors>
--               <ssd:Connector
--                 name="Input_1"
--                 kind="input">
--                 <ssc:Real />
--               </ssd:Connector>
--               <ssd:Connector
--                 name="Input_2"
--                 kind="input">
--                 <ssc:Real />
--               </ssd:Connector>
--               <ssd:Connector
--                 name="parameter_1"
--                 kind="parameter">
--                 <ssc:Real />
--               </ssd:Connector>
--               <ssd:Connector
--                 name="parameter_2"
--                 kind="parameter">
--                 <ssc:Real />
--               </ssd:Connector>
--               <ssd:Connector
--                 name="output"
--                 kind="output">
--                 <ssc:Real />
--               </ssd:Connector>
--             </ssd:Connectors>
--             <ssd:Annotations>
--               <ssc:Annotation
--                 type="org.openmodelica">
--                 <oms:Annotations>
--                   <oms:SimulationInformation>
--                     <oms:VariableStepSolver
--                       description="euler"
--                       absoluteTolerance="0.0001"
--                       relativeTolerance="0.0001"
--                       minimumStepSize="0.0001"
--                       maximumStepSize="0.1"
--                       initialStepSize="0.0001" />
--                   </oms:SimulationInformation>
--                 </oms:Annotations>
--               </ssc:Annotation>
--             </ssd:Annotations>
--           </ssd:System>
--           <ssd:System
--             name="System1">
--             <ssd:Connectors>
--               <ssd:Connector
--                 name="Input_1"
--                 kind="input">
--                 <ssc:Real />
--               </ssd:Connector>
--               <ssd:Connector
--                 name="Input_2"
--                 kind="input">
--                 <ssc:Real />
--               </ssd:Connector>
--               <ssd:Connector
--                 name="parameter_1"
--                 kind="parameter">
--                 <ssc:Real />
--               </ssd:Connector>
--               <ssd:Connector
--                 name="parameter_2"
--                 kind="parameter">
--                 <ssc:Real />
--               </ssd:Connector>
--               <ssd:Connector
--                 name="output"
--                 kind="output">
--                 <ssc:Real />
--               </ssd:Connector>
--             </ssd:Connectors>
--             <ssd:Annotations>
--               <ssc:Annotation
--                 type="org.openmodelica">
--                 <oms:Annotations>
--                   <oms:SimulationInformation>
--                     <oms:VariableStepSolver
--                       description="euler"
--                       absoluteTolerance="0.0001"
--                       relativeTolerance="0.0001"
--                       minimumStepSize="0.0001"
--                       maximumStepSize="0.1"
--                       initialStepSize="0.0001" />
--                   </oms:SimulationInformation>
--                 </oms:Annotations>
--               </ssc:Annotation>
--             </ssd:Annotations>
--           </ssd:System>
--         </ssd:Elements>
--         <ssd:Annotations>
--           <ssc:Annotation
--             type="org.openmodelica">
--             <oms:Annotations>
--               <oms:SimulationInformation>
--                 <oms:FixedStepMaster
--                   description="oms-ma"
--                   stepSize="0.001000"
--                   absoluteTolerance="0.000100"
--                   relativeTolerance="0.000100" />
--               </oms:SimulationInformation>
--             </oms:Annotations>
--           </ssc:Annotation>
--         </ssd:Annotations>
--       </ssd:System>
--       <ssd:DefaultExperiment
--         startTime="0.000000"
--         stopTime="1.000000">
--         <ssd:Annotations>
--           <ssc:Annotation
--             type="org.openmodelica">
--             <oms:Annotations>
--               <oms:SimulationInformation
--                 resultFile="referenceResources2.mat"
--                 loggingInterval="0.000000"
--                 bufferSize="10"
--                 signalFilter="resources/signalFilter.xml" />
--             </oms:Annotations>
--           </ssc:Annotation>
--         </ssd:Annotations>
--       </ssd:DefaultExperiment>
--     </ssd:SystemStructureDescription>
--   </oms:file>
--   <oms:file
--     name="resources/external_import_parameter_mapping.ssv">
--     <ssv:ParameterSet
--       xmlns:ssc="http://ssp-standard.org/SSP1/SystemStructureCommon"
--       xmlns:ssv="http://ssp-standard.org/SSP1/SystemStructureParameterValues"
--       version="1.0"
--       name="parameters">
--       <ssv:Parameters>
--         <ssv:Parameter
--           name="parameter_2">
--           <ssv:Real
--             value="-500" />
--         </ssv:Parameter>
--         <ssv:Parameter
--           name="cosim_parameters">
--           <ssv:Real
--             value="-400" />
--         </ssv:Parameter>
--         <ssv:Parameter
--           name="cosim_input">
--           <ssv:Real
--             value="-200" />
--         </ssv:Parameter>
--         <ssv:Parameter
--           name="Input_3">
--           <ssv:Real
--             value="-300" />
--         </ssv:Parameter>
--       </ssv:Parameters>
--     </ssv:ParameterSet>
--   </oms:file>
--   <oms:file
--     name="resources/external_import_parameter_mapping.ssm">
--     <ssm:ParameterMapping
--       xmlns:ssc="http://ssp-standard.org/SSP1/SystemStructureCommon"
--       xmlns:ssm="http://ssp-standard.org/SSP1/SystemStructureParameterMapping"
--       version="1.0">
--       <ssm:MappingEntry
--         source="cosim_parameters"
--         target="parameter_1" />
--       <ssm:MappingEntry
--         source="cosim_parameters"
--         target="System1.parameter_1" />
--       <ssm:MappingEntry
--         source="cosim_parameters"
--         target="System2.parameter_1" />
--       <ssm:MappingEntry
--         source="cosim_input"
--         target="Input_1" />
--       <ssm:MappingEntry
--         source="cosim_input"
--         target="Input_2" />
--       <ssm:MappingEntry
--         source="cosim_input"
--         target="System1.Input_1" />
--       <ssm:MappingEntry
--         source="cosim_input"
--         target="System1.Input_2" />
--       <ssm:MappingEntry
--         source="cosim_input"
--         target="System2.Input_1" />
--       <ssm:MappingEntry
--         source="cosim_input"
--         target="System2.Input_2" />
--     </ssm:ParameterMapping>
--   </oms:file>
--   <oms:file
--     name="resources/import_parameter_mapping.ssv">
--     <ssv:ParameterSet
--       xmlns:ssc="http://ssp-standard.org/SSP1/SystemStructureCommon"
--       xmlns:ssv="http://ssp-standard.org/SSP1/SystemStructureParameterValues"
--       version="1.0"
--       name="parameters">
--       <ssv:Parameters>
--         <ssv:Parameter
--           name="parameter_2">
--           <ssv:Real
--             value="-40" />
--         </ssv:Parameter>
--         <ssv:Parameter
--           name="cosim_parameters">
--           <ssv:Real
--             value="-30" />
--         </ssv:Parameter>
--         <ssv:Parameter
--           name="cosim_input">
--           <ssv:Real
--             value="20" />
--         </ssv:Parameter>
--         <ssv:Parameter
--           name="Input_3">
--           <ssv:Real
--             value="50" />
--         </ssv:Parameter>
--       </ssv:Parameters>
--     </ssv:ParameterSet>
--   </oms:file>
--   <oms:file
--     name="resources/import_parameter_mapping.ssm">
--     <ssm:ParameterMapping
--       xmlns:ssc="http://ssp-standard.org/SSP1/SystemStructureCommon"
--       xmlns:ssm="http://ssp-standard.org/SSP1/SystemStructureParameterMapping"
--       version="1.0">
--       <ssm:MappingEntry
--         source="cosim_parameters"
--         target="parameter_1" />
--       <ssm:MappingEntry
--         source="cosim_parameters"
--         target="System1.parameter_1" />
--       <ssm:MappingEntry
--         source="cosim_parameters"
--         target="System2.parameter_1" />
--       <ssm:MappingEntry
--         source="cosim_input"
--         target="Input_1" />
--       <ssm:MappingEntry
--         source="cosim_input"
--         target="Input_2" />
--       <ssm:MappingEntry
--         source="cosim_input"
--         target="System1.Input_1" />
--       <ssm:MappingEntry
--         source="cosim_input"
--         target="System1.Input_2" />
--       <ssm:MappingEntry
--         source="cosim_input"
--         target="System2.Input_1" />
--       <ssm:MappingEntry
--         source="cosim_input"
--         target="System2.Input_2" />
--     </ssm:ParameterMapping>
--   </oms:file>
--   <oms:file
--     name="resources/signalFilter.xml">
--     <oms:SignalFilter
--       version="1.0">
--       <oms:Variable
--         name="import_parameter_mapping.co_sim.Input_1"
--         type="Real"
--         kind="input" />
--       <oms:Variable
--         name="import_parameter_mapping.co_sim.Input_2"
--         type="Real"
--         kind="input" />
--       <oms:Variable
--         name="import_parameter_mapping.co_sim.Input_3"
--         type="Real"
--         kind="input" />
--       <oms:Variable
--         name="import_parameter_mapping.co_sim.Output_cref"
--         type="Real"
--         kind="output" />
--       <oms:Variable
--         name="import_parameter_mapping.co_sim.parameter_1"
--         type="Real"
--         kind="parameter" />
--       <oms:Variable
--         name="import_parameter_mapping.co_sim.parameter_2"
--         type="Real"
--         kind="parameter" />
--       <oms:Variable
--         name="import_parameter_mapping.co_sim.System2.Input_1"
--         type="Real"
--         kind="input" />
--       <oms:Variable
--         name="import_parameter_mapping.co_sim.System2.Input_2"
--         type="Real"
--         kind="input" />
--       <oms:Variable
--         name="import_parameter_mapping.co_sim.System2.parameter_1"
--         type="Real"
--         kind="parameter" />
--       <oms:Variable
--         name="import_parameter_mapping.co_sim.System2.parameter_2"
--         type="Real"
--         kind="parameter" />
--       <oms:Variable
--         name="import_parameter_mapping.co_sim.System2.output"
--         type="Real"
--         kind="output" />
--       <oms:Variable
--         name="import_parameter_mapping.co_sim.System1.Input_1"
--         type="Real"
--         kind="input" />
--       <oms:Variable
--         name="import_parameter_mapping.co_sim.System1.Input_2"
--         type="Real"
--         kind="input" />
--       <oms:Variable
--         name="import_parameter_mapping.co_sim.System1.parameter_1"
--         type="Real"
--         kind="parameter" />
--       <oms:Variable
--         name="import_parameter_mapping.co_sim.System1.parameter_2"
--         type="Real"
--         kind="parameter" />
--       <oms:Variable
--         name="import_parameter_mapping.co_sim.System1.output"
--         type="Real"
--         kind="output" />
--     </oms:SignalFilter>
--   </oms:file>
-- </oms:snapshot>
--
-- endResult
