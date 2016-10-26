#Generate the Project jar, start the server and launch the agent

#echo "Deletion of eventual old jar ..."
#rm -f ./adx-agent/lib/argent.jar
#echo "  Deleted."


#echo "Creation of the new project jar ..."
#jar cf ./adx-agent/lib/argent.jar ./argent/bin/agents/* ./argent/.project ./argent/.classpath
#echo "  Jar created."

echo "Content of the lib folder :"
ls ./adx-agent/lib/

echo "Starting server ..."
cd ./adx-server/
sh ./runServer.sh &
echo "  Server launched"

cd ../adx-agent/
echo "Launching the agent ..."
sh ./runAgent.sh &
echo "  Agent Argent launched"
