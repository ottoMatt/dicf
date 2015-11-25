PROJECT_PATH = ""
GEN_PATH = "problems/tmp/gen/"


TEMP_PATH = "problems/tmp/"
TEMP_GEN_PATH = TEMP_PATH + "gen/"
TEMP_RSRC_PATH = TEMP_PATH + "ressources/"

TOOLS_PATH = "../ExternalTools/"
BUILDGRAPH_JAR = TOOLS_PATH + "buildGraph.jar"
KMETIS_EX = TOOLS_PATH + "metis-4.0.3/kmetis"
GRAPH2DCF_JAR = TOOLS_PATH + "graph2dcf.jar"
MAKESOLVARIANT_JAR = TOOLS_PATH + "makeSolVariant.jar"
CNFSAT2SOL_JAR = TOOLS_PATH + "cnfsat2sol.jar"
CMPCSQ_JAR = TOOLS_PATH + "cmpCsq.jar"
P2SOL_JAR = TOOLS_PATH + 'p2sol.jar'

CFLAUNCHER_JAR = TOOLS_PATH + 'CFLauncher_9.jar'

# print('WORK DIR: '+os.getcwd() + "\n")
# LOGGING
ROOT_LOGFILENAME = 'logs/root.stderr.log'
fmt = '%(asctime)s %(filename)-18s %(levelname)-8s: %(message)s'

JAVA_ARGS = ['-d64', '-Xms512m', '-Xmx6g', '-jar']  # replace Heap size max
