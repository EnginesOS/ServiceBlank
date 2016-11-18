FROM {source_image?}
#default if no {source_image?}
FROM  engines/servicebase:$release
 
#repos to add 
[
{repo_uri,repo_key_uri?}
]

#OS packages? to install
[ 
{os_package_name,version?}
]

#module same as blueprint?
[
{type,name,os_pacakge} 
]

#packages? same as blueprint
[ 
{packages, src,name,destintation,extract_cmd}
]

#os_packages_to remove?
[
{name}
]


{start_command?} 
{is_foreground (true|false)}
#pid_file(s) is required is above is false   
[
{pid_file?}
]

{user,group}

#enviroments vars?
#value may be dynamic note these are not the env vars from the current service definition 
#those are are for teh consumer
[
{environment_name, value} 
]


#dirs_to create?
[
{path,owned(true|false),permissions(3 digits)}
]

{persistent dir?}
{install script?}
{Home_dir?}

#Source to cp ?
[
{srcfile,destination,perms,owned (true|false)}
]



