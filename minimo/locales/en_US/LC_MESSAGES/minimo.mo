��    2      �  C   <      H     I     h     �     �  &   �     �     �  #        :     L     \     m     �     �     �     �     �  	   �  	   �     �     �                    /     F     e          �     �     �     �     �          "     5  #   L     p     �     �     �      �  !   �          5     J     d     ~     �  X  �  3   
  E   C
  $   �
  �   �
  D   7  &   |  6   �  $   �  -   �  &   -     T     r  	   �  
   �  j   �  �     L  �     �  �    �  �  �  :     �          !     5  &   S     z     �     �     �  �   �     Q     l     �     �  6   �  #   �               +     ?     Q  V   k  -   �  $   �       3   (  6   \  9   �     ,           .              *       	       0              1                         &   #                  
       2            (                !   $   )   '      /                -      %                     "           +              error.action_exception_occured error.author_name_required error.fail_to_create_file error.invalid_alembic_env error.invalid_minimo_project_directory error.task.exception_in_case error.unrecognized_command error.unrecognized_project_template error.wrong_usage format.time.day format.time.hour format.time.minute format.time.ms format.time.second help.app help.flask.migration help.flask.model help.help help.init help.task.new help.task.run help.version info.create_dir info.create_file info.directory_existed info.exception_occured_in_task info.fail_to_perform_task info.failed_action info.flask.creating_dir info.flask.file_create info.performer_summary info.report_case_exception info.start_action info.succeed_to_perform_task info.task.add_task info.task.case_created info.task.creating_case_by_template info.task.creating_case_dir info.task.executing_task info.task.failed_tasks info.task.not_standard_case info.task.prepare_to_create_case info.task.report_mission_complete warning.directory_existed warning.file_existed warning.flask.no_template warning.task.case_existed warning.task.no_template warning.task.not_standard_case Project-Id-Version: mini-mo 0.1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-02-23 11:14+0800
PO-Revision-Date: 2018-02-23 11:14+0800
Last-Translator: philip1134 <philip1134@imior.com>
Language-Team: philip1134 <philip1134@imior.com>
Language: en-us
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
 error occured, please check out your task code!
{0} author name required! use option '-a [author]' to specify author name fail to create file {0}!
reason:
{1} invalid alembic environment! please run this step under project root, or run command 'alembic init migrations' to initialize enviroment. not in minimo project root folder，please get help by 'minimo help' exception occured while performing {0} unrecognized command, please get help by 'minimo help' unrecognized project template '{0}'. wrong usage, please get help by 'minimo help' {:d} day {:d} hour {:d} min {:.3f} sec {:d} hour {:d} min {:.3f} sec {:d} min {:.3f} sec {:.3f} ms {:.3f} sec ** {project_name} **

usage: minimo <sub-command> [options] [args]

available sub-commands:
{sub_commands} create migration script.
usage: minimo migration migration_script_name

that will create [timestamp]_migration_script_name.py under 'migrations' folder via alembic. create model for flask project, and the related migration script.
usage: minimo model ModelName -a AuthorName

that will create model_name.py under 'app/models' folder, and migration script file [timestamp]_create_model_name.py under 'migrations' folder via alembic.
if used --without-migration, it will not create migration script. show help information create a new minimo project
usage: minimo init PROJECT_NAME -t TEMPLATE_NAME -s PROJECT_ABBREVIATION

-s PROJECT_ABBREVIATION specify project abbreviation, optional. 

-t TEMPLATE_NAME specify project template, optional
TEMPLATE_NAME can be a template name, minimo will search the name under minimo/templates and create project as it, or, it can be a directory path, minimo will check out that path and create project as it.
currently supported templates:
    flask - web project based on python flask framework
    task - task execution project based on minimo task management libs, normally applied in automated test and task management related project create a new task case by the template
usage: minimo new TASK_SUITE/TASK_CASE -a AUTHOR
or:   minimo new TASK_CASE -a AUTHOR

create new task case by project case-template, case code will be placed under
    project.root/cases/TASK_SUITE/TASK_CASE
if there's suite specified case-template under TASK_SUITE directory，minimo will prefer to use it to create case.
-a AUTHOR specify the author name, it's required. perform the specified task suite or case
usage: minimo run [task-suite]
or: minimo run [task-suite/task-case]

that means, we can perform the whole task-suite or a single task-case (or some task-cases). such as: 'my_tasksuite' or 'my_tasksuite/my_taskcase'. if task suite is specified, all the cases under that suite will be performed.
the two types can be mixed, such as:
    minimo run my-task-suite1 my-task-suite2/case1 my-task-suite3/case3 print version number create directory {0}     create file {0} directory {0} already exsited error occured while performing {0}/{1} fail to perform {0}/{1} failed action: {0}
{1} create folder: {} creating {} file: {}  
{split}
mission complete!
{success} success
{failure} failure
{error} error
{warning} warning

totally cost {duration}
{split} {0}: exception occured
{1} start action {0}... succeed to perform {0}/{1} add task {0} case created, please check it out under {0}.root/cases create case by project template {0} create directory cases/{0} run task {0} failed tasks:
x {0} not standard case prepare to create case...  

{0}
mission complete!
totally {1} cases were executed,  {2} cases raised exception. directory {0} already existed, skip creating! file already existed, skip creating! no template found! directory cases/{0} already existed, skip creating! no template found, abort creating task under cases/{0} {0} is not {1} standard case, please run it respectively. 