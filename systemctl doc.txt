default
           Enter default mode. This is equivalent to systemctl isolate
           default.target. This operation is blocking by default, use
           --no-block to request asynchronous behavior.

       rescue
           Enter rescue mode. This is equivalent to systemctl isolate
           rescue.target. This operation is blocking by default, use
           --no-block to request asynchronous behavior.

       emergency
           Enter emergency mode. This is equivalent to systemctl isolate
           emergency.target. This operation is blocking by default, use
           --no-block to request asynchronous behavior.

       halt
           Shut down and halt the system. This is mostly equivalent to
           systemctl start halt.target --job-mode=replace-irreversibly
           --no-block, but also prints a wall message to all users. This
           command is asynchronous; it will return after the halt
           operation is enqueued, without waiting for it to complete.
           Note that this operation will simply halt the OS kernel after
           shutting down, leaving the hardware powered on. Use systemctl
           poweroff for powering off the system (see below).

           If combined with --force, shutdown of all running services is
           skipped, however all processes are killed and all file
           systems are unmounted or mounted read-only, immediately
           followed by the system halt. If --force is specified twice,
           the operation is immediately executed without terminating any
           processes or unmounting any file systems. This may result in
           data loss. Note that when --force is specified twice the halt
           operation is executed by systemctl itself, and the system
           manager is not contacted. This means the command should
           succeed even when the system manager has crashed.

       poweroff
           Shut down and power-off the system. This is mostly equivalent
           to systemctl start poweroff.target
           --job-mode=replace-irreversibly --no-block, but also prints a
           wall message to all users. This command is asynchronous; it
           will return after the power-off operation is enqueued,
           without waiting for it to complete.

           If combined with --force, shutdown of all running services is
           skipped, however all processes are killed and all file
           systems are unmounted or mounted read-only, immediately
           followed by the powering off. If --force is specified twice,
           the operation is immediately executed without terminating any
           processes or unmounting any file systems. This may result in
           data loss. Note that when --force is specified twice the
           power-off operation is executed by systemctl itself, and the
           system manager is not contacted. This means the command
           should succeed even when the system manager has crashed.

       reboot
           Shut down and reboot the system. This is mostly equivalent to
           systemctl start reboot.target --job-mode=replace-irreversibly
           --no-block, but also prints a wall message to all users. This
           command is asynchronous; it will return after the reboot
           operation is enqueued, without waiting for it to complete.

           If combined with --force, shutdown of all running services is
           skipped, however all processes are killed and all file
           systems are unmounted or mounted read-only, immediately
           followed by the reboot. If --force is specified twice, the
           operation is immediately executed without terminating any
           processes or unmounting any file systems. This may result in
           data loss. Note that when --force is specified twice the
           reboot operation is executed by systemctl itself, and the
           system manager is not contacted. This means the command
           should succeed even when the system manager has crashed.

           If the switch --reboot-argument= is given, it will be passed
           as the optional argument to the reboot(2) system call.

       kexec
           Shut down and reboot the system via kexec. This is equivalent
           to systemctl start kexec.target
           --job-mode=replace-irreversibly --no-block. This command is
           asynchronous; it will return after the reboot operation is
           enqueued, without waiting for it to complete.

           If combined with --force, shutdown of all running services is
           skipped, however all processes are killed and all file
           systems are unmounted or mounted read-only, immediately
           followed by the reboot.

       exit [EXIT_CODE]
           Ask the service manager to quit. This is only supported for
           user service managers (i.e. in conjunction with the --user
           option) or in containers and is equivalent to poweroff
           otherwise. This command is asynchronous; it will return after
           the exit operation is enqueued, without waiting for it to
           complete.

           The service manager will exit with the specified exit code,
           if EXIT_CODE is passed.

       switch-root ROOT [INIT]
           Switches to a different root directory and executes a new
           system manager process below it. This is intended for usage
           in initial RAM disks ("initrd"), and will transition from the
           initrd's system manager process (a.k.a. "init" process) to
           the main system manager process which is loaded from the
           actual host volume. This call takes two arguments: the
           directory that is to become the new root directory, and the
           path to the new system manager binary below it to execute as
           PID 1. If the latter is omitted or the empty string, a
           systemd binary will automatically be searched for and used as
           init. If the system manager path is omitted, equal to the
           empty string or identical to the path to the systemd binary,
           the state of the initrd's system manager process is passed to
           the main system manager, which allows later introspection of
           the state of the services involved in the initrd boot phase.

       suspend
           Suspend the system. This will trigger activation of the
           special target unit suspend.target. This command is
           asynchronous, and will return after the suspend operation is
           successfully enqueued. It will not wait for the
           suspend/resume cycle to complete.

       hibernate
           Hibernate the system. This will trigger activation of the
           special target unit hibernate.target. This command is
           asynchronous, and will return after the hibernation operation
           is successfully enqueued. It will not wait for the
           hibernate/thaw cycle to complete.

       hybrid-sleep
           Hibernate and suspend the system. This will trigger
           activation of the special target unit hybrid-sleep.target.
           This command is asynchronous, and will return after the
           hybrid sleep operation is successfully enqueued. It will not
           wait for the sleep/wake-up cycle to complete.

       suspend-then-hibernate
           Suspend the system and hibernate it after the delay specified
           in systemd-sleep.conf. This will trigger activation of the
           special target unit suspend-then-hibernate.target. This
           command is asynchronous, and will return after the hybrid
           sleep operation is successfully enqueued. It will not wait
           for the sleep/wake-up or hibernate/thaw cycle to complete.
