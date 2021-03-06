��    2      �  C   <      H     I     h     �     �  &   �     �     �  #        :     L     \     m     �     �     �     �     �  	   �  	   �     �     �                    /     F     e          �     �     �     �     �          "     5  #   L     p     �     �     �      �  !   �          5     J     d     ~     �  X  �  4   
  D   D
  J   �
  �   �
  ;   ]  >   �  <   �       ?   1  (   q     �     �     �  
   �  k   �  �   S  X  �     V  �  i  z  �  �  s     n     �     �     �  3   �  !   �          (     >  �   U     �     �            9   +  (   e     �     �     �     �     �  a   �  >   ^  '   �     �  D   �  D   &  H   k     ,           .              *       	       0              1                         &   #                  
       2            (                !   $   )   '      /                -      %                     "           +              error.action_exception_occured error.author_name_required error.fail_to_create_file error.invalid_alembic_env error.invalid_minimo_project_directory error.task.exception_in_case error.unrecognized_command error.unrecognized_project_template error.wrong_usage format.time.day format.time.hour format.time.minute format.time.ms format.time.second help.app help.flask.migration help.flask.model help.help help.init help.task.new help.task.run help.version info.create_dir info.create_file info.directory_existed info.exception_occured_in_task info.fail_to_perform_task info.failed_action info.flask.creating_dir info.flask.file_create info.performer_summary info.report_case_exception info.start_action info.succeed_to_perform_task info.task.add_task info.task.case_created info.task.creating_case_by_template info.task.creating_case_dir info.task.executing_task info.task.failed_tasks info.task.not_standard_case info.task.prepare_to_create_case info.task.report_mission_complete warning.directory_existed warning.file_existed warning.flask.no_template warning.task.case_existed warning.task.no_template warning.task.not_standard_case Project-Id-Version: mini-mo 0.1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-02-23 11:14+0800
PO-Revision-Date: 2018-02-23 11:14+0800
Last-Translator: philip1134 <philip1134@imior.com>
Language-Team: philip1134 <philip1134@imior.com>
Language: zh-cn
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
 执行时产生异常，请检查任务代码！
{0} 必须指定作者名! 使用参数 '-a [author]' 指定作者名。 创建文件 {0} 失败，请重新创建这个文件！
失败原因:
{1} 非法的 alembic 环境！ 请在项目根目录下执行该操作，或通过执行命令 'alembic init migrations' 初始化环境。 非 minimo 项目，请使用 'minimo help' 查看帮助。 执行 {0} 时产生异常，请检查任务用例的代码！ 未识别的命令，请使用 'minimo help' 查看帮助。 未识别的模板名 '{0}' 错误的使用方法，请使用 'minimo help' 查看帮助。 {:d} 天 {:d} 小时 {:d} 分 {:.3f} 秒 {:d} 小时 {:d} 分 {:.3f} 秒 {:d} 分 {:.3f} 秒 {:.3f} 毫秒 {:.3f} 秒 ** {project_name} **

用法： minimo <sub-command> [options] [args]

可用的子命令：
{sub_commands} 创建 migration 脚本
用法: minimo migration migration_script_name
在 flask 项目的 migrations 目录下通过 alembic 创建 [timestamp]_migration_script_name.py 创建 model，并创建对应的 migration 脚本
用法: minimo model ModelName -a AuthorName
在 flask 项目的 app/models 目录下创建 model_name.py，并在 migrations 下通过 alembic 创建 [timestamp]_create_model_name.py 数据库迁移文件。
如果使用了 --without-migration 选项，则不会创建数据库迁移文件。 显示帮助信息 创建项目
用法: minimo init PROJECT_NAME -t TEMPLATE_NAME -s PROJECT_ABBREVIATION

-s PROJECT_ABBREVIATION 指定项目简称，选填。 如果留空则取项目名称的前三个字母并大写。

-t TEMPLATE_NAME 指定使用的项目模板，选填。
如果 TEMPLATE_NAME 为模板名称，则会在 minimo 的模板目录查找对应的项目模板；
如果为目录地址，则根据该地址提供的项目模板创建项目。
目前支持的模板有：
    flask - 以 python flask 框架为基础的 web 应用项目
    task - 以 minimo 原生任务功能库为基础的项目，一般应用于自动化测试等任务执行类项目 创建任务用例
用法: minimo new TASK_SUITE/TASK_CASE -a AUTHOR
或:   minimo new TASK_CASE -a AUTHOR

根据项目用例模板初始化用例代码，代码被创建在
    project.root/cases/TASK_SUITE/TASK_CASE
如果TASK_SUITE目录下有用例模板，则优先使用该模板创建
-a AUTHOR 指定作者名，必填。同一人在项目中建议保持同一名称。 执行指定的任务用例集或用例
用法: minimo run [task-suite]
或: minimo run [task-suite/task-case]

所以，指定task的格式可以是 '用例集' 或者 '用例集/用例名称'。 例如: 'my_tasksuite' 或 'my_tasksuite/my_taskcase'，如果指定任务集名称，则执行该项目下的所有任务用例。如果指定用例名称，则执行指定的任务用例。
这两种方式可以一起使用，例如：
    minimo run my-task-suite1 my-task-suite2/case1 my-task-suite3/case3 显示版本信息 创建目录 {0}     创建文件 {0} 目录 {0} 已存在 在执行 {0}/{1} 时出现错误，操作中断！ 在执行 {0}/{1} 时出现错误 异常操作: {0}
{1} 创建文件夹： {} 创建 {} 文件： {}  
{split}
任务结束
{success} 个成功
{failure} 个失败
{error} 个错误
{warning} 个警告

共使用了 {duration}
{split} {0}: 执行异常
{1} 执行操作 {0}... 成功执行 {0}/{1} 添加任务 {0} 任务用例创建完成，请查看目录 {0}.root/cases 使用项目模板创建任务用例 {0} 创建目录 cases/{0} 执行任务 {0} 异常任务包括:
x {0} 非标准用例 准备创建任务用例...  

{0}
任务结束
共有 {1} 个任务被执行， 其中 {2} 个任务在执行时产生异常 目录 {0} 已存在，放弃在此目录下的创建操作！ 文件已存在，放弃创建操作！ 未找到对应的模板！ 目录 cases/{0} 已存在，放弃在此目录下的创建操作！ 没有找到任务模板，放弃在 cases/{0} 下的创建操作！ {0} 不是 {1} 的标准任务用例，请检查路径或单独执行！ 