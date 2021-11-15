	.text
	.file	"posix_allocator.cpp"
	.section	.text.halide_default_malloc,"ax",@progbits
	.weak	halide_default_malloc           # -- Begin function halide_default_malloc
	.p2align	4, 0x90
	.type	halide_default_malloc,@function
halide_default_malloc:                  # @halide_default_malloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	64(%rsi), %rdi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB0_1
# %bb.2:
	movq	%rax, %rcx
	addq	$71, %rax
	andq	$-64, %rax
	movq	%rcx, -8(%rax)
	popq	%rbp
	retq
.LBB0_1:
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	halide_default_malloc, .Lfunc_end0-halide_default_malloc
                                        # -- End function
	.section	.text.halide_default_free,"ax",@progbits
	.weak	halide_default_free             # -- Begin function halide_default_free
	.p2align	4, 0x90
	.type	halide_default_free,@function
halide_default_free:                    # @halide_default_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	-8(%rsi), %rdi
	popq	%rbp
	jmp	free@PLT                        # TAILCALL
.Lfunc_end1:
	.size	halide_default_free, .Lfunc_end1-halide_default_free
                                        # -- End function
	.section	.text.halide_set_custom_malloc,"ax",@progbits
	.weak	halide_set_custom_malloc        # -- Begin function halide_set_custom_malloc
	.p2align	4, 0x90
	.type	halide_set_custom_malloc,@function
halide_set_custom_malloc:               # @halide_set_custom_malloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal13custom_mallocE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	halide_set_custom_malloc, .Lfunc_end2-halide_set_custom_malloc
                                        # -- End function
	.section	.text.halide_set_custom_free,"ax",@progbits
	.weak	halide_set_custom_free          # -- Begin function halide_set_custom_free
	.p2align	4, 0x90
	.type	halide_set_custom_free,@function
halide_set_custom_free:                 # @halide_set_custom_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal11custom_freeE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	halide_set_custom_free, .Lfunc_end3-halide_set_custom_free
                                        # -- End function
	.section	.text.halide_malloc,"ax",@progbits
	.weak	halide_malloc                   # -- Begin function halide_malloc
	.p2align	4, 0x90
	.type	halide_malloc,@function
halide_malloc:                          # @halide_malloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal13custom_mallocE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                           # TAILCALL
.Lfunc_end4:
	.size	halide_malloc, .Lfunc_end4-halide_malloc
                                        # -- End function
	.section	.text.halide_free,"ax",@progbits
	.weak	halide_free                     # -- Begin function halide_free
	.p2align	4, 0x90
	.type	halide_free,@function
halide_free:                            # @halide_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal11custom_freeE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                           # TAILCALL
.Lfunc_end5:
	.size	halide_free, .Lfunc_end5-halide_free
                                        # -- End function
	.section	.text.halide_default_error,"ax",@progbits
	.weak	halide_default_error            # -- Begin function halide_default_error
	.p2align	4, 0x90
	.type	halide_default_error,@function
halide_default_error:                   # @halide_default_error
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$4104, %rsp                     # imm = 0x1008
	movq	%rsi, %rbx
	movq	%rdi, %r15
	leaq	-26(%rbp), %rsi
	leaq	.L.str(%rip), %rdx
	leaq	-4120(%rbp), %r14
	movq	%r14, %rdi
	callq	halide_string_to_string@PLT
	leaq	4094(%rax), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	halide_string_to_string@PLT
	cmpb	$10, -1(%rax)
	je	.LBB6_2
# %bb.1:
	movw	$10, (%rax)
	incq	%rax
.LBB6_2:
	subq	%r14, %rax
	incq	%rax
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	halide_print@PLT
	callq	abort@PLT
	addq	$4104, %rsp                     # imm = 0x1008
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	halide_default_error, .Lfunc_end6-halide_default_error
                                        # -- End function
	.section	.text.halide_error,"ax",@progbits
	.weak	halide_error                    # -- Begin function halide_error
	.p2align	4, 0x90
	.type	halide_error,@function
halide_error:                           # @halide_error
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal13error_handlerE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                           # TAILCALL
.Lfunc_end7:
	.size	halide_error, .Lfunc_end7-halide_error
                                        # -- End function
	.section	.text.halide_set_error_handler,"ax",@progbits
	.weak	halide_set_error_handler        # -- Begin function halide_set_error_handler
	.p2align	4, 0x90
	.type	halide_set_error_handler,@function
halide_set_error_handler:               # @halide_set_error_handler
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal13error_handlerE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	halide_set_error_handler, .Lfunc_end8-halide_set_error_handler
                                        # -- End function
	.section	.text.halide_print,"ax",@progbits
	.weak	halide_print                    # -- Begin function halide_print
	.p2align	4, 0x90
	.type	halide_print,@function
halide_print:                           # @halide_print
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal12custom_printE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                           # TAILCALL
.Lfunc_end9:
	.size	halide_print, .Lfunc_end9-halide_print
                                        # -- End function
	.section	.text.halide_set_custom_print,"ax",@progbits
	.weak	halide_set_custom_print         # -- Begin function halide_set_custom_print
	.p2align	4, 0x90
	.type	halide_set_custom_print,@function
halide_set_custom_print:                # @halide_set_custom_print
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal12custom_printE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	halide_set_custom_print, .Lfunc_end10-halide_set_custom_print
                                        # -- End function
	.section	.text.halide_start_clock,"ax",@progbits
	.weak	halide_start_clock              # -- Begin function halide_start_clock
	.p2align	4, 0x90
	.type	halide_start_clock,@function
halide_start_clock:                     # @halide_start_clock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	halide_reference_clock_inited@GOTPCREL(%rip), %rbx
	cmpb	$0, (%rbx)
	jne	.LBB11_2
# %bb.1:
	movq	halide_reference_clock@GOTPCREL(%rip), %rdx
	movl	$228, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	syscall@PLT
	movb	$1, (%rbx)
.LBB11_2:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	halide_start_clock, .Lfunc_end11-halide_start_clock
                                        # -- End function
	.section	.text.halide_current_time_ns,"ax",@progbits
	.weak	halide_current_time_ns          # -- Begin function halide_current_time_ns
	.p2align	4, 0x90
	.type	halide_current_time_ns,@function
halide_current_time_ns:                 # @halide_current_time_ns
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-16(%rbp), %rdx
	movl	$228, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	syscall@PLT
	vmovdqa	-16(%rbp), %xmm0
	movq	halide_reference_clock@GOTPCREL(%rip), %rax
	vpsubq	(%rax), %xmm0, %xmm0
	vmovq	%xmm0, %rax
	imulq	$1000000000, %rax, %rcx         # imm = 0x3B9ACA00
	vpextrq	$1, %xmm0, %rax
	addq	%rcx, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	halide_current_time_ns, .Lfunc_end12-halide_current_time_ns
                                        # -- End function
	.section	.text.halide_sleep_ms,"ax",@progbits
	.weak	halide_sleep_ms                 # -- Begin function halide_sleep_ms
	.p2align	4, 0x90
	.type	halide_sleep_ms,@function
halide_sleep_ms:                        # @halide_sleep_ms
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	imull	$1000, %esi, %edi               # imm = 0x3E8
	popq	%rbp
	jmp	usleep@PLT                      # TAILCALL
.Lfunc_end13:
	.size	halide_sleep_ms, .Lfunc_end13-halide_sleep_ms
                                        # -- End function
	.section	.text.halide_default_print,"ax",@progbits
	.weak	halide_default_print            # -- Begin function halide_default_print
	.p2align	4, 0x90
	.type	halide_default_print,@function
halide_default_print:                   # @halide_default_print
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	%rsi, %rdi
	callq	strlen@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	write@PLT                       # TAILCALL
.Lfunc_end14:
	.size	halide_default_print, .Lfunc_end14-halide_default_print
                                        # -- End function
	.section	.text.halide_host_cpu_count,"ax",@progbits
	.weak	halide_host_cpu_count           # -- Begin function halide_host_cpu_count
	.p2align	4, 0x90
	.type	halide_host_cpu_count,@function
halide_host_cpu_count:                  # @halide_host_cpu_count
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$84, %edi
	popq	%rbp
	jmp	sysconf@PLT                     # TAILCALL
.Lfunc_end15:
	.size	halide_host_cpu_count, .Lfunc_end15-halide_host_cpu_count
                                        # -- End function
	.section	.text.halide_thread_yield,"ax",@progbits
	.weak	halide_thread_yield             # -- Begin function halide_thread_yield
	.p2align	4, 0x90
	.type	halide_thread_yield,@function
halide_thread_yield:                    # @halide_thread_yield
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	jmp	sched_yield@PLT                 # TAILCALL
.Lfunc_end16:
	.size	halide_thread_yield, .Lfunc_end16-halide_thread_yield
                                        # -- End function
	.section	.text.halide_default_do_task,"ax",@progbits
	.weak	halide_default_do_task          # -- Begin function halide_default_do_task
	.p2align	4, 0x90
	.type	halide_default_do_task,@function
halide_default_do_task:                 # @halide_default_do_task
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rax
	movl	%edx, %esi
	movq	%rcx, %rdx
	popq	%rbp
	jmpq	*%rax                           # TAILCALL
.Lfunc_end17:
	.size	halide_default_do_task, .Lfunc_end17-halide_default_do_task
                                        # -- End function
	.section	.text.halide_default_do_loop_task,"ax",@progbits
	.weak	halide_default_do_loop_task     # -- Begin function halide_default_do_loop_task
	.p2align	4, 0x90
	.type	halide_default_do_loop_task,@function
halide_default_do_loop_task:            # @halide_default_do_loop_task
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rax
	movl	%edx, %esi
	movl	%ecx, %edx
	movq	%r8, %rcx
	movq	%r9, %r8
	popq	%rbp
	jmpq	*%rax                           # TAILCALL
.Lfunc_end18:
	.size	halide_default_do_loop_task, .Lfunc_end18-halide_default_do_loop_task
                                        # -- End function
	.section	.text.halide_default_do_par_for,"ax",@progbits
	.weak	halide_default_do_par_for       # -- Begin function halide_default_do_par_for
	.p2align	4, 0x90
	.type	halide_default_do_par_for,@function
halide_default_do_par_for:              # @halide_default_do_par_for
# %bb.0:
	testl	%ecx, %ecx
	jle	.LBB19_1
# %bb.2:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
	movq	$0, -144(%rbp)
	movl	%edx, -108(%rbp)
	movl	%ecx, -104(%rbp)
	movb	$0, -96(%rbp)
	movl	$0, -112(%rbp)
	movq	%r8, -136(%rbp)
	movl	$0, -100(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, -128(%rbp)
	movq	%rsi, -88(%rbp)
	movq	%rdi, -40(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -24(%rbp)
	movb	$0, -20(%rbp)
	leaq	-144(%rbp), %rbx
	movq	%rbx, -72(%rbp)
	movl	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %r14
	movq	%r14, %rdi
	callq	halide_mutex_lock@PLT
	movl	$1, %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_@PLT
	movq	%rbx, %rdi
	callq	_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE@PLT
	movq	%r14, %rdi
	callq	halide_mutex_unlock@PLT
	movl	-28(%rbp), %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB19_1:
	xorl	%eax, %eax
	retq
.Lfunc_end19:
	.size	halide_default_do_par_for, .Lfunc_end19-halide_default_do_par_for
                                        # -- End function
	.section	.text.halide_mutex_lock,"ax",@progbits
	.weak	halide_mutex_lock               # -- Begin function halide_mutex_lock
	.p2align	4, 0x90
	.type	halide_mutex_lock,@function
halide_mutex_lock:                      # @halide_mutex_lock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	$1, %ecx
	xorl	%eax, %eax
	lock		cmpxchgq	%rcx, (%rdi)
	jne	.LBB20_1
.LBB20_4:                               # %.loopexit
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_1:
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	movl	$40, %r12d
	movq	_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE@GOTPCREL(%rip), %r13
	movq	_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib@GOTPCREL(%rip), %r15
	leaq	-80(%rbp), %r14
	.p2align	4, 0x90
.LBB20_2:                               # =>This Inner Loop Header: Depth=1
	testb	$1, %al
	jne	.LBB20_5
# %bb.3:                                # %.preheader
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	%rax, %rcx
	orq	$1, %rcx
	lock		cmpxchgq	%rcx, (%rbx)
	jne	.LBB20_2
	jmp	.LBB20_4
.LBB20_5:                               # %.loopexit1
                                        #   in Loop: Header=BB20_2 Depth=1
	testl	%r12d, %r12d
	jg	.LBB20_10
# %bb.6:                                #   in Loop: Header=BB20_2 Depth=1
	movl	%r12d, %ecx
.LBB20_7:                               #   in Loop: Header=BB20_2 Depth=1
	testb	$2, %al
	jne	.LBB20_12
# %bb.8:                                #   in Loop: Header=BB20_2 Depth=1
	movq	%rax, %rdx
	orq	$2, %rdx
	lock		cmpxchgq	%rdx, (%rbx)
	jne	.LBB20_9
.LBB20_12:                              #   in Loop: Header=BB20_2 Depth=1
	movq	_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb@GOTPCREL(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	%rbx, -48(%rbp)
	movq	%r13, -80(%rbp)
	movq	%r15, -64(%rbp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE@PLT
	cmpq	%rbx, %rax
	je	.LBB20_4
# %bb.13:                               #   in Loop: Header=BB20_2 Depth=1
	movq	(%rbx), %rax
	movl	$40, %r12d
	jmp	.LBB20_2
.LBB20_10:                              #   in Loop: Header=BB20_2 Depth=1
	xorl	%ecx, %ecx
	cmpl	$1, %r12d
	je	.LBB20_7
# %bb.11:                               #   in Loop: Header=BB20_2 Depth=1
	decl	%r12d
	callq	halide_thread_yield@PLT
	movq	(%rbx), %rax
	jmp	.LBB20_2
.LBB20_9:                               #   in Loop: Header=BB20_2 Depth=1
	movl	%ecx, %r12d
	jmp	.LBB20_2
.Lfunc_end20:
	.size	halide_mutex_lock, .Lfunc_end20-halide_mutex_lock
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_ # -- Begin function _ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_,@function
_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_: # @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rsi, %r9
	movl	%edi, %r12d
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rax
	cmpb	$0, 2121(%rax)
	movq	%rdx, -64(%rbp)                 # 8-byte Spill
	jne	.LBB21_10
# %bb.1:                                # %.preheader8.preheader
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rdx
	leaq	12(%rdx), %rax
	leaq	13(%rdx), %rcx
	addq	$2128, %rdx                     # imm = 0x850
	.p2align	4, 0x90
.LBB21_2:                               # %.preheader8
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rax)
	jne	.LBB21_3
# %bb.4:                                #   in Loop: Header=BB21_2 Depth=1
	incq	%rax
	cmpq	%rcx, %rdx
	movq	%rcx, %rsi
	cmovaq	%rdx, %rsi
	cmpq	%rax, %rsi
	jne	.LBB21_2
	jmp	.LBB21_5
.LBB21_3:
	movq	%rax, %rsi
.LBB21_5:
	movq	%r9, %r14
	movl	$2128, %eax                     # imm = 0x850
	addq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rax
	cmpq	%rax, %rsi
	je	.LBB21_7
# %bb.6:
	leaq	.L.str.7(%rip), %rsi
	xorl	%edi, %edi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB21_7:
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rbx
	movl	8(%rbx), %edi
	testl	%edi, %edi
	jne	.LBB21_9
# %bb.8:
	callq	_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv@PLT
	movl	%eax, %edi
	movl	%eax, 8(%rbx)
.LBB21_9:
	callq	_ZN6Halide7Runtime8Internal17clamp_num_threadsEi@PLT
	movl	%eax, 8(%rbx)
	movb	$1, 2121(%rbx)
	movq	-64(%rbp), %rdx                 # 8-byte Reload
	movq	%r14, %r9
.LBB21_10:
	movl	%r12d, %r15d
	testl	%r12d, %r12d
	movq	%r9, -72(%rbp)                  # 8-byte Spill
	movl	%r12d, -52(%rbp)                # 4-byte Spill
	jle	.LBB21_11
# %bb.12:
	cmpl	$1, %r12d
	jne	.LBB21_27
# %bb.13:
	movl	$-1, %edi
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
	xorl	%r10d, %r10d
	xorl	%r13d, %r13d
.LBB21_14:                              # %.unr-lcssa
	testb	$1, %r15b
	movq	-72(%rbp), %r9                  # 8-byte Reload
	je	.LBB21_18
# %bb.15:                               # %.epil.preheader
	shlq	$7, %rax
	movl	44(%r9,%rax), %ecx
	addl	%ecx, %r12d
	testl	%ecx, %ecx
	movzbl	%r13b, %r13d
	movl	$1, %ecx
	cmovel	%ecx, %r13d
	movzbl	%r14b, %r14d
	cmovnel	%ecx, %r14d
	cmpl	$0, 32(%r9,%rax)
	movzbl	%r10b, %r10d
	cmovnel	%ecx, %r10d
	cmpb	$0, 48(%r9,%rax)
	je	.LBB21_17
# %bb.16:
	incl	%edi
	jmp	.LBB21_18
.LBB21_11:
	xorl	%r13d, %r13d
	movl	$-1, %edi
	xorl	%r10d, %r10d
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	testq	%rdx, %rdx
	movl	%r10d, -56(%rbp)                # 4-byte Spill
	jne	.LBB21_33
.LBB21_20:
	movl	%edi, -48(%rbp)                 # 4-byte Spill
	movl	%r14d, %eax
	orb	%r10b, %al
	movb	%al, -41(%rbp)                  # 1-byte Spill
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rbx
	movl	24(%rbx), %ecx
	cmpl	$255, %ecx
	jg	.LBB21_25
# %bb.21:                               # %.preheader.preheader
	movb	-41(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addl	%eax, %r12d
	jmp	.LBB21_22
	.p2align	4, 0x90
.LBB21_24:                              #   in Loop: Header=BB21_22 Depth=1
	incl	28(%rbx)
	movq	_ZN6Halide7Runtime8Internal13worker_threadEPv@GOTPCREL(%rip), %rdi
	xorl	%esi, %esi
	callq	halide_spawn_thread@PLT
	movslq	24(%rbx), %rdx
	leal	1(%rdx), %ecx
	movl	%ecx, 24(%rbx)
	movq	%rax, 72(%rbx,%rdx,8)
	cmpq	$255, %rdx
	jge	.LBB21_25
.LBB21_22:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movl	8(%rbx), %eax
	decl	%eax
	cmpl	%eax, %ecx
	jl	.LBB21_24
# %bb.23:                               #   in Loop: Header=BB21_22 Depth=1
	subl	2124(%rbx), %ecx
	incl	%ecx
	cmpl	%r12d, %ecx
	jl	.LBB21_24
.LBB21_25:                              # %.loopexit
	testb	$1, -41(%rbp)                   # 1-byte Folded Reload
	movq	-72(%rbp), %r9                  # 8-byte Reload
	movl	-52(%rbp), %esi                 # 4-byte Reload
	movl	-48(%rbp), %edi                 # 4-byte Reload
	je	.LBB21_37
# %bb.26:
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rax
	incl	2124(%rax)
	jmp	.LBB21_37
.LBB21_27:                              # %.new
	movl	%r15d, %r8d
	andl	$-2, %r8d
	leaq	176(%r9), %rbx
	movl	$-1, %edi
	xorl	%eax, %eax
	movl	$1, %r9d
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
	xorl	%r10d, %r10d
	xorl	%r13d, %r13d
	jmp	.LBB21_28
	.p2align	4, 0x90
.LBB21_49:                              #   in Loop: Header=BB21_28 Depth=1
	addl	-8(%rbx), %edi
.LBB21_50:                              #   in Loop: Header=BB21_28 Depth=1
	addl	%ecx, %r12d
	addq	$2, %rax
	addq	$256, %rbx                      # imm = 0x100
	cmpq	%rax, %r8
	je	.LBB21_14
.LBB21_28:                              # =>This Inner Loop Header: Depth=1
	movl	-144(%rbx), %r11d
	movl	-132(%rbx), %esi
	cmpb	$0, -128(%rbx)
	je	.LBB21_30
# %bb.29:                               #   in Loop: Header=BB21_28 Depth=1
	incl	%edi
	jmp	.LBB21_31
	.p2align	4, 0x90
.LBB21_30:                              #   in Loop: Header=BB21_28 Depth=1
	addl	-136(%rbx), %edi
.LBB21_31:                              #   in Loop: Header=BB21_28 Depth=1
	addl	%esi, %r12d
	testl	%esi, %esi
	movzbl	%r13b, %r13d
	cmovel	%r9d, %r13d
	movl	-4(%rbx), %ecx
	testl	%ecx, %ecx
	cmovel	%r9d, %r13d
	orl	%ecx, %esi
	movzbl	%r14b, %r14d
	cmovnel	%r9d, %r14d
	orl	-16(%rbx), %r11d
	movzbl	%r10b, %r10d
	cmovnel	%r9d, %r10d
	cmpb	$0, (%rbx)
	je	.LBB21_49
# %bb.32:                               #   in Loop: Header=BB21_28 Depth=1
	incl	%edi
	jmp	.LBB21_50
.LBB21_17:
	addl	40(%r9,%rax), %edi
.LBB21_18:                              # %.epilog-lcssa
	andb	$1, %r13b
	testq	%rdx, %rdx
	movl	%r10d, -56(%rbp)                # 4-byte Spill
	je	.LBB21_20
.LBB21_33:
	movl	112(%rdx), %eax
	imull	44(%rdx), %eax
	subl	96(%rdx), %eax
	cmpl	%eax, %r12d
	jle	.LBB21_35
# %bb.34:
	leaq	.L.str.3(%rip), %rsi
	movl	%edi, -48(%rbp)                 # 4-byte Spill
	xorl	%edi, %edi
	movq	%r9, %r12
	callq	halide_print@PLT
	callq	abort@PLT
	movl	-48(%rbp), %edi                 # 4-byte Reload
	movl	-56(%rbp), %r10d                # 4-byte Reload
	movq	%r12, %r9
	movq	-64(%rbp), %rdx                 # 8-byte Reload
.LBB21_35:
	movl	%r14d, %eax
	orb	%r10b, %al
	testb	$1, %al
	movl	-52(%rbp), %esi                 # 4-byte Reload
	je	.LBB21_37
# %bb.36:
	incl	96(%rdx)
.LBB21_37:
	testl	%esi, %esi
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rbx
	jle	.LBB21_41
# %bb.38:
	movq	16(%rbx), %rcx
	leaq	1(%r15), %rax
	shlq	$7, %r15
	addq	%r9, %r15
	.p2align	4, 0x90
.LBB21_39:                              # =>This Inner Loop Header: Depth=1
	movq	%rcx, -64(%r15)
	movq	%r9, -56(%r15)
	movl	%esi, -48(%r15)
	movl	$0, -32(%r15)
	addq	$-128, %r15
	decq	%rax
	movq	%r15, %rcx
	cmpq	$1, %rax
	jg	.LBB21_39
# %bb.40:
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rbx
	movq	%r15, 16(%rbx)
.LBB21_41:
	movl	24(%rbx), %eax
	movl	64(%rbx), %ecx
	cmpl	%eax, %ecx
	movl	%edi, %edx
	cmovll	%eax, %edx
	cmpl	$0, 68(%rbx)
	cmovnel	%eax, %edx
	cmpl	%ecx, %edi
	cmovgl	%eax, %edx
	movl	%edx, 32(%rbx)
	leaq	40(%rbx), %rdi
	callq	halide_cond_broadcast@PLT
	movl	32(%rbx), %eax
	cmpl	28(%rbx), %eax
	jle	.LBB21_44
# %bb.42:
	leaq	48(%rbx), %rdi
	callq	halide_cond_broadcast@PLT
	testb	%r13b, %r13b
	je	.LBB21_44
# %bb.43:
	leaq	56(%rbx), %rdi
	callq	halide_cond_broadcast@PLT
.LBB21_44:
	orb	-56(%rbp), %r14b                # 1-byte Folded Reload
	testb	$1, %r14b
	je	.LBB21_48
# %bb.45:
	movq	-64(%rbp), %rax                 # 8-byte Reload
	testq	%rax, %rax
	je	.LBB21_47
# %bb.46:
	decl	96(%rax)
	jmp	.LBB21_48
.LBB21_47:
	decl	2124(%rbx)
.LBB21_48:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_, .Lfunc_end21-_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE # -- Begin function _ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE,@function
_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE: # @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %r15
	xorl	%r12d, %r12d
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %r13
	leaq	16(%r13), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	jmp	.LBB22_2
	.p2align	4, 0x90
.LBB22_1:                               #   in Loop: Header=BB22_2 Depth=1
	leaq	56(%r13), %rdi
	callq	halide_cond_broadcast@PLT
	xorl	%r12d, %r12d
.LBB22_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_8 Depth 2
                                        #     Child Loop BB22_30 Depth 2
                                        #       Child Loop BB22_42 Depth 3
                                        #     Child Loop BB22_13 Depth 2
                                        #       Child Loop BB22_22 Depth 3
                                        #     Child Loop BB22_47 Depth 2
                                        #       Child Loop BB22_50 Depth 3
                                        #         Child Loop BB22_51 Depth 4
                                        #     Child Loop BB22_81 Depth 2
	testq	%r15, %r15
	je	.LBB22_9
# %bb.3:                                #   in Loop: Header=BB22_2 Depth=1
	cmpl	$0, 40(%r15)
	jne	.LBB22_5
# %bb.4:                                #   in Loop: Header=BB22_2 Depth=1
	cmpl	$0, 112(%r15)
	je	.LBB22_113
.LBB22_5:                               #   in Loop: Header=BB22_2 Depth=1
	movq	16(%r13), %rbx
	cmpl	$0, 116(%r15)
	je	.LBB22_24
# %bb.6:                                #   in Loop: Header=BB22_2 Depth=1
	cmpl	$0, 112(%r15)
	jne	.LBB22_27
# %bb.7:                                #   in Loop: Header=BB22_2 Depth=1
	leaq	64(%rbx), %rax
	cmpq	%r15, %rbx
	je	.LBB22_90
	.p2align	4, 0x90
.LBB22_8:                               # %.preheader44
                                        #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	movq	(%rax), %rdx
	leaq	64(%rdx), %rax
	cmpq	%r15, %rdx
	jne	.LBB22_8
	jmp	.LBB22_91
	.p2align	4, 0x90
.LBB22_9:                               #   in Loop: Header=BB22_2 Depth=1
	cmpb	$0, 2120(%r13)
	jne	.LBB22_113
# %bb.10:                               #   in Loop: Header=BB22_2 Depth=1
	movq	16(%r13), %rbx
	testq	%rbx, %rbx
	je	.LBB22_98
# %bb.11:                               # %.preheader38.preheader
                                        #   in Loop: Header=BB22_2 Depth=1
	movq	-72(%rbp), %r14                 # 8-byte Reload
	jmp	.LBB22_13
	.p2align	4, 0x90
.LBB22_12:                              # %.loopexit33
                                        #   in Loop: Header=BB22_13 Depth=2
	movq	%rbx, %r14
	movq	64(%rbx), %rax
	addq	$64, %r14
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB22_95
.LBB22_13:                              # %.preheader38
                                        #   Parent Loop BB22_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_22 Depth 3
	movq	88(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB22_18
# %bb.14:                               #   in Loop: Header=BB22_13 Depth=2
	movl	44(%rcx), %eax
	movl	112(%rcx), %edx
	testl	%edx, %edx
	je	.LBB22_16
# %bb.15:                               #   in Loop: Header=BB22_13 Depth=2
	imull	%edx, %eax
.LBB22_16:                              #   in Loop: Header=BB22_13 Depth=2
	subl	96(%rcx), %eax
	movl	44(%rbx), %ecx
	cmpb	$0, 48(%rbx)
	je	.LBB22_19
.LBB22_17:                              #   in Loop: Header=BB22_13 Depth=2
	cmpl	$0, 112(%rbx)
	setne	%dl
	cmpl	%ecx, %eax
	jge	.LBB22_20
	jmp	.LBB22_12
	.p2align	4, 0x90
.LBB22_18:                              #   in Loop: Header=BB22_13 Depth=2
	movl	24(%r13), %eax
	subl	2124(%r13), %eax
	incl	%eax
	movl	44(%rbx), %ecx
	cmpb	$0, 48(%rbx)
	jne	.LBB22_17
.LBB22_19:                              # %._crit_edge196
                                        #   in Loop: Header=BB22_13 Depth=2
	xorl	%edx, %edx
	cmpl	%ecx, %eax
	jl	.LBB22_12
.LBB22_20:                              #   in Loop: Header=BB22_13 Depth=2
	testb	%dl, %dl
	jne	.LBB22_12
# %bb.21:                               #   in Loop: Header=BB22_13 Depth=2
	movl	120(%rbx), %eax
	cmpl	32(%rbx), %eax
	jge	.LBB22_44
	.p2align	4, 0x90
.LBB22_22:                              #   Parent Loop BB22_2 Depth=1
                                        #     Parent Loop BB22_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	24(%rbx), %rcx
	cltq
	shlq	$4, %rax
	movq	(%rcx,%rax), %rdi
	movl	8(%rcx,%rax), %esi
	callq	halide_default_semaphore_try_acquire@PLT
	testb	%al, %al
	je	.LBB22_12
# %bb.23:                               #   in Loop: Header=BB22_22 Depth=3
	movl	120(%rbx), %eax
	incl	%eax
	movl	%eax, 120(%rbx)
	cmpl	32(%rbx), %eax
	jl	.LBB22_22
	jmp	.LBB22_44
	.p2align	4, 0x90
.LBB22_24:                              #   in Loop: Header=BB22_2 Depth=1
	movq	88(%r15), %rax
	testq	%rax, %rax
	je	.LBB22_27
# %bb.25:                               #   in Loop: Header=BB22_2 Depth=1
	movl	116(%rax), %eax
	testl	%eax, %eax
	je	.LBB22_27
# %bb.26:                               #   in Loop: Header=BB22_2 Depth=1
	movl	%eax, 116(%r15)
	leaq	56(%r13), %rdi
	callq	halide_cond_broadcast@PLT
	jmp	.LBB22_2
	.p2align	4, 0x90
.LBB22_27:                              #   in Loop: Header=BB22_2 Depth=1
	testq	%rbx, %rbx
	je	.LBB22_96
# %bb.28:                               # %.preheader41.preheader
                                        #   in Loop: Header=BB22_2 Depth=1
	leaq	16(%r13), %r14
	jmp	.LBB22_30
	.p2align	4, 0x90
.LBB22_29:                              # %.loopexit35
                                        #   in Loop: Header=BB22_30 Depth=2
	movq	%rbx, %r14
	movq	64(%rbx), %rax
	addq	$64, %r14
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB22_95
.LBB22_30:                              # %.preheader41
                                        #   Parent Loop BB22_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_42 Depth 3
	movq	88(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB22_34
# %bb.31:                               #   in Loop: Header=BB22_30 Depth=2
	movl	44(%rcx), %eax
	movl	112(%rcx), %edx
	testl	%edx, %edx
	je	.LBB22_33
# %bb.32:                               #   in Loop: Header=BB22_30 Depth=2
	imull	%edx, %eax
.LBB22_33:                              #   in Loop: Header=BB22_30 Depth=2
	subl	96(%rcx), %eax
	jmp	.LBB22_35
	.p2align	4, 0x90
.LBB22_34:                              #   in Loop: Header=BB22_30 Depth=2
	movl	24(%r13), %eax
	subl	2124(%r13), %eax
	incl	%eax
.LBB22_35:                              #   in Loop: Header=BB22_30 Depth=2
	movl	44(%rbx), %ecx
	movq	72(%rbx), %rsi
	movq	72(%r15), %rdi
	cmpb	$0, 48(%rbx)
	je	.LBB22_37
# %bb.36:                               #   in Loop: Header=BB22_30 Depth=2
	cmpl	$0, 112(%rbx)
	setne	%r8b
	jmp	.LBB22_38
	.p2align	4, 0x90
.LBB22_37:                              # %._crit_edge
                                        #   in Loop: Header=BB22_30 Depth=2
	xorl	%r8d, %r8d
.LBB22_38:                              #   in Loop: Header=BB22_30 Depth=2
	testl	%ecx, %ecx
	setne	%dl
	cmpq	%rdi, %rsi
	setne	%sil
	cmpl	%ecx, %eax
	jl	.LBB22_29
# %bb.39:                               #   in Loop: Header=BB22_30 Depth=2
	andb	%sil, %dl
	jne	.LBB22_29
# %bb.40:                               #   in Loop: Header=BB22_30 Depth=2
	testb	%r8b, %r8b
	jne	.LBB22_29
# %bb.41:                               #   in Loop: Header=BB22_30 Depth=2
	movl	120(%rbx), %eax
	cmpl	32(%rbx), %eax
	jge	.LBB22_44
	.p2align	4, 0x90
.LBB22_42:                              #   Parent Loop BB22_2 Depth=1
                                        #     Parent Loop BB22_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	24(%rbx), %rcx
	cltq
	shlq	$4, %rax
	movq	(%rcx,%rax), %rdi
	movl	8(%rcx,%rax), %esi
	callq	halide_default_semaphore_try_acquire@PLT
	testb	%al, %al
	je	.LBB22_29
# %bb.43:                               #   in Loop: Header=BB22_42 Depth=3
	movl	120(%rbx), %eax
	incl	%eax
	movl	%eax, 120(%rbx)
	cmpl	32(%rbx), %eax
	jl	.LBB22_42
.LBB22_44:                              # %.loopexit34
                                        #   in Loop: Header=BB22_2 Depth=1
	movl	$0, 120(%rbx)
	incl	112(%rbx)
	movq	88(%rbx), %rax
	movl	44(%rbx), %ecx
	testq	%rax, %rax
	je	.LBB22_61
# %bb.45:                               #   in Loop: Header=BB22_2 Depth=1
	addl	%ecx, 96(%rax)
	cmpb	$0, 48(%rbx)
	je	.LBB22_62
.LBB22_46:                              #   in Loop: Header=BB22_2 Depth=1
	movq	64(%rbx), %rax
	movq	%rax, (%r14)
	movq	%r13, %rdi
	callq	halide_mutex_unlock@PLT
	xorl	%r14d, %r14d
	movl	$1, %r13d
	.p2align	4, 0x90
.LBB22_47:                              #   Parent Loop BB22_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_50 Depth 3
                                        #         Child Loop BB22_51 Depth 4
	movl	40(%rbx), %ecx
	movl	%ecx, %eax
	subl	%r14d, %eax
	cmpl	%r13d, %eax
	jle	.LBB22_54
# %bb.48:                               #   in Loop: Header=BB22_47 Depth=2
	movl	32(%rbx), %eax
	movl	120(%rbx), %edx
	jmp	.LBB22_50
	.p2align	4, 0x90
.LBB22_49:                              #   in Loop: Header=BB22_50 Depth=3
	movl	$0, 120(%rbx)
	incl	%r13d
	movl	%ecx, %esi
	subl	%r14d, %esi
	xorl	%edx, %edx
	cmpl	%r13d, %esi
	jle	.LBB22_55
.LBB22_50:                              #   Parent Loop BB22_2 Depth=1
                                        #     Parent Loop BB22_47 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB22_51 Depth 4
	cmpl	%eax, %edx
	jge	.LBB22_49
	.p2align	4, 0x90
.LBB22_51:                              # %.preheader
                                        #   Parent Loop BB22_2 Depth=1
                                        #     Parent Loop BB22_47 Depth=2
                                        #       Parent Loop BB22_50 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	24(%rbx), %rax
	movslq	%edx, %rcx
	shlq	$4, %rcx
	movq	(%rax,%rcx), %rdi
	movl	8(%rax,%rcx), %esi
	callq	halide_default_semaphore_try_acquire@PLT
	testb	%al, %al
	je	.LBB22_54
# %bb.52:                               #   in Loop: Header=BB22_51 Depth=4
	movl	32(%rbx), %eax
	movl	120(%rbx), %edx
	incl	%edx
	movl	%edx, 120(%rbx)
	cmpl	%eax, %edx
	jl	.LBB22_51
# %bb.53:                               #   in Loop: Header=BB22_50 Depth=3
	movl	40(%rbx), %ecx
	jmp	.LBB22_49
	.p2align	4, 0x90
.LBB22_54:                              # %.loopexit
                                        #   in Loop: Header=BB22_47 Depth=2
	testl	%r13d, %r13d
	je	.LBB22_57
.LBB22_55:                              # %.loopexit32
                                        #   in Loop: Header=BB22_47 Depth=2
	movq	104(%rbx), %rdi
	movl	36(%rbx), %edx
	addl	%r14d, %edx
	movq	(%rbx), %rsi
	movq	8(%rbx), %r8
	movl	%r13d, %ecx
	movq	%rbx, %r9
	callq	halide_do_loop_task@PLT
	addl	%r13d, %r14d
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB22_47
# %bb.56:                               #   in Loop: Header=BB22_2 Depth=1
	movl	%eax, %r12d
	jmp	.LBB22_58
.LBB22_57:                              #   in Loop: Header=BB22_2 Depth=1
	movb	$1, %r13b
	xorl	%r12d, %r12d
.LBB22_58:                              #   in Loop: Header=BB22_2 Depth=1
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_lock@PLT
	addl	%r14d, 36(%rbx)
	movl	40(%rbx), %eax
	subl	%r14d, %eax
	movl	%eax, 40(%rbx)
	testb	%r13b, %r13b
	je	.LBB22_65
# %bb.59:                               #   in Loop: Header=BB22_2 Depth=1
	testl	%eax, %eax
	jle	.LBB22_92
# %bb.60:                               #   in Loop: Header=BB22_2 Depth=1
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %r13
	movq	16(%r13), %rax
	movq	%rax, 64(%rbx)
	movq	%rbx, 16(%r13)
	jmp	.LBB22_76
.LBB22_61:                              #   in Loop: Header=BB22_2 Depth=1
	addl	%ecx, 2124(%r13)
	cmpb	$0, 48(%rbx)
	jne	.LBB22_46
.LBB22_62:                              #   in Loop: Header=BB22_2 Depth=1
	movq	(%rbx), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	8(%rbx), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movl	36(%rbx), %r13d
	movq	56(%rbx), %r12
	movq	104(%rbx), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	leal	1(%r13), %eax
	movl	%eax, 36(%rbx)
	decl	40(%rbx)
	je	.LBB22_66
# %bb.63:                               #   in Loop: Header=BB22_2 Depth=1
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_unlock@PLT
	testq	%r12, %r12
	je	.LBB22_67
.LBB22_64:                              #   in Loop: Header=BB22_2 Depth=1
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%r12, %rsi
	movl	%r13d, %edx
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	callq	halide_do_task@PLT
	jmp	.LBB22_68
.LBB22_65:                              #   in Loop: Header=BB22_2 Depth=1
	movl	$0, 40(%rbx)
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %r13
	jmp	.LBB22_69
.LBB22_66:                              #   in Loop: Header=BB22_2 Depth=1
	movq	64(%rbx), %rax
	movq	%rax, (%r14)
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_unlock@PLT
	testq	%r12, %r12
	jne	.LBB22_64
.LBB22_67:                              #   in Loop: Header=BB22_2 Depth=1
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	-64(%rbp), %rsi                 # 8-byte Reload
	movl	%r13d, %edx
	movl	$1, %ecx
	movq	-56(%rbp), %r8                  # 8-byte Reload
	movq	%rbx, %r9
	callq	halide_do_loop_task@PLT
.LBB22_68:                              #   in Loop: Header=BB22_2 Depth=1
	movl	%eax, %r12d
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %r13
	movq	%r13, %rdi
	callq	halide_mutex_lock@PLT
	testl	%r12d, %r12d
	je	.LBB22_76
.LBB22_69:                              #   in Loop: Header=BB22_2 Depth=1
	movl	%r12d, 116(%rbx)
	movl	80(%rbx), %r9d
	testl	%r9d, %r9d
	jle	.LBB22_76
# %bb.70:                               #   in Loop: Header=BB22_2 Depth=1
	movq	72(%rbx), %r8
	cmpl	$1, %r9d
	jne	.LBB22_77
# %bb.71:                               #   in Loop: Header=BB22_2 Depth=1
	xorl	%esi, %esi
	xorl	%eax, %eax
.LBB22_72:                              # %.loopexit37.loopexit.unr-lcssa
                                        #   in Loop: Header=BB22_2 Depth=1
	testb	$1, %r9b
	je	.LBB22_93
# %bb.73:                               # %.epil.preheader
                                        #   in Loop: Header=BB22_2 Depth=1
	shlq	$7, %rsi
	cmpl	$0, 116(%r8,%rsi)
	je	.LBB22_74
	.p2align	4, 0x90
.LBB22_93:                              # %.loopexit37
                                        #   in Loop: Header=BB22_2 Depth=1
	movq	88(%rbx), %rcx
	movl	44(%rbx), %edx
	testq	%rcx, %rcx
	je	.LBB22_107
.LBB22_94:                              #   in Loop: Header=BB22_2 Depth=1
	subl	%edx, 96(%rcx)
	jmp	.LBB22_108
	.p2align	4, 0x90
.LBB22_76:                              #   in Loop: Header=BB22_2 Depth=1
	xorl	%eax, %eax
	movq	88(%rbx), %rcx
	movl	44(%rbx), %edx
	testq	%rcx, %rcx
	jne	.LBB22_94
.LBB22_107:                             #   in Loop: Header=BB22_2 Depth=1
	subl	%edx, 2124(%r13)
.LBB22_108:                             #   in Loop: Header=BB22_2 Depth=1
	movl	112(%rbx), %ecx
	decl	%ecx
	movl	%ecx, 112(%rbx)
	testb	$1, %al
	jne	.LBB22_1
# %bb.109:                              #   in Loop: Header=BB22_2 Depth=1
	movl	$0, %r12d
	testl	%ecx, %ecx
	jne	.LBB22_2
# %bb.110:                              #   in Loop: Header=BB22_2 Depth=1
	cmpl	$0, 40(%rbx)
	je	.LBB22_112
# %bb.111:                              #   in Loop: Header=BB22_2 Depth=1
	cmpl	$0, 116(%rbx)
	movl	$0, %r12d
	je	.LBB22_2
.LBB22_112:                             #   in Loop: Header=BB22_2 Depth=1
	cmpb	$0, 124(%rbx)
	movl	$0, %r12d
	je	.LBB22_2
	jmp	.LBB22_1
.LBB22_77:                              # %.new
                                        #   in Loop: Header=BB22_2 Depth=1
	movl	%r9d, %edi
	andl	$-2, %edi
	leaq	116(%r8), %rcx
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.LBB22_81
.LBB22_78:                              #   in Loop: Header=BB22_81 Depth=2
	movzbl	136(%rcx), %edx
.LBB22_79:                              #   in Loop: Header=BB22_81 Depth=2
	andb	$1, %al
	orb	%dl, %al
.LBB22_80:                              #   in Loop: Header=BB22_81 Depth=2
	addq	$2, %rsi
	addq	$256, %rcx                      # imm = 0x100
	cmpq	%rsi, %rdi
	je	.LBB22_72
.LBB22_81:                              #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, (%rcx)
	je	.LBB22_83
# %bb.82:                               #   in Loop: Header=BB22_81 Depth=2
	cmpl	$0, 128(%rcx)
	jne	.LBB22_80
	jmp	.LBB22_87
	.p2align	4, 0x90
.LBB22_83:                              #   in Loop: Header=BB22_81 Depth=2
	movl	%r12d, (%rcx)
	cmpl	$0, 112(%rbx)
	je	.LBB22_85
# %bb.84:                               #   in Loop: Header=BB22_81 Depth=2
	xorl	%edx, %edx
	andb	$1, %al
	orb	%dl, %al
	cmpl	$0, 128(%rcx)
	jne	.LBB22_80
	jmp	.LBB22_87
.LBB22_85:                              #   in Loop: Header=BB22_81 Depth=2
	movzbl	8(%rcx), %edx
	andb	$1, %al
	orb	%dl, %al
	cmpl	$0, 128(%rcx)
	jne	.LBB22_80
	.p2align	4, 0x90
.LBB22_87:                              #   in Loop: Header=BB22_81 Depth=2
	movl	%r12d, 128(%rcx)
	cmpl	$0, 112(%rbx)
	je	.LBB22_78
# %bb.88:                               #   in Loop: Header=BB22_81 Depth=2
	xorl	%edx, %edx
	jmp	.LBB22_79
.LBB22_90:                              #   in Loop: Header=BB22_2 Depth=1
	leaq	16(%r13), %rcx
.LBB22_91:                              # %.loopexit45
                                        #   in Loop: Header=BB22_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movl	$0, 40(%r15)
	jmp	.LBB22_2
.LBB22_92:                              #   in Loop: Header=BB22_2 Depth=1
	xorl	%eax, %eax
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %r13
	movq	88(%rbx), %rcx
	movl	44(%rbx), %edx
	testq	%rcx, %rcx
	jne	.LBB22_94
	jmp	.LBB22_107
.LBB22_95:                              # %.loopexit40
                                        #   in Loop: Header=BB22_2 Depth=1
	testq	%r15, %r15
	je	.LBB22_98
.LBB22_96:                              # %.thread
                                        #   in Loop: Header=BB22_2 Depth=1
	leal	1(%r12), %ebx
	cmpl	$39, %r12d
	jg	.LBB22_100
# %bb.97:                               #   in Loop: Header=BB22_2 Depth=1
	movq	%r13, %rdi
	callq	halide_mutex_unlock@PLT
	callq	halide_thread_yield@PLT
	movq	%r13, %rdi
	callq	halide_mutex_lock@PLT
	movl	%ebx, %r12d
	jmp	.LBB22_2
.LBB22_98:                              #   in Loop: Header=BB22_2 Depth=1
	incl	64(%r13)
	movl	28(%r13), %eax
	cmpl	32(%r13), %eax
	jle	.LBB22_101
# %bb.99:                               #   in Loop: Header=BB22_2 Depth=1
	decl	%eax
	movl	%eax, 28(%r13)
	leaq	48(%r13), %rdi
	movq	%r13, %rsi
	callq	halide_cond_wait@PLT
	incl	28(%r13)
	decl	64(%r13)
	jmp	.LBB22_2
.LBB22_100:                             #   in Loop: Header=BB22_2 Depth=1
	incl	68(%r13)
	movb	$1, 124(%r15)
	leaq	56(%r13), %rdi
	movq	%r13, %rsi
	callq	halide_cond_wait@PLT
	movb	$0, 124(%r15)
	decl	68(%r13)
	movl	%ebx, %r12d
	jmp	.LBB22_2
.LBB22_101:                             #   in Loop: Header=BB22_2 Depth=1
	leal	1(%r12), %ebx
	cmpl	$39, %r12d
	jg	.LBB22_103
# %bb.102:                              #   in Loop: Header=BB22_2 Depth=1
	movq	%r13, %rdi
	callq	halide_mutex_unlock@PLT
	callq	halide_thread_yield@PLT
	movq	%r13, %rdi
	callq	halide_mutex_lock@PLT
	jmp	.LBB22_104
.LBB22_103:                             #   in Loop: Header=BB22_2 Depth=1
	leaq	40(%r13), %rdi
	movq	%r13, %rsi
	callq	halide_cond_wait@PLT
.LBB22_104:                             #   in Loop: Header=BB22_2 Depth=1
	movl	%ebx, %r12d
	decl	64(%r13)
	jmp	.LBB22_2
.LBB22_74:                              #   in Loop: Header=BB22_2 Depth=1
	leaq	(%r8,%rsi), %rcx
	addq	$116, %rcx
	movl	%r12d, (%rcx)
	cmpl	$0, 112(%rbx)
	je	.LBB22_105
# %bb.75:                               #   in Loop: Header=BB22_2 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB22_106
.LBB22_105:                             #   in Loop: Header=BB22_2 Depth=1
	movb	124(%r8,%rsi), %cl
.LBB22_106:                             #   in Loop: Header=BB22_2 Depth=1
	andb	$1, %al
	orb	%cl, %al
	movq	88(%rbx), %rcx
	movl	44(%rbx), %edx
	testq	%rcx, %rcx
	jne	.LBB22_94
	jmp	.LBB22_107
.LBB22_113:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE, .Lfunc_end22-_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE
                                        # -- End function
	.section	.text.halide_mutex_unlock,"ax",@progbits
	.weak	halide_mutex_unlock             # -- Begin function halide_mutex_unlock
	.p2align	4, 0x90
	.type	halide_mutex_unlock,@function
halide_mutex_unlock:                    # @halide_mutex_unlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	xorl	%ecx, %ecx
	movl	$1, %eax
	lock		cmpxchgq	%rcx, (%rdi)
	je	.LBB23_3
# %bb.1:
	xorl	%ecx, %ecx
	movl	$1, %eax
	lock		cmpxchgq	%rcx, (%rdi)
	je	.LBB23_3
# %bb.2:
	movq	_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb@GOTPCREL(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	%rdi, -8(%rbp)
	movq	_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	-40(%rbp), %rsi
	callq	_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE@PLT
.LBB23_3:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	halide_mutex_unlock, .Lfunc_end23-halide_mutex_unlock
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv # -- Begin function _ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv,@function
_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv: # @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, .Lfunc_end24-_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb # -- Begin function _ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb,@function
_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb: # @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, .Lfunc_end25-_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE # -- Begin function _ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE,@function
_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE: # @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	32(%rdi), %rax
	movq	(%rax), %rax
	cmpq	$3, %rax
	sete	%al
	popq	%rbp
	retq
.Lfunc_end26:
	.size	_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, .Lfunc_end26-_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib # -- Begin function _ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib,@function
_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib: # @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edx, %eax
	addq	%rax, %rax
	movq	32(%rdi), %rcx
	movq	%rax, (%rcx)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end27:
	.size	_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, .Lfunc_end27-_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE # -- Begin function _ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE,@function
_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE: # @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy@PLT
	movq	%rax, %r14
	movq	8(%rax), %rax
	movq	%r14, %rdx
	addq	$8, %rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB28_1:                               # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB28_8
# %bb.2:                                #   in Loop: Header=BB28_1 Depth=1
	movq	%rax, %r13
	movq	%rdi, %rcx
	movq	%rdx, %rsi
	movq	136(%rax), %rbx
	leaq	144(%rax), %rdx
	movq	144(%rax), %rax
	movq	%r13, %rdi
	cmpq	%r12, %rbx
	jne	.LBB28_1
# %bb.3:
	movq	%rax, (%rsi)
	cmpq	%r13, 16(%r14)
	je	.LBB28_13
# %bb.4:
	testq	%rax, %rax
	je	.LBB28_14
	.p2align	4, 0x90
.LBB28_5:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	136(%rax), %rcx
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.LBB28_7
# %bb.6:                                # %.preheader
                                        #   in Loop: Header=BB28_5 Depth=1
	cmpq	%r12, %rcx
	jne	.LBB28_5
.LBB28_7:
	cmpq	%r12, %rcx
	sete	%al
	jmp	.LBB28_15
.LBB28_8:
	movq	%r15, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	*16(%r15)
	movq	(%r14), %rax
	.p2align	4, 0x90
.LBB28_9:                               # %atomicrmw.start2
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	andq	$-2, %rcx
	lock		cmpxchgq	%rcx, (%r14)
	jne	.LBB28_9
# %bb.10:                               # %atomicrmw.end1
	xorl	%r12d, %r12d
	cmpq	$4, %rax
	jb	.LBB28_21
# %bb.11:                               # %atomicrmw.end1
	andl	$2, %eax
	testq	%rax, %rax
	jne	.LBB28_21
# %bb.12:
	movq	%r14, %rdi
	callq	_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv@PLT
	xorl	%r12d, %r12d
	jmp	.LBB28_21
.LBB28_13:
	movq	%rcx, 16(%r14)
.LBB28_14:
	xorl	%eax, %eax
.LBB28_15:
	movzbl	%al, %r12d
	movq	%r15, %rdi
	movl	$1, %esi
	movl	%r12d, %edx
	callq	*16(%r15)
	movq	%rax, 152(%r13)
	movq	%r13, %rdi
	callq	pthread_mutex_lock@PLT
	movq	(%r14), %rax
	.p2align	4, 0x90
.LBB28_16:                              # %atomicrmw.start
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	andq	$-2, %rcx
	lock		cmpxchgq	%rcx, (%r14)
	jne	.LBB28_16
# %bb.17:                               # %atomicrmw.end
	cmpq	$4, %rax
	jb	.LBB28_20
# %bb.18:                               # %atomicrmw.end
	andl	$2, %eax
	testq	%rax, %rax
	jne	.LBB28_20
# %bb.19:
	movq	%r14, %rdi
	callq	_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv@PLT
.LBB28_20:
	movb	$0, 128(%r13)
	leaq	64(%r13), %rdi
	callq	pthread_cond_signal@PLT
	movq	%r13, %rdi
	callq	pthread_mutex_unlock@PLT
.LBB28_21:
	movq	%r12, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE, .Lfunc_end28-_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy # -- Begin function _ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy,@function
_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy: # @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movabsq	$-7046029254386353131, %rax     # imm = 0x9E3779B97F4A7C15
	imulq	%rdi, %rax
	shrq	$54, %rax
	leaq	(%rax,%rax,2), %rcx
	movq	_ZN6Halide7Runtime8Internal15Synchronization13table_storageE@GOTPCREL(%rip), %rdx
	leaq	(%rdx,%rcx,8), %rbx
	movl	$1, %esi
	xorl	%eax, %eax
	lock		cmpxchgq	%rsi, (%rdx,%rcx,8)
	je	.LBB29_2
# %bb.1:
	movq	%rbx, %rdi
	callq	_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv@PLT
.LBB29_2:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end29:
	.size	_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy, .Lfunc_end29-_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv # -- Begin function _ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv,@function
_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv: # @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movq	(%rdi), %rbx
	.p2align	4, 0x90
.LBB30_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	$4, %rbx
	jb	.LBB30_18
# %bb.2:                                #   in Loop: Header=BB30_1 Depth=1
	movl	%ebx, %eax
	andl	$2, %eax
	testq	%rax, %rax
	jne	.LBB30_18
# %bb.3:                                #   in Loop: Header=BB30_1 Depth=1
	movq	%rbx, %rcx
	orq	$2, %rcx
	movq	%rbx, %rax
	lock		cmpxchgq	%rcx, (%r14)
	movq	%rax, %rbx
	jne	.LBB30_1
	jmp	.LBB30_4
	.p2align	4, 0x90
.LBB30_11:                              #   in Loop: Header=BB30_4 Depth=1
	movq	%rax, %rbx
	#MEMBARRIER
	jmp	.LBB30_4
	.p2align	4, 0x90
.LBB30_5:                               # %.preheader6.preheader
                                        #   in Loop: Header=BB30_4 Depth=1
	movq	-48(%rbp), %r15                 # 8-byte Reload
	jmp	.LBB30_6
	.p2align	4, 0x90
.LBB30_8:                               #   in Loop: Header=BB30_6 Depth=2
	movq	%r15, 144(%r13)
	movq	152(%r13), %r12
	movq	%r13, %r15
	testq	%r12, %r12
	jne	.LBB30_9
.LBB30_6:                               # %.preheader6
                                        #   Parent Loop BB30_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	136(%r15), %r13
	testq	%r13, %r13
	jne	.LBB30_8
# %bb.7:                                #   in Loop: Header=BB30_6 Depth=2
	xorl	%edi, %edi
	leaq	.L.str.5(%rip), %rsi
	callq	halide_print@PLT
	callq	abort@PLT
	jmp	.LBB30_8
	.p2align	4, 0x90
.LBB30_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_6 Depth 2
                                        #     Child Loop BB30_13 Depth 2
	movq	%rbx, %rax
	andq	$-4, %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	152(%rax), %r12
	testq	%r12, %r12
	je	.LBB30_5
.LBB30_9:                               # %.loopexit7
                                        #   in Loop: Header=BB30_4 Depth=1
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	%r12, 152(%rax)
	testb	$1, %bl
	jne	.LBB30_10
# %bb.12:                               #   in Loop: Header=BB30_4 Depth=1
	movq	144(%r12), %rax
	testq	%rax, %rax
	jne	.LBB30_16
	.p2align	4, 0x90
.LBB30_13:                              # %.preheader
                                        #   Parent Loop BB30_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %ecx
	andl	$1, %ecx
	movq	%rbx, %rax
	lock		cmpxchgq	%rcx, (%r14)
	je	.LBB30_17
# %bb.14:                               #   in Loop: Header=BB30_13 Depth=2
	movq	%rax, %rbx
	cmpq	$4, %rax
	jb	.LBB30_13
# %bb.15:                               # %.loopexit5
                                        #   in Loop: Header=BB30_4 Depth=1
	#MEMBARRIER
	jmp	.LBB30_4
	.p2align	4, 0x90
.LBB30_10:                              #   in Loop: Header=BB30_4 Depth=1
	movq	%rbx, %rcx
	andq	$-3, %rcx
	movq	%rbx, %rax
	lock		cmpxchgq	%rcx, (%r14)
	jne	.LBB30_11
.LBB30_18:                              # %.loopexit9
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB30_16:
	movq	-48(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, 152(%rcx)
	lock		andq	$-3, (%r14)
.LBB30_17:                              # %.loopexit
	movq	%r12, %rdi
	callq	pthread_mutex_lock@PLT
	movb	$0, 128(%r12)
	leaq	64(%r12), %rdi
	callq	pthread_cond_signal@PLT
	movq	%r12, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pthread_mutex_unlock@PLT        # TAILCALL
.Lfunc_end30:
	.size	_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv, .Lfunc_end30-_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function _ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv
.LCPI31_0:
	.zero	16
	.section	.text._ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv,@function
_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv: # @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
	movq	%rdi, %r12
	movq	(%rdi), %rbx
	movl	$40, %r13d
	leaq	-144(%rbp), %r14
	leaq	-208(%rbp), %r15
	jmp	.LBB31_1
.LBB31_17:                              # %.loopexit
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	%r15, %rdi
	callq	pthread_mutex_unlock@PLT
	movq	(%r12), %rbx
	movl	$40, %r13d
.LBB31_18:                              #   in Loop: Header=BB31_1 Depth=1
	movq	%r14, %rdi
	callq	pthread_cond_destroy@PLT
	movq	%r15, %rdi
	callq	pthread_mutex_destroy@PLT
	.p2align	4, 0x90
.LBB31_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_15 Depth 2
	testb	$1, %bl
	jne	.LBB31_4
# %bb.2:                                # %.preheader2
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	%rbx, %rcx
	orq	$1, %rcx
	movq	%rbx, %rax
	lock		cmpxchgq	%rcx, (%r12)
	je	.LBB31_19
# %bb.3:                                #   in Loop: Header=BB31_1 Depth=1
	movq	%rax, %rbx
	jmp	.LBB31_1
.LBB31_4:                               # %.loopexit3
                                        #   in Loop: Header=BB31_1 Depth=1
	testl	%r13d, %r13d
	jle	.LBB31_5
# %bb.8:                                # %.loopexit3
                                        #   in Loop: Header=BB31_1 Depth=1
	cmpq	$4, %rbx
	jb	.LBB31_5
# %bb.9:                                #   in Loop: Header=BB31_1 Depth=1
	movl	$0, -44(%rbp)                   # 4-byte Folded Spill
	cmpl	$2, %r13d
	jl	.LBB31_6
# %bb.10:                               #   in Loop: Header=BB31_1 Depth=1
	decl	%r13d
	callq	halide_thread_yield@PLT
	movq	(%r12), %rbx
	jmp	.LBB31_1
.LBB31_5:                               #   in Loop: Header=BB31_1 Depth=1
	movl	%r13d, -44(%rbp)                # 4-byte Spill
.LBB31_6:                               #   in Loop: Header=BB31_1 Depth=1
	movb	$0, -80(%rbp)
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	pthread_mutex_init@PLT
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	pthread_cond_init@PLT
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, -72(%rbp)
	movq	$0, -56(%rbp)
	movb	$1, -80(%rbp)
	movq	%rbx, %rax
	andq	$-4, %rax
	je	.LBB31_7
# %bb.11:                               #   in Loop: Header=BB31_1 Depth=1
	movq	%rax, -72(%rbp)
	jmp	.LBB31_12
.LBB31_7:                               #   in Loop: Header=BB31_1 Depth=1
	movq	%r15, -56(%rbp)
.LBB31_12:                              #   in Loop: Header=BB31_1 Depth=1
	movl	-44(%rbp), %r13d                # 4-byte Reload
	movl	%ebx, %ecx
	andl	$3, %ecx
	orq	%r15, %rcx
	movq	%rbx, %rax
	lock		cmpxchgq	%rcx, (%r12)
	jne	.LBB31_13
# %bb.14:                               #   in Loop: Header=BB31_1 Depth=1
	movq	%r15, %rdi
	callq	pthread_mutex_lock@PLT
	cmpb	$0, -80(%rbp)
	je	.LBB31_17
	.p2align	4, 0x90
.LBB31_15:                              # %.preheader
                                        #   Parent Loop BB31_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	pthread_cond_wait@PLT
	cmpb	$0, -80(%rbp)
	jne	.LBB31_15
	jmp	.LBB31_17
.LBB31_13:                              #   in Loop: Header=BB31_1 Depth=1
	movq	%rax, %rbx
	jmp	.LBB31_18
.LBB31_19:
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv, .Lfunc_end31-_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv
                                        # -- End function
	.section	.text.halide_cond_broadcast,"ax",@progbits
	.weak	halide_cond_broadcast           # -- Begin function halide_cond_broadcast
	.p2align	4, 0x90
	.type	halide_cond_broadcast,@function
halide_cond_broadcast:                  # @halide_cond_broadcast
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB32_2
# %bb.1:
	movq	_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy@PLT
.LBB32_2:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	halide_cond_broadcast, .Lfunc_end32-halide_cond_broadcast
                                        # -- End function
	.section	.text.halide_default_semaphore_try_acquire,"ax",@progbits
	.weak	halide_default_semaphore_try_acquire # -- Begin function halide_default_semaphore_try_acquire
	.p2align	4, 0x90
	.type	halide_default_semaphore_try_acquire,@function
halide_default_semaphore_try_acquire:   # @halide_default_semaphore_try_acquire
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$1, %cl
	testl	%esi, %esi
	je	.LBB33_5
# %bb.1:
	movl	(%rdi), %eax
	.p2align	4, 0x90
.LBB33_2:                               # =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	subl	%esi, %edx
	js	.LBB33_4
# %bb.3:                                # %.preheader
                                        #   in Loop: Header=BB33_2 Depth=1
	lock		cmpxchgl	%edx, (%rdi)
	jne	.LBB33_2
.LBB33_5:                               # %.loopexit
	movl	%ecx, %eax
	popq	%rbp
	retq
.LBB33_4:
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end33:
	.size	halide_default_semaphore_try_acquire, .Lfunc_end33-halide_default_semaphore_try_acquire
                                        # -- End function
	.section	.text.halide_cond_wait,"ax",@progbits
	.weak	halide_cond_wait                # -- Begin function halide_cond_wait
	.p2align	4, 0x90
	.type	halide_cond_wait,@function
halide_cond_wait:                       # @halide_cond_wait
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%rsi, %rbx
	movq	_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb@GOTPCREL(%rip), %r15
	movq	%r15, -104(%rbp)
	movq	%rdi, -96(%rbp)
	movq	%rsi, -88(%rbp)
	movq	_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE@GOTPCREL(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv@GOTPCREL(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib@GOTPCREL(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	-128(%rbp), %rsi
	callq	_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE@PLT
	cmpq	%rbx, %rax
	jne	.LBB34_1
# %bb.14:
	movq	(%rbx), %rax
	testb	$1, %al
	jne	.LBB34_16
# %bb.15:
	leaq	.L.str.6(%rip), %rsi
	xorl	%edi, %edi
	callq	halide_print@PLT
	callq	abort@PLT
	jmp	.LBB34_16
.LBB34_1:
	movl	$1, %ecx
	xorl	%eax, %eax
	lock		cmpxchgq	%rcx, (%rbx)
	jne	.LBB34_2
.LBB34_16:                              # %.loopexit
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB34_2:
	movq	(%rbx), %rax
	movl	$40, %r13d
	movq	_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib@GOTPCREL(%rip), %r12
	leaq	-80(%rbp), %r14
	.p2align	4, 0x90
.LBB34_3:                               # =>This Inner Loop Header: Depth=1
	testb	$1, %al
	jne	.LBB34_5
# %bb.4:                                # %.preheader
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	%rax, %rcx
	orq	$1, %rcx
	lock		cmpxchgq	%rcx, (%rbx)
	jne	.LBB34_3
	jmp	.LBB34_16
.LBB34_5:                               # %.loopexit2
                                        #   in Loop: Header=BB34_3 Depth=1
	testl	%r13d, %r13d
	jg	.LBB34_10
# %bb.6:                                #   in Loop: Header=BB34_3 Depth=1
	movl	%r13d, %ecx
.LBB34_7:                               #   in Loop: Header=BB34_3 Depth=1
	testb	$2, %al
	jne	.LBB34_12
# %bb.8:                                #   in Loop: Header=BB34_3 Depth=1
	movq	%rax, %rdx
	orq	$2, %rdx
	lock		cmpxchgq	%rdx, (%rbx)
	jne	.LBB34_9
.LBB34_12:                              #   in Loop: Header=BB34_3 Depth=1
	movq	_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	%r15, -56(%rbp)
	movq	%rbx, -48(%rbp)
	movq	_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE@GOTPCREL(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	%r12, -64(%rbp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE@PLT
	cmpq	%rbx, %rax
	je	.LBB34_16
# %bb.13:                               #   in Loop: Header=BB34_3 Depth=1
	movq	(%rbx), %rax
	movl	$40, %r13d
	jmp	.LBB34_3
.LBB34_10:                              #   in Loop: Header=BB34_3 Depth=1
	xorl	%ecx, %ecx
	cmpl	$1, %r13d
	je	.LBB34_7
# %bb.11:                               #   in Loop: Header=BB34_3 Depth=1
	decl	%r13d
	callq	halide_thread_yield@PLT
	movq	(%rbx), %rax
	jmp	.LBB34_3
.LBB34_9:                               #   in Loop: Header=BB34_3 Depth=1
	movl	%ecx, %r13d
	jmp	.LBB34_3
.Lfunc_end34:
	.size	halide_cond_wait, .Lfunc_end34-halide_cond_wait
                                        # -- End function
	.section	.text.halide_do_loop_task,"ax",@progbits
	.weak	halide_do_loop_task             # -- Begin function halide_do_loop_task
	.p2align	4, 0x90
	.type	halide_do_loop_task,@function
halide_do_loop_task:                    # @halide_do_loop_task
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal19custom_do_loop_taskE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                           # TAILCALL
.Lfunc_end35:
	.size	halide_do_loop_task, .Lfunc_end35-halide_do_loop_task
                                        # -- End function
	.section	.text.halide_do_task,"ax",@progbits
	.weak	halide_do_task                  # -- Begin function halide_do_task
	.p2align	4, 0x90
	.type	halide_do_task,@function
halide_do_task:                         # @halide_do_task
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal14custom_do_taskE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                           # TAILCALL
.Lfunc_end36:
	.size	halide_do_task, .Lfunc_end36-halide_do_task
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE # -- Begin function _ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE,@function
_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE: # @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	32(%rdi), %rax
	movq	(%rax), %rdx
	movq	40(%rdi), %rcx
	testq	%rdx, %rdx
	je	.LBB37_1
# %bb.2:
	movb	$1, %al
	cmpq	%rcx, %rdx
	je	.LBB37_4
# %bb.3:
	movq	%rcx, 8(%rsi)
	xorl	%eax, %eax
.LBB37_4:
                                        # kill: def $al killed $al killed $eax
	popq	%rbp
	retq
.LBB37_1:
	movq	%rcx, (%rax)
	movb	$1, %al
                                        # kill: def $al killed $al killed $eax
	popq	%rbp
	retq
.Lfunc_end37:
	.size	_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE, .Lfunc_end37-_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv # -- Begin function _ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv,@function
_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv: # @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	40(%rdi), %rdi
	xorl	%ecx, %ecx
	movl	$1, %eax
	lock		cmpxchgq	%rcx, (%rdi)
	je	.LBB38_3
# %bb.1:
	xorl	%ecx, %ecx
	movl	$1, %eax
	lock		cmpxchgq	%rcx, (%rdi)
	je	.LBB38_3
# %bb.2:
	movq	_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb@GOTPCREL(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	%rdi, -8(%rbp)
	movq	_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	-40(%rbp), %rsi
	callq	_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE@PLT
.LBB38_3:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv, .Lfunc_end38-_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib # -- Begin function _ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib,@function
_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib: # @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib
# %bb.0:
	testl	%edx, %edx
	jne	.LBB39_2
# %bb.1:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	32(%rdi), %rax
	movq	$0, (%rax)
	popq	%rbp
.LBB39_2:
	xorl	%eax, %eax
	retq
.Lfunc_end39:
	.size	_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib, .Lfunc_end39-_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE # -- Begin function _ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE,@function
_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE: # @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
	movq	%rsi, %r14
	movq	%rdi, %r13
	movb	$0, -88(%rbp)
	leaq	-216(%rbp), %r12
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	pthread_mutex_init@PLT
	leaq	-152(%rbp), %r15
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	pthread_cond_init@PLT
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, -80(%rbp)
	movq	$0, -64(%rbp)
	movq	%r13, %rdi
	callq	_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy@PLT
	movq	%rax, %rbx
	movb	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	leaq	-56(%rbp), %rsi
	movq	%r14, %rdi
	callq	*(%r14)
	testb	%al, %al
	je	.LBB40_1
# %bb.6:
	movq	$0, -72(%rbp)
	movq	%r13, -80(%rbp)
	movb	$1, -88(%rbp)
	movq	%rbx, %rax
	addq	$8, %rax
	movl	$144, %ecx
	addq	16(%rbx), %rcx
	cmpq	$0, 8(%rbx)
	cmoveq	%rax, %rcx
	leaq	-64(%rbp), %r13
	movq	%r12, (%rcx)
	movq	%r12, 16(%rbx)
	movq	(%rbx), %rax
	.p2align	4, 0x90
.LBB40_7:                               # %atomicrmw.start2
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	andq	$-2, %rcx
	lock		cmpxchgq	%rcx, (%rbx)
	jne	.LBB40_7
# %bb.8:                                # %atomicrmw.end1
	cmpq	$4, %rax
	jb	.LBB40_11
# %bb.9:                                # %atomicrmw.end1
	andl	$2, %eax
	testq	%rax, %rax
	jne	.LBB40_11
# %bb.10:
	movq	%rbx, %rdi
	callq	_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv@PLT
.LBB40_11:
	movq	%r14, %rdi
	callq	*8(%r14)
	leaq	-216(%rbp), %rdi
	callq	pthread_mutex_lock@PLT
	cmpb	$0, -88(%rbp)
	je	.LBB40_14
# %bb.12:                               # %.preheader.preheader
	leaq	-216(%rbp), %rbx
	.p2align	4, 0x90
.LBB40_13:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	pthread_cond_wait@PLT
	cmpb	$0, -88(%rbp)
	jne	.LBB40_13
.LBB40_14:                              # %.loopexit
	leaq	-216(%rbp), %rdi
	callq	pthread_mutex_unlock@PLT
	jmp	.LBB40_15
.LBB40_1:
	leaq	-48(%rbp), %r13
	movq	(%rbx), %rax
	.p2align	4, 0x90
.LBB40_2:                               # %atomicrmw.start
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	andq	$-2, %rcx
	lock		cmpxchgq	%rcx, (%rbx)
	jne	.LBB40_2
# %bb.3:                                # %atomicrmw.end
	cmpq	$4, %rax
	jb	.LBB40_15
# %bb.4:                                # %atomicrmw.end
	andl	$2, %eax
	testq	%rax, %rax
	jne	.LBB40_15
# %bb.5:
	movq	%rbx, %rdi
	callq	_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv@PLT
.LBB40_15:
	movq	(%r13), %rbx
	movq	%r15, %rdi
	callq	pthread_cond_destroy@PLT
	leaq	-216(%rbp), %rdi
	callq	pthread_mutex_destroy@PLT
	movq	%rbx, %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end40:
	.size	_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE, .Lfunc_end40-_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib # -- Begin function _ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib,@function
_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib: # @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end41:
	.size	_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib, .Lfunc_end41-_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE # -- Begin function _ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE,@function
_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE: # @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	32(%rdi), %rax
	movq	(%rax), %rcx
	cmpq	40(%rdi), %rcx
	jne	.LBB42_1
# %bb.2:
	movq	$0, (%rax)
	movq	40(%rdi), %rdx
	movq	(%rdx), %rax
	movb	$1, %cl
	movb	$1, %dil
	testb	$1, %al
	je	.LBB42_7
	.p2align	4, 0x90
.LBB42_3:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdi
	orq	$2, %rdi
	lock		cmpxchgq	%rdi, (%rdx)
	je	.LBB42_4
# %bb.5:                                #   in Loop: Header=BB42_3 Depth=1
	testb	$1, %al
	jne	.LBB42_3
# %bb.6:
	movb	$1, %dil
	jmp	.LBB42_7
.LBB42_1:
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	popq	%rbp
	retq
.LBB42_4:
	xorl	%edi, %edi
.LBB42_7:                               # %.loopexit
	movb	%dil, (%rsi)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end42:
	.size	_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE, .Lfunc_end42-_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb # -- Begin function _ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb,@function
_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb: # @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpb	$0, (%rsi)
	je	.LBB43_3
# %bb.1:
	testb	%cl, %cl
	je	.LBB43_3
# %bb.2:
	movq	40(%rdi), %rax
	lock		orq	$2, (%rax)
.LBB43_3:
	popq	%rbp
	retq
.Lfunc_end43:
	.size	_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, .Lfunc_end43-_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy # -- Begin function _ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy,@function
_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy: # @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	leaq	-56(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy@PLT
	movb	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	leaq	-72(%rbp), %rsi
	movq	%r15, %rdi
	callq	*(%r15)
	testb	%al, %al
	je	.LBB44_1
# %bb.2:
	movq	-56(%rbp), %rdx
	movq	8(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB44_3
# %bb.4:                                # %.preheader.preheader
	addq	$8, %rdx
	xorl	%r13d, %r13d
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%edi, %edi
	jmp	.LBB44_5
	.p2align	4, 0x90
.LBB44_6:                               #   in Loop: Header=BB44_5 Depth=1
	leaq	144(%rsi), %rdx
	movq	%rsi, %rdi
.LBB44_15:                              #   in Loop: Header=BB44_5 Depth=1
	testq	%rcx, %rcx
	je	.LBB44_16
.LBB44_5:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rsi
	movq	136(%rcx), %rax
	movq	144(%rcx), %rcx
	cmpq	%rbx, %rax
	jne	.LBB44_6
# %bb.7:                                #   in Loop: Header=BB44_5 Depth=1
	movq	%rcx, (%rdx)
	movq	-56(%rbp), %rax
	cmpq	%rsi, 16(%rax)
	je	.LBB44_8
# %bb.9:                                #   in Loop: Header=BB44_5 Depth=1
	testq	%r13, %r13
	je	.LBB44_10
	jmp	.LBB44_12
.LBB44_8:                               #   in Loop: Header=BB44_5 Depth=1
	movq	%rdi, 16(%rax)
	testq	%r13, %r13
	jne	.LBB44_12
.LBB44_10:                              #   in Loop: Header=BB44_5 Depth=1
	cmpb	$0, -72(%rbp)
	je	.LBB44_12
# %bb.11:                               #   in Loop: Header=BB44_5 Depth=1
	movq	%rsi, %r13
	jmp	.LBB44_15
	.p2align	4, 0x90
.LBB44_12:                              #   in Loop: Header=BB44_5 Depth=1
	movq	%rsi, %rax
	testq	%r9, %r9
	je	.LBB44_14
# %bb.13:                               #   in Loop: Header=BB44_5 Depth=1
	movq	%rsi, 144(%r8)
	movq	%r9, %rax
.LBB44_14:                              #   in Loop: Header=BB44_5 Depth=1
	movq	%r12, 136(%rsi)
	movq	%rax, %r9
	movq	%rsi, %r8
	jmp	.LBB44_15
.LBB44_1:
	leaq	-56(%rbp), %rdi
	callq	_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE@PLT
	xorl	%eax, %eax
	jmp	.LBB44_26
.LBB44_16:
	testq	%r9, %r9
	je	.LBB44_17
# %bb.18:
	movq	$0, 144(%r8)
	movq	-48(%rbp), %rcx
	cmpq	$0, 8(%rcx)
	je	.LBB44_19
# %bb.20:
	movl	$144, %eax
	addq	16(%rcx), %rax
	jmp	.LBB44_21
.LBB44_3:
	xorl	%eax, %eax
	xorl	%r13d, %r13d
	jmp	.LBB44_22
.LBB44_17:
	xorl	%eax, %eax
	jmp	.LBB44_22
.LBB44_19:
	leaq	8(%rcx), %rax
.LBB44_21:
	movq	%r9, (%rax)
	movq	%r8, 16(%rcx)
	movb	$1, %al
.LBB44_22:
	xorl	%edx, %edx
	testq	%r13, %r13
	setne	%dl
	movzbl	%al, %ecx
	leaq	-72(%rbp), %rsi
	movq	%r15, %rdi
	callq	*24(%r15)
	testq	%r13, %r13
	je	.LBB44_24
# %bb.23:
	movq	%r14, 152(%r13)
	movq	%r13, %rdi
	callq	pthread_mutex_lock@PLT
	leaq	-56(%rbp), %rdi
	callq	_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE@PLT
	movb	$0, 128(%r13)
	leaq	64(%r13), %rdi
	callq	pthread_cond_signal@PLT
	movq	%r13, %rdi
	callq	pthread_mutex_unlock@PLT
	jmp	.LBB44_25
.LBB44_24:
	leaq	-56(%rbp), %rdi
	callq	_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE@PLT
.LBB44_25:
	testq	%r13, %r13
	setne	%al
	andb	-72(%rbp), %al
	movzbl	%al, %eax
.LBB44_26:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end44:
	.size	_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy, .Lfunc_end44-_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy # -- Begin function _ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy,@function
_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy: # @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movabsq	$-7046029254386353131, %rax     # imm = 0x9E3779B97F4A7C15
	imulq	%rax, %rsi
	shrq	$54, %rsi
	imulq	%rax, %rdx
	shrq	$54, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB45_4
# %bb.1:
	leaq	(%rsi,%rsi,2), %rcx
	movq	_ZN6Halide7Runtime8Internal15Synchronization13table_storageE@GOTPCREL(%rip), %rdx
	leaq	(%rdx,%rcx,8), %rbx
	movl	$1, %esi
	xorl	%eax, %eax
	lock		cmpxchgq	%rsi, (%rdx,%rcx,8)
	jne	.LBB45_3
# %bb.2:
	movq	%rbx, %r15
	jmp	.LBB45_14
.LBB45_4:
	jae	.LBB45_9
# %bb.5:
	leaq	(%rsi,%rsi,2), %rcx
	movq	_ZN6Halide7Runtime8Internal15Synchronization13table_storageE@GOTPCREL(%rip), %rsi
	leaq	(%rsi,%rcx,8), %rbx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rsi,%rax,8), %r15
	movl	$1, %r12d
	xorl	%eax, %eax
	lock		cmpxchgq	%r12, (%rsi,%rcx,8)
	je	.LBB45_7
# %bb.6:
	movq	%rbx, %rdi
	callq	_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv@PLT
.LBB45_7:
	xorl	%eax, %eax
	lock		cmpxchgq	%r12, (%r15)
	je	.LBB45_14
# %bb.8:
	movq	%r15, %rdi
	jmp	.LBB45_13
.LBB45_3:
	movq	%rbx, %rdi
	callq	_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv@PLT
	movq	%rbx, %r15
	jmp	.LBB45_14
.LBB45_9:
	leaq	(%rdx,%rdx,2), %rcx
	movq	_ZN6Halide7Runtime8Internal15Synchronization13table_storageE@GOTPCREL(%rip), %rdx
	leaq	(%rdx,%rcx,8), %r15
	leaq	(%rsi,%rsi,2), %rax
	leaq	(%rdx,%rax,8), %rbx
	movl	$1, %r12d
	xorl	%eax, %eax
	lock		cmpxchgq	%r12, (%rdx,%rcx,8)
	je	.LBB45_11
# %bb.10:
	movq	%r15, %rdi
	callq	_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv@PLT
.LBB45_11:
	xorl	%eax, %eax
	lock		cmpxchgq	%r12, (%rbx)
	je	.LBB45_14
# %bb.12:
	movq	%rbx, %rdi
.LBB45_13:
	callq	_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv@PLT
.LBB45_14:
	movq	%rbx, (%r14)
	movq	%r15, 8(%r14)
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end45:
	.size	_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy, .Lfunc_end45-_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE # -- Begin function _ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE,@function
_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE: # @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	movq	8(%rbx), %rcx
	cmpq	%rcx, %rdi
	je	.LBB46_1
# %bb.6:
	jbe	.LBB46_14
# %bb.7:
	movq	(%rdi), %rax
	.p2align	4, 0x90
.LBB46_8:                               # %atomicrmw.start2
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	andq	$-2, %rcx
	lock		cmpxchgq	%rcx, (%rdi)
	jne	.LBB46_8
# %bb.9:                                # %atomicrmw.end1
	cmpq	$4, %rax
	jb	.LBB46_12
# %bb.10:                               # %atomicrmw.end1
	andl	$2, %eax
	testq	%rax, %rax
	jne	.LBB46_12
# %bb.11:
	callq	_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv@PLT
.LBB46_12:
	movq	8(%rbx), %rdi
	movq	(%rdi), %rax
	.p2align	4, 0x90
.LBB46_13:                              # %atomicrmw.start8
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	andq	$-2, %rcx
	lock		cmpxchgq	%rcx, (%rdi)
	jne	.LBB46_13
	jmp	.LBB46_3
.LBB46_1:
	movq	(%rdi), %rax
	.p2align	4, 0x90
.LBB46_2:                               # %atomicrmw.start
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	andq	$-2, %rcx
	lock		cmpxchgq	%rcx, (%rdi)
	jne	.LBB46_2
	jmp	.LBB46_3
.LBB46_14:
	movq	(%rcx), %rax
	.p2align	4, 0x90
.LBB46_15:                              # %atomicrmw.start14
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdx
	andq	$-2, %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	jne	.LBB46_15
# %bb.16:                               # %atomicrmw.end13
	cmpq	$4, %rax
	jb	.LBB46_19
# %bb.17:                               # %atomicrmw.end13
	andl	$2, %eax
	testq	%rax, %rax
	jne	.LBB46_19
# %bb.18:
	movq	%rcx, %rdi
	callq	_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv@PLT
.LBB46_19:
	movq	(%rbx), %rdi
	movq	(%rdi), %rax
	.p2align	4, 0x90
.LBB46_20:                              # %atomicrmw.start20
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	andq	$-2, %rcx
	lock		cmpxchgq	%rcx, (%rdi)
	jne	.LBB46_20
.LBB46_3:                               # %atomicrmw.end
	cmpq	$4, %rax
	jb	.LBB46_21
# %bb.4:                                # %atomicrmw.end
	andl	$2, %eax
	testq	%rax, %rax
	jne	.LBB46_21
# %bb.5:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv@PLT # TAILCALL
.LBB46_21:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end46:
	.size	_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE, .Lfunc_end46-_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal27default_desired_num_threadsEv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv # -- Begin function _ZN6Halide7Runtime8Internal27default_desired_num_threadsEv
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv,@function
_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv: # @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	.L.str.1(%rip), %rdi
	callq	getenv@PLT
	testq	%rax, %rax
	jne	.LBB47_2
# %bb.1:
	leaq	.L.str.2(%rip), %rdi
	callq	getenv@PLT
	testq	%rax, %rax
	je	.LBB47_3
.LBB47_2:
	movq	%rax, %rdi
	popq	%rbp
	jmp	atoi@PLT                        # TAILCALL
.LBB47_3:
	popq	%rbp
	jmp	halide_host_cpu_count@PLT       # TAILCALL
.Lfunc_end47:
	.size	_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv, .Lfunc_end47-_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal17clamp_num_threadsEi,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal17clamp_num_threadsEi # -- Begin function _ZN6Halide7Runtime8Internal17clamp_num_threadsEi
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal17clamp_num_threadsEi,@function
_ZN6Halide7Runtime8Internal17clamp_num_threadsEi: # @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$256, %edi                      # imm = 0x100
	jle	.LBB48_1
# %bb.2:
	movl	$256, %eax                      # imm = 0x100
	popq	%rbp
	retq
.LBB48_1:
	testl	%edi, %edi
	movl	$1, %eax
	cmovgl	%edi, %eax
	popq	%rbp
	retq
.Lfunc_end48:
	.size	_ZN6Halide7Runtime8Internal17clamp_num_threadsEi, .Lfunc_end48-_ZN6Halide7Runtime8Internal17clamp_num_threadsEi
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal13worker_threadEPv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal13worker_threadEPv # -- Begin function _ZN6Halide7Runtime8Internal13worker_threadEPv
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal13worker_threadEPv,@function
_ZN6Halide7Runtime8Internal13worker_threadEPv: # @_ZN6Halide7Runtime8Internal13worker_threadEPv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %r14
	movq	%r14, %rdi
	callq	halide_mutex_lock@PLT
	movq	%rbx, %rdi
	callq	_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE@PLT
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	halide_mutex_unlock@PLT         # TAILCALL
.Lfunc_end49:
	.size	_ZN6Halide7Runtime8Internal13worker_threadEPv, .Lfunc_end49-_ZN6Halide7Runtime8Internal13worker_threadEPv
                                        # -- End function
	.section	.text.halide_spawn_thread,"ax",@progbits
	.weak	halide_spawn_thread             # -- Begin function halide_spawn_thread
	.p2align	4, 0x90
	.type	halide_spawn_thread,@function
halide_spawn_thread:                    # @halide_spawn_thread
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$24, %edi
	callq	malloc@PLT
	movq	%rax, %rbx
	movq	%r15, (%rax)
	movq	%r14, 8(%rax)
	leaq	16(%rax), %rdi
	movq	$0, 16(%rax)
	movq	_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv@GOTPCREL(%rip), %rdx
	xorl	%esi, %esi
	movq	%rax, %rcx
	callq	pthread_create@PLT
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end50:
	.size	halide_spawn_thread, .Lfunc_end50-halide_spawn_thread
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal19spawn_thread_helperEPv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv # -- Begin function _ZN6Halide7Runtime8Internal19spawn_thread_helperEPv
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv,@function
_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv: # @_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	8(%rdi), %rdi
	callq	*(%rax)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end51:
	.size	_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv, .Lfunc_end51-_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv
                                        # -- End function
	.section	.text.halide_default_do_parallel_tasks,"ax",@progbits
	.weak	halide_default_do_parallel_tasks # -- Begin function halide_default_do_parallel_tasks
	.p2align	4, 0x90
	.type	halide_default_do_parallel_tasks,@function
halide_default_do_parallel_tasks:       # @halide_default_do_parallel_tasks
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r15
	movl	%esi, %r14d
	movslq	%esi, %rax
	movq	%rsp, %r12
	movq	%rax, %rcx
	shlq	$7, %rcx
	subq	%rcx, %r12
	movq	%r12, %rsp
	testl	%eax, %eax
	jle	.LBB52_4
# %bb.1:                                # %.preheader.preheader
	leaq	124(%r12), %rax
	xorl	%ecx, %ecx
	jmp	.LBB52_2
	.p2align	4, 0x90
.LBB52_6:                               #   in Loop: Header=BB52_2 Depth=1
	vmovups	(%rdx), %ymm0
	vmovups	24(%rdx), %ymm1
	addq	$56, %rdx
	vmovups	%ymm1, -100(%rax)
	vmovups	%ymm0, -124(%rax)
	movq	$0, -68(%rax)
	movq	%rdi, -20(%rax)
	movq	$0, -12(%rax)
	movl	$0, -4(%rax)
	movb	$0, (%rax)
	movq	%r15, -36(%rax)
.LBB52_7:                               #   in Loop: Header=BB52_2 Depth=1
	incq	%rcx
	movslq	%r14d, %rsi
	subq	$-128, %rax
	cmpq	%rsi, %rcx
	jge	.LBB52_4
.LBB52_2:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 40(%rdx)
	jg	.LBB52_6
# %bb.3:                                #   in Loop: Header=BB52_2 Depth=1
	decl	%r14d
	jmp	.LBB52_7
.LBB52_4:                               # %.loopexit3
	testl	%r14d, %r14d
	je	.LBB52_5
# %bb.8:
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rdi
	vzeroupper
	callq	halide_mutex_lock@PLT
	movl	%r14d, %edi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_@PLT
	testl	%r14d, %r14d
	jle	.LBB52_9
# %bb.12:
	movl	%r14d, %ebx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB52_13:                              # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE@PLT
	movl	116(%r12), %eax
	testl	%eax, %eax
	cmovnel	%eax, %r14d
	subq	$-128, %r12
	decq	%rbx
	jne	.LBB52_13
	jmp	.LBB52_10
.LBB52_5:
	xorl	%r14d, %r14d
	jmp	.LBB52_11
.LBB52_9:
	xorl	%r14d, %r14d
.LBB52_10:                              # %.loopexit
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_unlock@PLT
.LBB52_11:
	movl	%r14d, %eax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
.Lfunc_end52:
	.size	halide_default_do_parallel_tasks, .Lfunc_end52-halide_default_do_parallel_tasks
                                        # -- End function
	.section	.text.halide_default_semaphore_init,"ax",@progbits
	.weak	halide_default_semaphore_init   # -- Begin function halide_default_semaphore_init
	.p2align	4, 0x90
	.type	halide_default_semaphore_init,@function
halide_default_semaphore_init:          # @halide_default_semaphore_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%esi, %eax
	movl	%esi, (%rdi)
	popq	%rbp
	retq
.Lfunc_end53:
	.size	halide_default_semaphore_init, .Lfunc_end53-halide_default_semaphore_init
                                        # -- End function
	.section	.text.halide_default_semaphore_release,"ax",@progbits
	.weak	halide_default_semaphore_release # -- Begin function halide_default_semaphore_release
	.p2align	4, 0x90
	.type	halide_default_semaphore_release,@function
halide_default_semaphore_release:       # @halide_default_semaphore_release
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r14d
	movl	%esi, %ebx
	lock		xaddl	%ebx, (%rdi)
	testl	%esi, %esi
	je	.LBB54_3
# %bb.1:
	testl	%ebx, %ebx
	jne	.LBB54_3
# %bb.2:
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %r15
	movq	%r15, %rdi
	callq	halide_mutex_lock@PLT
	leaq	40(%r15), %rdi
	callq	halide_cond_broadcast@PLT
	leaq	56(%r15), %rdi
	callq	halide_cond_broadcast@PLT
	movq	%r15, %rdi
	callq	halide_mutex_unlock@PLT
.LBB54_3:
	addl	%r14d, %ebx
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end54:
	.size	halide_default_semaphore_release, .Lfunc_end54-halide_default_semaphore_release
                                        # -- End function
	.section	.text.halide_thread_pool_cleanup,"ax",@progbits
	.weak	halide_thread_pool_cleanup      # -- Begin function halide_thread_pool_cleanup
	.p2align	4, 0x90
	.type	halide_thread_pool_cleanup,@function
halide_thread_pool_cleanup:             # @halide_thread_pool_cleanup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	jmp	halide_shutdown_thread_pool@PLT # TAILCALL
.Lfunc_end55:
	.size	halide_thread_pool_cleanup, .Lfunc_end55-halide_thread_pool_cleanup
                                        # -- End function
	.section	.text.halide_shutdown_thread_pool,"ax",@progbits
	.weak	halide_shutdown_thread_pool     # -- Begin function halide_shutdown_thread_pool
	.p2align	4, 0x90
	.type	halide_shutdown_thread_pool,@function
halide_shutdown_thread_pool:            # @halide_shutdown_thread_pool
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %r14
	cmpb	$0, 2121(%r14)
	je	.LBB56_5
# %bb.1:
	movq	%r14, %rdi
	callq	halide_mutex_lock@PLT
	movb	$1, 2120(%r14)
	leaq	56(%r14), %rdi
	callq	halide_cond_broadcast@PLT
	leaq	40(%r14), %rdi
	callq	halide_cond_broadcast@PLT
	leaq	48(%r14), %rdi
	callq	halide_cond_broadcast@PLT
	movq	%r14, %rdi
	callq	halide_mutex_unlock@PLT
	cmpl	$0, 24(%r14)
	jle	.LBB56_4
# %bb.2:                                # %.preheader.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB56_3:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	72(%r14,%rbx,8), %rdi
	callq	halide_join_thread@PLT
	incq	%rbx
	movslq	24(%r14), %rax
	cmpq	%rax, %rbx
	jl	.LBB56_3
.LBB56_4:                               # %.loopexit
	addq	$12, %r14
	movl	$2116, %edx                     # imm = 0x844
	movq	%r14, %rdi
	xorl	%esi, %esi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	memset@PLT                      # TAILCALL
.LBB56_5:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end56:
	.size	halide_shutdown_thread_pool, .Lfunc_end56-halide_shutdown_thread_pool
                                        # -- End function
	.section	.text.halide_join_thread,"ax",@progbits
	.weak	halide_join_thread              # -- Begin function halide_join_thread
	.p2align	4, 0x90
	.type	halide_join_thread,@function
halide_join_thread:                     # @halide_join_thread
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	$0, -16(%rbp)
	movq	16(%rdi), %rdi
	leaq	-16(%rbp), %rsi
	callq	pthread_join@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end57:
	.size	halide_join_thread, .Lfunc_end57-halide_join_thread
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE # -- Begin function _ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE,@function
_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE: # @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$1, %al
	popq	%rbp
	retq
.Lfunc_end58:
	.size	_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE, .Lfunc_end58-_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib # -- Begin function _ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib,@function
_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib: # @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib
# %bb.0:
	testl	%edx, %edx
	jne	.LBB59_2
# %bb.1:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	32(%rdi), %rax
	movq	$0, (%rax)
	popq	%rbp
.LBB59_2:
	xorl	%eax, %eax
	retq
.Lfunc_end59:
	.size	_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib, .Lfunc_end59-_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib
                                        # -- End function
	.section	.text.halide_cond_signal,"ax",@progbits
	.weak	halide_cond_signal              # -- Begin function halide_cond_signal
	.p2align	4, 0x90
	.type	halide_cond_signal,@function
halide_cond_signal:                     # @halide_cond_signal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.LBB60_2
# %bb.1:
	movq	_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE@GOTPCREL(%rip), %rcx
	movq	%rcx, -48(%rbp)
	movq	_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv@GOTPCREL(%rip), %rcx
	movq	%rcx, -40(%rbp)
	movq	_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb@GOTPCREL(%rip), %rcx
	movq	%rcx, -24(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rsi
	callq	_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE@PLT
.LBB60_2:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	halide_cond_signal, .Lfunc_end60-halide_cond_signal
                                        # -- End function
	.section	.text.halide_mutex_array_create,"ax",@progbits
	.weak	halide_mutex_array_create       # -- Begin function halide_mutex_array_create
	.p2align	4, 0x90
	.type	halide_mutex_array_create,@function
halide_mutex_array_create:              # @halide_mutex_array_create
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edi, %r15d
	xorl	%ebx, %ebx
	movl	$8, %esi
	xorl	%edi, %edi
	callq	halide_malloc@PLT
	testq	%rax, %rax
	je	.LBB61_4
# %bb.1:
	movq	%rax, %r14
	movslq	%r15d, %rbx
	shlq	$3, %rbx
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	halide_malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	je	.LBB61_2
# %bb.3:
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset@PLT
	movq	%r14, %rbx
	jmp	.LBB61_4
.LBB61_2:
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	halide_free@PLT
.LBB61_4:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end61:
	.size	halide_mutex_array_create, .Lfunc_end61-halide_mutex_array_create
                                        # -- End function
	.section	.text.halide_mutex_array_destroy,"ax",@progbits
	.weak	halide_mutex_array_destroy      # -- Begin function halide_mutex_array_destroy
	.p2align	4, 0x90
	.type	halide_mutex_array_destroy,@function
halide_mutex_array_destroy:             # @halide_mutex_array_destroy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rsi), %rsi
	callq	halide_free@PLT
	movq	%rbx, %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	halide_free@PLT                 # TAILCALL
.Lfunc_end62:
	.size	halide_mutex_array_destroy, .Lfunc_end62-halide_mutex_array_destroy
                                        # -- End function
	.section	.text.halide_mutex_array_lock,"ax",@progbits
	.weak	halide_mutex_array_lock         # -- Begin function halide_mutex_array_lock
	.p2align	4, 0x90
	.type	halide_mutex_array_lock,@function
halide_mutex_array_lock:                # @halide_mutex_array_lock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movslq	%esi, %rax
	shlq	$3, %rax
	addq	(%rdi), %rax
	movq	%rax, %rdi
	callq	halide_mutex_lock@PLT
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end63:
	.size	halide_mutex_array_lock, .Lfunc_end63-halide_mutex_array_lock
                                        # -- End function
	.section	.text.halide_mutex_array_unlock,"ax",@progbits
	.weak	halide_mutex_array_unlock       # -- Begin function halide_mutex_array_unlock
	.p2align	4, 0x90
	.type	halide_mutex_array_unlock,@function
halide_mutex_array_unlock:              # @halide_mutex_array_unlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movslq	%esi, %rax
	shlq	$3, %rax
	addq	(%rdi), %rax
	movq	%rax, %rdi
	callq	halide_mutex_unlock@PLT
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end64:
	.size	halide_mutex_array_unlock, .Lfunc_end64-halide_mutex_array_unlock
                                        # -- End function
	.section	.text.halide_set_num_threads,"ax",@progbits
	.weak	halide_set_num_threads          # -- Begin function halide_set_num_threads
	.p2align	4, 0x90
	.type	halide_set_num_threads,@function
halide_set_num_threads:                 # @halide_set_num_threads
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	testl	%edi, %edi
	js	.LBB65_1
# %bb.2:
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_lock@PLT
	testl	%ebx, %ebx
	jne	.LBB65_4
# %bb.3:
	callq	_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv@PLT
	movl	%eax, %ebx
	jmp	.LBB65_4
.LBB65_1:
	leaq	.L.str.4(%rip), %rsi
	xorl	%edi, %edi
	callq	halide_error@PLT
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_lock@PLT
.LBB65_4:
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %r14
	movl	8(%r14), %r15d
	movl	%ebx, %edi
	callq	_ZN6Halide7Runtime8Internal17clamp_num_threadsEi@PLT
	movl	%eax, 8(%r14)
	movq	%r14, %rdi
	callq	halide_mutex_unlock@PLT
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end65:
	.size	halide_set_num_threads, .Lfunc_end65-halide_set_num_threads
                                        # -- End function
	.section	.text.halide_set_custom_do_task,"ax",@progbits
	.weak	halide_set_custom_do_task       # -- Begin function halide_set_custom_do_task
	.p2align	4, 0x90
	.type	halide_set_custom_do_task,@function
halide_set_custom_do_task:              # @halide_set_custom_do_task
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal14custom_do_taskE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end66:
	.size	halide_set_custom_do_task, .Lfunc_end66-halide_set_custom_do_task
                                        # -- End function
	.section	.text.halide_set_custom_do_loop_task,"ax",@progbits
	.weak	halide_set_custom_do_loop_task  # -- Begin function halide_set_custom_do_loop_task
	.p2align	4, 0x90
	.type	halide_set_custom_do_loop_task,@function
halide_set_custom_do_loop_task:         # @halide_set_custom_do_loop_task
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal19custom_do_loop_taskE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end67:
	.size	halide_set_custom_do_loop_task, .Lfunc_end67-halide_set_custom_do_loop_task
                                        # -- End function
	.section	.text.halide_set_custom_do_par_for,"ax",@progbits
	.weak	halide_set_custom_do_par_for    # -- Begin function halide_set_custom_do_par_for
	.p2align	4, 0x90
	.type	halide_set_custom_do_par_for,@function
halide_set_custom_do_par_for:           # @halide_set_custom_do_par_for
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal17custom_do_par_forE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end68:
	.size	halide_set_custom_do_par_for, .Lfunc_end68-halide_set_custom_do_par_for
                                        # -- End function
	.section	.text.halide_set_custom_parallel_runtime,"ax",@progbits
	.weak	halide_set_custom_parallel_runtime # -- Begin function halide_set_custom_parallel_runtime
	.p2align	4, 0x90
	.type	halide_set_custom_parallel_runtime,@function
halide_set_custom_parallel_runtime:     # @halide_set_custom_parallel_runtime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	16(%rbp), %r10
	movq	_ZN6Halide7Runtime8Internal17custom_do_par_forE@GOTPCREL(%rip), %rax
	movq	%rdi, (%rax)
	movq	_ZN6Halide7Runtime8Internal14custom_do_taskE@GOTPCREL(%rip), %rax
	movq	%rsi, (%rax)
	movq	_ZN6Halide7Runtime8Internal19custom_do_loop_taskE@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movq	_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
	movq	_ZN6Halide7Runtime8Internal21custom_semaphore_initE@GOTPCREL(%rip), %rax
	movq	%r8, (%rax)
	movq	_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE@GOTPCREL(%rip), %rax
	movq	%r9, (%rax)
	movq	_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE@GOTPCREL(%rip), %rax
	movq	%r10, (%rax)
	popq	%rbp
	retq
.Lfunc_end69:
	.size	halide_set_custom_parallel_runtime, .Lfunc_end69-halide_set_custom_parallel_runtime
                                        # -- End function
	.section	.text.halide_do_par_for,"ax",@progbits
	.weak	halide_do_par_for               # -- Begin function halide_do_par_for
	.p2align	4, 0x90
	.type	halide_do_par_for,@function
halide_do_par_for:                      # @halide_do_par_for
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal17custom_do_par_forE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                           # TAILCALL
.Lfunc_end70:
	.size	halide_do_par_for, .Lfunc_end70-halide_do_par_for
                                        # -- End function
	.section	.text.halide_do_parallel_tasks,"ax",@progbits
	.weak	halide_do_parallel_tasks        # -- Begin function halide_do_parallel_tasks
	.p2align	4, 0x90
	.type	halide_do_parallel_tasks,@function
halide_do_parallel_tasks:               # @halide_do_parallel_tasks
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                           # TAILCALL
.Lfunc_end71:
	.size	halide_do_parallel_tasks, .Lfunc_end71-halide_do_parallel_tasks
                                        # -- End function
	.section	.text.halide_semaphore_init,"ax",@progbits
	.weak	halide_semaphore_init           # -- Begin function halide_semaphore_init
	.p2align	4, 0x90
	.type	halide_semaphore_init,@function
halide_semaphore_init:                  # @halide_semaphore_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal21custom_semaphore_initE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                           # TAILCALL
.Lfunc_end72:
	.size	halide_semaphore_init, .Lfunc_end72-halide_semaphore_init
                                        # -- End function
	.section	.text.halide_semaphore_release,"ax",@progbits
	.weak	halide_semaphore_release        # -- Begin function halide_semaphore_release
	.p2align	4, 0x90
	.type	halide_semaphore_release,@function
halide_semaphore_release:               # @halide_semaphore_release
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                           # TAILCALL
.Lfunc_end73:
	.size	halide_semaphore_release, .Lfunc_end73-halide_semaphore_release
                                        # -- End function
	.section	.text.halide_semaphore_try_acquire,"ax",@progbits
	.weak	halide_semaphore_try_acquire    # -- Begin function halide_semaphore_try_acquire
	.p2align	4, 0x90
	.type	halide_semaphore_try_acquire,@function
halide_semaphore_try_acquire:           # @halide_semaphore_try_acquire
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                           # TAILCALL
.Lfunc_end74:
	.size	halide_semaphore_try_acquire, .Lfunc_end74-halide_semaphore_try_acquire
                                        # -- End function
	.section	.text.halide_default_get_symbol,"ax",@progbits
	.weak	halide_default_get_symbol       # -- Begin function halide_default_get_symbol
	.p2align	4, 0x90
	.type	halide_default_get_symbol,@function
halide_default_get_symbol:              # @halide_default_get_symbol
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	xorl	%edi, %edi
	popq	%rbp
	jmp	dlsym@PLT                       # TAILCALL
.Lfunc_end75:
	.size	halide_default_get_symbol, .Lfunc_end75-halide_default_get_symbol
                                        # -- End function
	.section	.text.halide_default_load_library,"ax",@progbits
	.weak	halide_default_load_library     # -- Begin function halide_default_load_library
	.p2align	4, 0x90
	.type	halide_default_load_library,@function
halide_default_load_library:            # @halide_default_load_library
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$1, %esi
	callq	dlopen@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB76_2
# %bb.1:
	callq	dlerror@PLT
.LBB76_2:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end76:
	.size	halide_default_load_library, .Lfunc_end76-halide_default_load_library
                                        # -- End function
	.section	.text.halide_default_get_library_symbol,"ax",@progbits
	.weak	halide_default_get_library_symbol # -- Begin function halide_default_get_library_symbol
	.p2align	4, 0x90
	.type	halide_default_get_library_symbol,@function
halide_default_get_library_symbol:      # @halide_default_get_library_symbol
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	jmp	dlsym@PLT                       # TAILCALL
.Lfunc_end77:
	.size	halide_default_get_library_symbol, .Lfunc_end77-halide_default_get_library_symbol
                                        # -- End function
	.section	.text.halide_set_custom_get_symbol,"ax",@progbits
	.weak	halide_set_custom_get_symbol    # -- Begin function halide_set_custom_get_symbol
	.p2align	4, 0x90
	.type	halide_set_custom_get_symbol,@function
halide_set_custom_get_symbol:           # @halide_set_custom_get_symbol
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal17custom_get_symbolE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end78:
	.size	halide_set_custom_get_symbol, .Lfunc_end78-halide_set_custom_get_symbol
                                        # -- End function
	.section	.text.halide_set_custom_load_library,"ax",@progbits
	.weak	halide_set_custom_load_library  # -- Begin function halide_set_custom_load_library
	.p2align	4, 0x90
	.type	halide_set_custom_load_library,@function
halide_set_custom_load_library:         # @halide_set_custom_load_library
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal19custom_load_libraryE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end79:
	.size	halide_set_custom_load_library, .Lfunc_end79-halide_set_custom_load_library
                                        # -- End function
	.section	.text.halide_set_custom_get_library_symbol,"ax",@progbits
	.weak	halide_set_custom_get_library_symbol # -- Begin function halide_set_custom_get_library_symbol
	.p2align	4, 0x90
	.type	halide_set_custom_get_library_symbol,@function
halide_set_custom_get_library_symbol:   # @halide_set_custom_get_library_symbol
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal25custom_get_library_symbolE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end80:
	.size	halide_set_custom_get_library_symbol, .Lfunc_end80-halide_set_custom_get_library_symbol
                                        # -- End function
	.section	.text.halide_get_symbol,"ax",@progbits
	.weak	halide_get_symbol               # -- Begin function halide_get_symbol
	.p2align	4, 0x90
	.type	halide_get_symbol,@function
halide_get_symbol:                      # @halide_get_symbol
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal17custom_get_symbolE@GOTPCREL(%rip), %rax
	popq	%rbp
	jmpq	*(%rax)                         # TAILCALL
.Lfunc_end81:
	.size	halide_get_symbol, .Lfunc_end81-halide_get_symbol
                                        # -- End function
	.section	.text.halide_load_library,"ax",@progbits
	.weak	halide_load_library             # -- Begin function halide_load_library
	.p2align	4, 0x90
	.type	halide_load_library,@function
halide_load_library:                    # @halide_load_library
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal19custom_load_libraryE@GOTPCREL(%rip), %rax
	popq	%rbp
	jmpq	*(%rax)                         # TAILCALL
.Lfunc_end82:
	.size	halide_load_library, .Lfunc_end82-halide_load_library
                                        # -- End function
	.section	.text.halide_get_library_symbol,"ax",@progbits
	.weak	halide_get_library_symbol       # -- Begin function halide_get_library_symbol
	.p2align	4, 0x90
	.type	halide_get_library_symbol,@function
halide_get_library_symbol:              # @halide_get_library_symbol
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal25custom_get_library_symbolE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                           # TAILCALL
.Lfunc_end83:
	.size	halide_get_library_symbol, .Lfunc_end83-halide_get_library_symbol
                                        # -- End function
	.section	.text.halide_set_gpu_device,"ax",@progbits
	.weak	halide_set_gpu_device           # -- Begin function halide_set_gpu_device
	.p2align	4, 0x90
	.type	halide_set_gpu_device,@function
halide_set_gpu_device:                  # @halide_set_gpu_device
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal17halide_gpu_deviceE@GOTPCREL(%rip), %rax
	movl	%edi, (%rax)
	movq	_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	popq	%rbp
	retq
.Lfunc_end84:
	.size	halide_set_gpu_device, .Lfunc_end84-halide_set_gpu_device
                                        # -- End function
	.section	.text.halide_get_gpu_device,"ax",@progbits
	.weak	halide_get_gpu_device           # -- Begin function halide_get_gpu_device
	.p2align	4, 0x90
	.type	halide_get_gpu_device,@function
halide_get_gpu_device:                  # @halide_get_gpu_device
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE@GOTPCREL(%rip), %rbx
	.p2align	4, 0x90
.LBB85_1:                               # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	xchgb	%al, (%rbx)
	testb	%al, %al
	jne	.LBB85_1
# %bb.2:
	movq	_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE@GOTPCREL(%rip), %r14
	cmpb	$0, (%r14)
	je	.LBB85_4
# %bb.3:
	movq	_ZN6Halide7Runtime8Internal17halide_gpu_deviceE@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	jmp	.LBB85_8
.LBB85_4:
	leaq	.L.str.8(%rip), %rdi
	callq	getenv@PLT
	testq	%rax, %rax
	je	.LBB85_5
# %bb.6:
	movq	%rax, %rdi
	callq	atoi@PLT
	jmp	.LBB85_7
.LBB85_5:
	movl	$-1, %eax
.LBB85_7:
	movq	_ZN6Halide7Runtime8Internal17halide_gpu_deviceE@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	movb	$1, (%r14)
.LBB85_8:
	movb	$0, (%rbx)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end85:
	.size	halide_get_gpu_device, .Lfunc_end85-halide_get_gpu_device
                                        # -- End function
	.section	.text.halide_default_trace,"ax",@progbits
	.weak	halide_default_trace            # -- Begin function halide_default_trace
	.p2align	4, 0x90
	.type	halide_default_trace,@function
halide_default_trace:                   # @halide_default_trace
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$4216, %rsp                     # imm = 0x1078
	movq	%rsi, %r13
	movq	%rdi, %r12
	movl	$1, %r15d
	movl	$1, %r14d
	lock		xaddl	%r14d, _ZZ20halide_default_traceE3ids(%rip)
	callq	halide_get_trace_file@PLT
	movl	%eax, -112(%rbp)                # 4-byte Spill
	testl	%eax, %eax
	movq	%r13, -88(%rbp)                 # 8-byte Spill
	movl	%r14d, -92(%rbp)                # 4-byte Spill
	movq	%r12, -104(%rbp)                # 8-byte Spill
	jle	.LBB86_13
# %bb.1:
	movzwl	34(%r13), %eax
	movzbl	33(%r13), %ebx
	addq	$7, %rbx
	shrq	$3, %rbx
	imulq	%rax, %rbx
	movl	48(%r13), %r12d
	shll	$2, %r12d
	movq	(%r13), %rdi
	callq	strlen@PLT
	movq	%rax, %r14
	incl	%r14d
	movq	24(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB86_3
# %bb.2:
	callq	strlen@PLT
	movq	%rax, %r15
	incl	%r15d
.LBB86_3:
	movq	%rbx, -136(%rbp)                # 8-byte Spill
	movq	%r12, -128(%rbp)                # 8-byte Spill
	leal	(%r12,%rbx), %eax
	movq	%r14, -144(%rbp)                # 8-byte Spill
	addl	%r14d, %eax
	movq	%r15, -152(%rbp)                # 8-byte Spill
	leal	(%r15,%rax), %r12d
	addl	$31, %r12d
	andl	$-4, %r12d
	movq	_ZN6Halide7Runtime8Internal19halide_trace_bufferE@GOTPCREL(%rip), %rax
	movq	(%rax), %r13
	leaq	12(%r13), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	cmpl	$1048577, %r12d                 # imm = 0x100001
	jae	.LBB86_28
# %bb.4:                                # %.preheader.preheader
	movl	$1073741823, %r14d              # imm = 0x3FFFFFFF
	movl	$-2147483648, %r15d             # imm = 0x80000000
	jmp	.LBB86_6
.LBB86_5:                               #   in Loop: Header=BB86_6 Depth=1
	lock		andl	$2147483647, (%r13)     # imm = 0x7FFFFFFF
	.p2align	4, 0x90
.LBB86_6:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB86_9 Depth 2
	movl	(%r13), %eax
	andl	%r14d, %eax
	leal	1(%rax), %ecx
                                        # kill: def $eax killed $eax killed $rax
	lock		cmpxchgl	%ecx, (%r13)
	jne	.LBB86_6
# %bb.7:                                #   in Loop: Header=BB86_6 Depth=1
	movl	%r12d, %eax
	lock		xaddl	%eax, 4(%r13)
	leal	(%rax,%r12), %ecx
	cmpl	$1048577, %ecx                  # imm = 0x100001
	jb	.LBB86_37
# %bb.8:                                #   in Loop: Header=BB86_6 Depth=1
	lock		addl	%r12d, 8(%r13)
	lock		decl	(%r13)
	.p2align	4, 0x90
.LBB86_9:                               #   Parent Loop BB86_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lock		orl	$1073741824, (%r13)     # imm = 0x40000000
	movl	$1073741824, %eax               # imm = 0x40000000
	lock		cmpxchgl	%r15d, (%r13)
	jne	.LBB86_9
# %bb.10:                               #   in Loop: Header=BB86_6 Depth=1
	movl	4(%r13), %ebx
	testl	%ebx, %ebx
	je	.LBB86_5
# %bb.11:                               #   in Loop: Header=BB86_6 Depth=1
	subl	8(%r13), %ebx
	movl	%ebx, 4(%r13)
	movl	-112(%rbp), %edi                # 4-byte Reload
	movq	-120(%rbp), %rsi                # 8-byte Reload
	movq	%rbx, %rdx
	callq	write@PLT
	movq	$0, 4(%r13)
	lock		andl	$2147483647, (%r13)     # imm = 0x7FFFFFFF
	cmpl	%eax, %ebx
	je	.LBB86_6
# %bb.12:                               #   in Loop: Header=BB86_6 Depth=1
	movq	-104(%rbp), %rdi                # 8-byte Reload
	leaq	.L.str.32(%rip), %rsi
	callq	halide_print@PLT
	callq	abort@PLT
	jmp	.LBB86_6
.LBB86_13:
	movq	%r12, -56(%rbp)
	movb	$0, -48(%rbp)
	leaq	-4248(%rbp), %rdi
	movq	%rdi, -80(%rbp)
	movq	%rdi, -72(%rbp)
	leaq	-153(%rbp), %rsi
	movq	%rsi, -64(%rbp)
	movb	$0, -153(%rbp)
	movzbl	33(%r13), %eax
	movl	$8, %ecx
	.p2align	4, 0x90
.LBB86_14:                              # =>This Inner Loop Header: Depth=1
	movl	%ecx, %r15d
	leal	(%r15,%r15), %ecx
	cmpl	%eax, %r15d
	jl	.LBB86_14
# %bb.15:
	cmpl	$65, %r15d
	jl	.LBB86_17
# %bb.16:
	leaq	.L.str.2.11(%rip), %rsi
	movq	%r12, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
.LBB86_17:
	movl	36(%r13), %ebx
	leaq	.L__const.halide_default_trace.event_types(%rip), %rax
	movq	(%rax,%rbx,8), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	leaq	.L.str.20.180(%rip), %rdx
	movq	%rax, %rdi
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	(%r13), %rdx
	movq	-64(%rbp), %rsi
	testq	%rdx, %rdx
	jne	.LBB86_19
# %bb.18:
	leaq	.L.str.30.166(%rip), %rdx
.LBB86_19:
	movq	%rax, %rdi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	leaq	.L.str.30.142(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movslq	44(%r13), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	leaq	.L.str.22.182(%rip), %rdx
	movq	%rax, %rdi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rax, -72(%rbp)
	cmpw	$2, 34(%r13)
	movq	%rbx, -112(%rbp)                # 8-byte Spill
	jb	.LBB86_21
# %bb.20:
	movq	-64(%rbp), %rsi
	leaq	.L.str.17(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rax, -72(%rbp)
.LBB86_21:
	cmpl	$0, 48(%r13)
	jle	.LBB86_40
# %bb.22:
	movq	16(%r13), %rax
	movslq	(%rax), %rdx
	movq	-64(%rbp), %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	movq	%rax, %rdi
	movq	%rax, -72(%rbp)
	cmpl	$2, 48(%r13)
	jl	.LBB86_40
# %bb.23:                               # %.preheader25.preheader
	movl	$1, %ebx
	leaq	.L.str.18(%rip), %r12
	movq	%r13, %r14
	leaq	.L.str.55(%rip), %r13
	jmp	.LBB86_26
	.p2align	4, 0x90
.LBB86_24:                              #   in Loop: Header=BB86_26 Depth=1
	movq	%r13, %rdx
.LBB86_25:                              #   in Loop: Header=BB86_26 Depth=1
	movq	-64(%rbp), %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %r14                 # 8-byte Reload
	movq	16(%r14), %rcx
	movslq	(%rcx,%rbx,4), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	movq	%rax, %rdi
	movq	%rax, -72(%rbp)
	incq	%rbx
	movslq	48(%r14), %rax
	cmpq	%rax, %rbx
	jge	.LBB86_41
.LBB86_26:                              # %.preheader25
                                        # =>This Inner Loop Header: Depth=1
	movzwl	34(%r14), %ecx
	cmpl	$2, %ecx
	jb	.LBB86_24
# %bb.27:                               #   in Loop: Header=BB86_26 Depth=1
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	movq	%r12, %rdx
	testl	%eax, %eax
	jne	.LBB86_24
	jmp	.LBB86_25
.LBB86_28:
	movl	$1073741823, %r15d              # imm = 0x3FFFFFFF
	movl	$-2147483648, %r14d             # imm = 0x80000000
	jmp	.LBB86_30
.LBB86_29:                              #   in Loop: Header=BB86_30 Depth=1
	lock		andl	$2147483647, (%r13)     # imm = 0x7FFFFFFF
	.p2align	4, 0x90
.LBB86_30:                              # %.preheader23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB86_33 Depth 2
	movl	(%r13), %eax
	andl	%r15d, %eax
	leal	1(%rax), %ecx
                                        # kill: def $eax killed $eax killed $rax
	lock		cmpxchgl	%ecx, (%r13)
	jne	.LBB86_30
# %bb.31:                               #   in Loop: Header=BB86_30 Depth=1
	movq	-104(%rbp), %rdi                # 8-byte Reload
	leaq	.L.str.31(%rip), %rsi
	callq	halide_print@PLT
	callq	abort@PLT
	movl	%r12d, %eax
	lock		xaddl	%eax, 4(%r13)
	leal	(%rax,%r12), %ecx
	cmpl	$1048577, %ecx                  # imm = 0x100001
	jb	.LBB86_37
# %bb.32:                               #   in Loop: Header=BB86_30 Depth=1
	lock		addl	%r12d, 8(%r13)
	lock		decl	(%r13)
	.p2align	4, 0x90
.LBB86_33:                              #   Parent Loop BB86_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lock		orl	$1073741824, (%r13)     # imm = 0x40000000
	movl	$1073741824, %eax               # imm = 0x40000000
	lock		cmpxchgl	%r14d, (%r13)
	jne	.LBB86_33
# %bb.34:                               #   in Loop: Header=BB86_30 Depth=1
	movl	4(%r13), %ebx
	testl	%ebx, %ebx
	je	.LBB86_29
# %bb.35:                               #   in Loop: Header=BB86_30 Depth=1
	subl	8(%r13), %ebx
	movl	%ebx, 4(%r13)
	movl	-112(%rbp), %edi                # 4-byte Reload
	movq	-120(%rbp), %rsi                # 8-byte Reload
	movq	%rbx, %rdx
	callq	write@PLT
	movq	$0, 4(%r13)
	lock		andl	$2147483647, (%r13)     # imm = 0x7FFFFFFF
	cmpl	%eax, %ebx
	je	.LBB86_30
# %bb.36:                               #   in Loop: Header=BB86_30 Depth=1
	movq	-104(%rbp), %rdi                # 8-byte Reload
	leaq	.L.str.32(%rip), %rsi
	callq	halide_print@PLT
	callq	abort@PLT
	jmp	.LBB86_30
.LBB86_37:                              # %.loopexit
	movl	%eax, %eax
	leaq	(%rax,%r13), %rbx
	addq	$12, %rbx
	cmpl	$4097, %r12d                    # imm = 0x1001
	movq	-88(%rbp), %r13                 # 8-byte Reload
	jb	.LBB86_51
# %bb.38:
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r14
	testq	%rax, %rax
	je	.LBB86_49
# %bb.39:
	leaq	1023(%r14), %r15
	movb	$0, 1023(%r14)
	movl	%r12d, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$1, %ecx
	callq	halide_uint64_to_string@PLT
	leaq	.L.str.7.167(%rip), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	subq	%r14, %rax
	leaq	1(%rax), %rdx
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	halide_print@PLT
	jmp	.LBB86_50
.LBB86_40:
	movq	%r13, %r14
.LBB86_41:                              # %.loopexit26
	cmpw	$1, 34(%r14)
	movq	-64(%rbp), %rsi
	leaq	.L.str.20(%rip), %rax
	leaq	.L.str.8.120(%rip), %rdx
	cmovaq	%rax, %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	cmpl	$2, -112(%rbp)                  # 4-byte Folded Reload
	jge	.LBB86_48
# %bb.42:
	cmpw	$1, 34(%r14)
	movq	-64(%rbp), %rsi
	leaq	.L.str.22(%rip), %rcx
	leaq	.L.str.23(%rip), %rdx
	cmovaq	%rcx, %rdx
	movq	%rax, %rdi
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	cmpw	$0, 34(%r14)
	je	.LBB86_48
# %bb.43:                               # %.peel.begin
	movzbl	32(%r14), %ecx
	cmpq	$3, %rcx
	ja	.LBB86_86
# %bb.44:                               # %.peel.begin
	leaq	.LJTI86_0(%rip), %rdx
	movslq	(%rdx,%rcx,4), %rcx
	addq	%rdx, %rcx
	jmpq	*%rcx
.LBB86_45:
	cmpl	$8, %r15d
	je	.LBB86_75
# %bb.46:
	cmpl	$16, %r15d
	jne	.LBB86_76
# %bb.47:
	movq	8(%r14), %rcx
	movswq	(%rcx), %rdx
	jmp	.LBB86_84
.LBB86_48:
	movl	-92(%rbp), %r12d                # 4-byte Reload
.LBB86_120:
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB86_125
# %bb.121:
	cmpb	$0, (%rcx)
	je	.LBB86_125
# %bb.122:
	movq	-64(%rbp), %rsi
	leaq	.L.str.26(%rip), %rdx
	movq	%rax, %rdi
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	24(%r14), %rdx
	movq	-64(%rbp), %rsi
	testq	%rdx, %rdx
	jne	.LBB86_124
# %bb.123:
	leaq	.L.str.30.166(%rip), %rdx
.LBB86_124:
	movq	%rax, %rdi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	leaq	.L.str.27(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
.LBB86_125:
	movq	-64(%rbp), %rsi
	leaq	.L.str.7.167(%rip), %rdx
	movq	%rax, %rdi
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rsi
	movq	-56(%rbp), %rdi
	subq	%rsi, %rax
	leaq	1(%rax), %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	_ZN6Halide7Runtime8Internal22halide_trace_file_lockE@GOTPCREL(%rip), %rbx
	.p2align	4, 0x90
.LBB86_126:                             # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	xchgb	%al, (%rbx)
	testb	%al, %al
	jne	.LBB86_126
# %bb.127:
	leaq	-4248(%rbp), %rsi
	movq	-104(%rbp), %rdi                # 8-byte Reload
	callq	halide_print@PLT
	movb	$0, (%rbx)
	movq	-80(%rbp), %rsi
	movq	-56(%rbp), %rdi
	testq	%rsi, %rsi
	je	.LBB86_129
# %bb.128:
	movq	-72(%rbp), %rdx
	subq	%rsi, %rdx
	incq	%rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	cmpb	$0, -48(%rbp)
	jne	.LBB86_130
	jmp	.LBB86_132
.LBB86_129:
	leaq	.L.str.29.165(%rip), %rsi
	callq	halide_error@PLT
	cmpb	$0, -48(%rbp)
	je	.LBB86_132
.LBB86_130:
	movq	-80(%rbp), %rdi
	leaq	-47(%rbp), %rax
	cmpq	%rax, %rdi
	je	.LBB86_132
# %bb.131:
	callq	free@PLT
	jmp	.LBB86_132
.LBB86_49:
	movl	%r12d, %edx
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	halide_uint64_to_string@PLT
	leaq	.L.str.7.167(%rip), %rdx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	leaq	.L.str.29.165(%rip), %rsi
	xorl	%edi, %edi
	callq	halide_error@PLT
.LBB86_50:
	movq	%r14, %rdi
	callq	free@PLT
.LBB86_51:
	movl	%r12d, (%rbx)
	movl	-92(%rbp), %r12d                # 4-byte Reload
	movl	%r12d, 4(%rbx)
	movl	32(%r13), %eax
	movl	%eax, 8(%rbx)
	vmovups	36(%r13), %xmm0
	vmovups	%xmm0, 12(%rbx)
	movq	16(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB86_53
# %bb.52:
	leaq	28(%rbx), %rdi
	movl	-128(%rbp), %edx                # 4-byte Reload
	callq	memcpy@PLT
.LBB86_53:
	movq	8(%r13), %rsi
	testq	%rsi, %rsi
	movq	-152(%rbp), %r14                # 8-byte Reload
	je	.LBB86_55
# %bb.54:
	movslq	24(%rbx), %rax
	leaq	(%rbx,%rax,4), %rdi
	addq	$28, %rdi
	movq	-136(%rbp), %rdx                # 8-byte Reload
	callq	memcpy@PLT
.LBB86_55:                              # %._crit_edge
	movslq	24(%rbx), %rax
	leaq	(%rbx,%rax,4), %rax
	addq	$28, %rax
	movzwl	10(%rbx), %ecx
	movzbl	9(%rbx), %edi
	addq	$7, %rdi
	shrq	$3, %rdi
	imulq	%rcx, %rdi
	addq	%rax, %rdi
	movq	(%r13), %rsi
	movl	-144(%rbp), %edx                # 4-byte Reload
	callq	memcpy@PLT
	movslq	24(%rbx), %rax
	leaq	(%rbx,%rax,4), %rax
	addq	$28, %rax
	movzwl	10(%rbx), %ecx
	movzbl	9(%rbx), %edi
	addq	$7, %rdi
	shrq	$3, %rdi
	imulq	%rcx, %rdi
	addq	%rax, %rdi
	.p2align	4, 0x90
.LBB86_56:                              # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rdi)
	leaq	1(%rdi), %rdi
	jne	.LBB86_56
# %bb.57:
	movq	24(%r13), %rax
	testq	%rax, %rax
	leaq	.L.str.1.10(%rip), %rsi
	cmovneq	%rax, %rsi
	movl	%r14d, %edx
	callq	memcpy@PLT
	movq	_ZN6Halide7Runtime8Internal19halide_trace_bufferE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	mfence
	lock		decl	(%rax)
	cmpl	$9, 36(%r13)
	jne	.LBB86_132
# %bb.58:
	movq	(%rcx), %rbx
	movl	$-2147483648, %ecx              # imm = 0x80000000
	.p2align	4, 0x90
.LBB86_59:                              # =>This Inner Loop Header: Depth=1
	lock		orl	$1073741824, (%rbx)     # imm = 0x40000000
	movl	$1073741824, %eax               # imm = 0x40000000
	lock		cmpxchgl	%ecx, (%rbx)
	jne	.LBB86_59
# %bb.60:
	movl	4(%rbx), %r14d
	testl	%r14d, %r14d
	je	.LBB86_63
# %bb.61:
	subl	8(%rbx), %r14d
	movl	%r14d, 4(%rbx)
	leaq	12(%rbx), %rsi
	movl	-112(%rbp), %edi                # 4-byte Reload
	movq	%r14, %rdx
	callq	write@PLT
	movq	$0, 4(%rbx)
	lock		andl	$2147483647, (%rbx)     # imm = 0x7FFFFFFF
	cmpl	%eax, %r14d
	je	.LBB86_132
# %bb.62:
	leaq	.L.str.32(%rip), %rsi
	movq	-104(%rbp), %rdi                # 8-byte Reload
	callq	halide_print@PLT
	callq	abort@PLT
	jmp	.LBB86_132
.LBB86_63:
	lock		andl	$2147483647, (%rbx)     # imm = 0x7FFFFFFF
.LBB86_132:
	movl	%r12d, %eax
	addq	$4216, %rsp                     # imm = 0x1078
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB86_65:
	cmpl	$8, %r15d
	je	.LBB86_78
# %bb.66:
	cmpl	$16, %r15d
	jne	.LBB86_79
# %bb.67:
	movq	8(%r14), %rcx
	movzwl	(%rcx), %edx
	jmp	.LBB86_84
.LBB86_68:
	cmpl	$15, %r15d
	jle	.LBB86_72
# %bb.69:
	cmpl	$32, %r15d
	jne	.LBB86_81
# %bb.70:
	movq	8(%r14), %rcx
	vmovss	(%rcx), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movq	-64(%rbp), %rsi
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	halide_double_to_string@PLT
	jmp	.LBB86_85
.LBB86_71:
	movq	8(%r14), %rcx
	movq	(%rcx), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	halide_pointer_to_string@PLT
	jmp	.LBB86_85
.LBB86_72:
	leaq	.L.str.24(%rip), %rsi
	movq	-104(%rbp), %rdi                # 8-byte Reload
	callq	halide_print@PLT
	callq	abort@PLT
	movq	8(%r14), %rcx
	movq	-72(%rbp), %rax
.LBB86_73:
	vmovsd	(%rcx), %xmm0                   # xmm0 = mem[0],zero
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
.LBB86_74:
	movl	$1, %edx
	callq	halide_double_to_string@PLT
	jmp	.LBB86_85
.LBB86_75:
	movq	8(%r14), %rcx
	movsbq	(%rcx), %rdx
	jmp	.LBB86_84
.LBB86_76:
	movq	8(%r14), %rcx
	cmpl	$32, %r15d
	jne	.LBB86_83
# %bb.77:
	movslq	(%rcx), %rdx
	jmp	.LBB86_84
.LBB86_78:
	movq	8(%r14), %rcx
	movzbl	(%rcx), %edx
	jmp	.LBB86_84
.LBB86_79:
	movq	8(%r14), %rcx
	cmpl	$32, %r15d
	jne	.LBB86_133
# %bb.80:
	movl	(%rcx), %edx
	jmp	.LBB86_134
.LBB86_81:
	movq	8(%r14), %rcx
	cmpl	$16, %r15d
	jne	.LBB86_73
# %bb.82:
	movzwl	(%rcx), %edi
	callq	halide_float16_bits_to_double@PLT
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	jmp	.LBB86_74
.LBB86_83:
	movq	(%rcx), %rdx
.LBB86_84:
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
.LBB86_85:
	movq	%rax, -72(%rbp)
.LBB86_86:
	movzwl	34(%r14), %ecx
	cmpw	$2, %cx
	jb	.LBB86_117
# %bb.87:                               # %.peel.newph.preheader
	movl	$1, %ebx
	leaq	.LJTI86_1(%rip), %r13
	movl	-92(%rbp), %r12d                # 4-byte Reload
	jmp	.LBB86_92
.LBB86_88:                              #   in Loop: Header=BB86_92 Depth=1
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %rcx
	movzwl	(%rcx,%rbx,2), %edx
	.p2align	4, 0x90
.LBB86_89:                              #   in Loop: Header=BB86_92 Depth=1
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
.LBB86_90:                              #   in Loop: Header=BB86_92 Depth=1
	movq	%rax, -72(%rbp)
.LBB86_91:                              #   in Loop: Header=BB86_92 Depth=1
	incq	%rbx
	movq	-88(%rbp), %r14                 # 8-byte Reload
	movzwl	34(%r14), %ecx
	cmpq	%rcx, %rbx
	jae	.LBB86_118
.LBB86_92:                              # %.peel.newph
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	leaq	.L.str.55(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movzbl	32(%r14), %ecx
	cmpq	$3, %rcx
	ja	.LBB86_91
# %bb.93:                               # %.peel.newph
                                        #   in Loop: Header=BB86_92 Depth=1
	movslq	(%r13,%rcx,4), %rcx
	addq	%r13, %rcx
	jmpq	*%rcx
.LBB86_94:                              #   in Loop: Header=BB86_92 Depth=1
	cmpl	$16, %r15d
	je	.LBB86_107
# %bb.95:                               #   in Loop: Header=BB86_92 Depth=1
	cmpl	$8, %r15d
	jne	.LBB86_108
# %bb.96:                               #   in Loop: Header=BB86_92 Depth=1
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %rcx
	movsbq	(%rcx,%rbx), %rdx
	jmp	.LBB86_89
	.p2align	4, 0x90
.LBB86_97:                              #   in Loop: Header=BB86_92 Depth=1
	cmpl	$16, %r15d
	je	.LBB86_88
# %bb.98:                               #   in Loop: Header=BB86_92 Depth=1
	cmpl	$8, %r15d
	jne	.LBB86_110
# %bb.99:                               #   in Loop: Header=BB86_92 Depth=1
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rbx), %edx
	jmp	.LBB86_89
	.p2align	4, 0x90
.LBB86_100:                             #   in Loop: Header=BB86_92 Depth=1
	cmpl	$15, %r15d
	jle	.LBB86_104
# %bb.101:                              #   in Loop: Header=BB86_92 Depth=1
	cmpl	$32, %r15d
	jne	.LBB86_112
# %bb.102:                              #   in Loop: Header=BB86_92 Depth=1
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %rcx
	vmovss	(%rcx,%rbx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-64(%rbp), %rsi
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	halide_double_to_string@PLT
	jmp	.LBB86_90
	.p2align	4, 0x90
.LBB86_103:                             #   in Loop: Header=BB86_92 Depth=1
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %rcx
	movq	(%rcx,%rbx,8), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	halide_pointer_to_string@PLT
	jmp	.LBB86_90
.LBB86_104:                             #   in Loop: Header=BB86_92 Depth=1
	movq	-104(%rbp), %rdi                # 8-byte Reload
	leaq	.L.str.24(%rip), %rsi
	callq	halide_print@PLT
	callq	abort@PLT
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rcx
	movq	-72(%rbp), %rax
.LBB86_105:                             #   in Loop: Header=BB86_92 Depth=1
	vmovsd	(%rcx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
.LBB86_106:                             #   in Loop: Header=BB86_92 Depth=1
	movl	$1, %edx
	callq	halide_double_to_string@PLT
	jmp	.LBB86_90
.LBB86_107:                             #   in Loop: Header=BB86_92 Depth=1
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %rcx
	movswq	(%rcx,%rbx,2), %rdx
	jmp	.LBB86_89
.LBB86_108:                             #   in Loop: Header=BB86_92 Depth=1
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %rcx
	cmpl	$32, %r15d
	jne	.LBB86_114
# %bb.109:                              #   in Loop: Header=BB86_92 Depth=1
	movslq	(%rcx,%rbx,4), %rdx
	jmp	.LBB86_89
.LBB86_110:                             #   in Loop: Header=BB86_92 Depth=1
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %rcx
	cmpl	$32, %r15d
	jne	.LBB86_115
# %bb.111:                              #   in Loop: Header=BB86_92 Depth=1
	movl	(%rcx,%rbx,4), %edx
	jmp	.LBB86_116
.LBB86_112:                             #   in Loop: Header=BB86_92 Depth=1
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	movq	8(%rcx), %rcx
	cmpl	$16, %r15d
	jne	.LBB86_105
# %bb.113:                              #   in Loop: Header=BB86_92 Depth=1
	movzwl	(%rcx,%rbx,2), %edi
	callq	halide_float16_bits_to_double@PLT
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	jmp	.LBB86_106
.LBB86_114:                             #   in Loop: Header=BB86_92 Depth=1
	movq	(%rcx,%rbx,8), %rdx
	jmp	.LBB86_89
.LBB86_115:                             #   in Loop: Header=BB86_92 Depth=1
	movq	(%rcx,%rbx,8), %rdx
.LBB86_116:                             #   in Loop: Header=BB86_92 Depth=1
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, %ecx
	callq	halide_uint64_to_string@PLT
	jmp	.LBB86_90
.LBB86_117:
	movl	-92(%rbp), %r12d                # 4-byte Reload
.LBB86_118:                             # %.loopexit63
	cmpw	$1, %cx
	jbe	.LBB86_120
# %bb.119:
	movq	-64(%rbp), %rsi
	leaq	.L.str.25(%rip), %rdx
	movq	%rax, %rdi
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	jmp	.LBB86_120
.LBB86_133:
	movq	(%rcx), %rdx
.LBB86_134:
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, %ecx
	callq	halide_uint64_to_string@PLT
	jmp	.LBB86_85
.Lfunc_end86:
	.size	halide_default_trace, .Lfunc_end86-halide_default_trace
	.section	.rodata.halide_default_trace,"a",@progbits
	.p2align	2
.LJTI86_0:
	.long	.LBB86_45-.LJTI86_0
	.long	.LBB86_65-.LJTI86_0
	.long	.LBB86_68-.LJTI86_0
	.long	.LBB86_71-.LJTI86_0
.LJTI86_1:
	.long	.LBB86_94-.LJTI86_1
	.long	.LBB86_97-.LJTI86_1
	.long	.LBB86_100-.LJTI86_1
	.long	.LBB86_103-.LJTI86_1
                                        # -- End function
	.section	.text.halide_get_trace_file,"ax",@progbits
	.weak	halide_get_trace_file           # -- Begin function halide_get_trace_file
	.p2align	4, 0x90
	.type	halide_get_trace_file,@function
halide_get_trace_file:                  # @halide_get_trace_file
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movq	_ZN6Halide7Runtime8Internal22halide_trace_file_lockE@GOTPCREL(%rip), %rbx
	.p2align	4, 0x90
.LBB87_1:                               # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	xchgb	%al, (%rbx)
	testb	%al, %al
	jne	.LBB87_1
# %bb.2:
	movq	_ZN6Halide7Runtime8Internal17halide_trace_fileE@GOTPCREL(%rip), %r12
	cmpl	$0, (%r12)
	js	.LBB87_3
.LBB87_9:
	movl	(%r12), %eax
	movb	$0, (%rbx)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB87_3:
	leaq	.L.str.28(%rip), %rdi
	callq	getenv@PLT
	testq	%rax, %rax
	je	.LBB87_8
# %bb.4:
	leaq	.L.str.29(%rip), %rsi
	movq	%rax, %rdi
	callq	fopen@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.LBB87_6
# %bb.5:
	leaq	.L.str.30(%rip), %rsi
	movq	%r14, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB87_6:
	movq	%r15, %rdi
	callq	fileno@PLT
	movl	%eax, %edi
	callq	halide_set_trace_file@PLT
	movq	_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE@GOTPCREL(%rip), %rax
	movq	%r15, (%rax)
	movq	_ZN6Halide7Runtime8Internal19halide_trace_bufferE@GOTPCREL(%rip), %r14
	cmpq	$0, (%r14)
	jne	.LBB87_9
# %bb.7:
	movl	$1048588, %edi                  # imm = 0x10000C
	callq	malloc@PLT
	movq	%rax, (%r14)
	movq	$0, 4(%rax)
	movl	$0, (%rax)
	jmp	.LBB87_9
.LBB87_8:
	xorl	%edi, %edi
	callq	halide_set_trace_file@PLT
	jmp	.LBB87_9
.Lfunc_end87:
	.size	halide_get_trace_file, .Lfunc_end87-halide_get_trace_file
                                        # -- End function
	.section	.text.halide_set_trace_file,"ax",@progbits
	.weak	halide_set_trace_file           # -- Begin function halide_set_trace_file
	.p2align	4, 0x90
	.type	halide_set_trace_file,@function
halide_set_trace_file:                  # @halide_set_trace_file
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal17halide_trace_fileE@GOTPCREL(%rip), %rax
	movl	%edi, (%rax)
	popq	%rbp
	retq
.Lfunc_end88:
	.size	halide_set_trace_file, .Lfunc_end88-halide_set_trace_file
                                        # -- End function
	.section	.text.halide_trace_cleanup,"ax",@progbits
	.weak	halide_trace_cleanup            # -- Begin function halide_trace_cleanup
	.p2align	4, 0x90
	.type	halide_trace_cleanup,@function
halide_trace_cleanup:                   # @halide_trace_cleanup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	jmp	halide_shutdown_trace@PLT       # TAILCALL
.Lfunc_end89:
	.size	halide_trace_cleanup, .Lfunc_end89-halide_trace_cleanup
                                        # -- End function
	.section	.text.halide_shutdown_trace,"ax",@progbits
	.weak	halide_shutdown_trace           # -- Begin function halide_shutdown_trace
	.p2align	4, 0x90
	.type	halide_shutdown_trace,@function
halide_shutdown_trace:                  # @halide_shutdown_trace
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE@GOTPCREL(%rip), %r14
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB90_1
# %bb.2:
	callq	fclose@PLT
	movl	%eax, %ebx
	movq	_ZN6Halide7Runtime8Internal17halide_trace_fileE@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	movq	_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	$0, (%r14)
	movq	_ZN6Halide7Runtime8Internal19halide_trace_bufferE@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB90_4
# %bb.3:
	callq	free@PLT
	jmp	.LBB90_4
.LBB90_1:
	xorl	%ebx, %ebx
.LBB90_4:
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end90:
	.size	halide_shutdown_trace, .Lfunc_end90-halide_shutdown_trace
                                        # -- End function
	.section	.text.halide_set_custom_trace,"ax",@progbits
	.weak	halide_set_custom_trace         # -- Begin function halide_set_custom_trace
	.p2align	4, 0x90
	.type	halide_set_custom_trace,@function
halide_set_custom_trace:                # @halide_set_custom_trace
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal19halide_custom_traceE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end91:
	.size	halide_set_custom_trace, .Lfunc_end91-halide_set_custom_trace
                                        # -- End function
	.section	.text.halide_trace,"ax",@progbits
	.weak	halide_trace                    # -- Begin function halide_trace
	.p2align	4, 0x90
	.type	halide_trace,@function
halide_trace:                           # @halide_trace
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal19halide_custom_traceE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                           # TAILCALL
.Lfunc_end92:
	.size	halide_trace, .Lfunc_end92-halide_trace
                                        # -- End function
	.section	.text.halide_trace_helper,"ax",@progbits
	.weak	halide_trace_helper             # -- Begin function halide_trace_helper
	.p2align	4, 0x90
	.type	halide_trace_helper,@function
halide_trace_helper:                    # @halide_trace_helper
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movl	%r9d, %ebx
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rdi, %r15
	movslq	48(%rbp), %r13
	movl	40(%rbp), %r9d
	movl	32(%rbp), %ecx
	movl	24(%rbp), %edx
	movl	16(%rbp), %eax
	movq	56(%rbp), %rdi
	movq	%rsi, -96(%rbp)
	movq	%r12, -88(%rbp)
	movq	%r14, -80(%rbp)
	movq	%rdi, -72(%rbp)
	movb	%r8b, -64(%rbp)
	movb	%bl, -63(%rbp)
	movw	%ax, -62(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -56(%rbp)
	movl	%r9d, -52(%rbp)
	movl	%r13d, -48(%rbp)
	leaq	-96(%rbp), %rsi
	movl	$56, %edx
	movq	%r15, %rdi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	leal	7(%rbx), %eax
	addl	$14, %ebx
	testl	%eax, %eax
	cmovnsl	%eax, %ebx
	sarl	$3, %ebx
	imull	16(%rbp), %ebx
	movslq	%ebx, %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	shlq	$2, %r13
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r15, %rdi
	leaq	-96(%rbp), %rsi
	callq	halide_trace@PLT
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end93:
	.size	halide_trace_helper, .Lfunc_end93-halide_trace_helper
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal9ends_withEPKcS3_,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal9ends_withEPKcS3_ # -- Begin function _ZN6Halide7Runtime8Internal9ends_withEPKcS3_
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal9ends_withEPKcS3_,@function
_ZN6Halide7Runtime8Internal9ends_withEPKcS3_: # @_ZN6Halide7Runtime8Internal9ends_withEPKcS3_
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$-2, %rax
	.p2align	4, 0x90
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	cmpb	$0, 2(%rdi,%rax)
	leaq	1(%rax), %rax
	jne	.LBB94_1
# %bb.2:                                # %.preheader2.preheader
	movq	$-2, %rcx
	.p2align	4, 0x90
.LBB94_3:                               # %.preheader2
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, 2(%rsi,%rcx)
	leaq	1(%rcx), %rcx
	jne	.LBB94_3
# %bb.4:
	cmpq	$-1, %rax
	je	.LBB94_6
# %bb.5:
	cmpq	$-1, %rcx
	je	.LBB94_6
	.p2align	4, 0x90
.LBB94_7:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	sete	%r10b
	testq	%rax, %rax
	sete	%dl
	movzbl	(%rdi,%rax), %r8d
	movzbl	(%rsi,%rcx), %r9d
	orb	%r10b, %dl
	jne	.LBB94_9
# %bb.8:                                # %.preheader
                                        #   in Loop: Header=BB94_7 Depth=1
	decq	%rcx
	decq	%rax
	cmpb	%r9b, %r8b
	je	.LBB94_7
.LBB94_9:                               # %.preheader..loopexit_crit_edge
	cmpb	%r9b, %r8b
	sete	%al
	andb	%dl, %al
	popq	%rbp
	retq
.LBB94_6:                               # %..loopexit_crit_edge
	movb	$1, %al
	popq	%rbp
	retq
.Lfunc_end94:
	.size	_ZN6Halide7Runtime8Internal9ends_withEPKcS3_, .Lfunc_end94-_ZN6Halide7Runtime8Internal9ends_withEPKcS3_
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5                               # -- Begin function halide_debug_to_file
.LCPI95_0:
	.long	327962                          # 0x5011a
	.long	1                               # 0x1
	.long	194                             # 0xc2
	.long	327963                          # 0x5011b
	.long	1                               # 0x1
	.long	202                             # 0xca
	.long	196892                          # 0x3011c
	.long	1                               # 0x1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI95_1:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.section	.text.halide_debug_to_file,"ax",@progbits
	.weak	halide_debug_to_file
	.p2align	4, 0x90
	.type	halide_debug_to_file,@function
halide_debug_to_file:                   # @halide_debug_to_file
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$4424, %rsp                     # imm = 0x1148
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbx
	cmpq	$0, 16(%rcx)
	jne	.LBB95_2
# %bb.1:
	cmpq	$0, (%r14)
	je	.LBB95_12
.LBB95_2:
	cmpl	$5, 36(%r14)
	jl	.LBB95_4
# %bb.3:
	leaq	.L.str.1.36(%rip), %rsi
	jmp	.LBB95_13
.LBB95_4:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	halide_copy_to_host@PLT
	leaq	.L.str.2.37(%rip), %rsi
	movq	%r12, %rdi
	callq	fopen@PLT
	testq	%rax, %rax
	je	.LBB95_11
# %bb.5:
	movq	%rbx, -144(%rbp)                # 8-byte Spill
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, -128(%rbp)
	vmovups	%ymm0, -96(%rbp)
	movslq	36(%r14), %r8
	movl	%r8d, %ecx
	testq	%r8, %r8
	movq	%r14, -48(%rbp)                 # 8-byte Spill
	jle	.LBB95_14
# %bb.6:
	movq	40(%r14), %rdx
	leaq	-1(%rcx), %rsi
	cmpq	$3, %rsi
	movl	$4, %esi
	cmovbq	%rcx, %rsi
	vmovups	(%rdx), %xmm0
	vmovaps	%xmm0, -128(%rbp)
	movl	-124(%rbp), %r9d
	cmpq	$1, %rsi
	je	.LBB95_10
# %bb.7:
	vmovups	16(%rdx), %xmm0
	vmovaps	%xmm0, -112(%rbp)
	movl	-108(%rbp), %edi
	imulq	%rdi, %r9
	cmpl	$2, %esi
	je	.LBB95_10
# %bb.8:
	vmovups	32(%rdx), %xmm0
	vmovaps	%xmm0, -96(%rbp)
	movl	-92(%rbp), %edi
	imulq	%rdi, %r9
	cmpl	$3, %esi
	je	.LBB95_10
# %bb.9:
	vmovups	48(%rdx), %xmm0
	vmovaps	%xmm0, -80(%rbp)
	movl	-76(%rbp), %edx
	imulq	%rdx, %r9
.LBB95_10:
	cmpl	$3, %r8d
	jle	.LBB95_15
	jmp	.LBB95_22
.LBB95_11:
	movl	$-2, %ebx
	jmp	.LBB95_163
.LBB95_12:
	leaq	.L.str.35(%rip), %rsi
.LBB95_13:
	movq	%rbx, %rdi
	callq	halide_error@PLT
	movl	$-1, %ebx
	jmp	.LBB95_163
.LBB95_14:
	movl	$1, %r9d
.LBB95_15:
	movl	%r8d, %esi
	negl	%esi
	movl	$3, %edx
	subl	%ecx, %edx
	movabsq	$4294967296, %rcx               # imm = 0x100000000
	andl	$3, %esi
	je	.LBB95_19
# %bb.16:                               # %.prol.preheader.preheader
	movq	%r8, %rdi
	shlq	$4, %rdi
	addq	%rbp, %rdi
	addq	$-120, %rdi
	negl	%esi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB95_17:                              # %.prol.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, -8(%rdi)
	movl	$0, (%rdi)
	decq	%rbx
	addq	$16, %rdi
	cmpl	%ebx, %esi
	jne	.LBB95_17
# %bb.18:                               # %.prol.loopexit.loopexit
	subq	%rbx, %r8
	movq	-48(%rbp), %r14                 # 8-byte Reload
.LBB95_19:                              # %.prol.loopexit
	cmpl	$3, %edx
	jb	.LBB95_22
# %bb.20:                               # %.new.preheader
	leal	-4(%r8), %edx
	shlq	$4, %r8
	leaq	-128(%rbp), %rsi
	addq	%r8, %rsi
	addq	$56, %rsi
	.p2align	4, 0x90
.LBB95_21:                              # %.new
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, -56(%rsi)
	movl	$0, -48(%rsi)
	movq	%rcx, -40(%rsi)
	movl	$0, -32(%rsi)
	movq	%rcx, -24(%rsi)
	movl	$0, -16(%rsi)
	movq	%rcx, -8(%rsi)
	movl	$0, (%rsi)
	addq	$64, %rsi
	addl	$4, %edx
	jne	.LBB95_21
.LBB95_22:                              # %.loopexit31
	movq	%r9, -64(%rbp)                  # 8-byte Spill
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movzbl	33(%r14), %r13d
	addq	$7, %r13
	movq	%r13, %rax
	shrq	$3, %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	leaq	.L.str.3.38(%rip), %rsi
	movq	%r12, %rdi
	vzeroupper
	callq	_ZN6Halide7Runtime8Internal9ends_withEPKcS3_@PLT
	testb	%al, %al
	jne	.LBB95_24
# %bb.23:
	leaq	.L.str.4.39(%rip), %rsi
	movq	%r12, %rdi
	callq	_ZN6Halide7Runtime8Internal9ends_withEPKcS3_@PLT
	testb	%al, %al
	je	.LBB95_34
.LBB95_24:
	movl	-124(%rbp), %ecx
	movl	-108(%rbp), %eax
	movl	-76(%rbp), %r12d
	cmpl	$2, %r12d
	setb	%dl
	movl	-92(%rbp), %esi
	cmpl	$5, %esi
	setl	%bl
	testb	%bl, %dl
	movl	%r15d, %edi
	movl	$1, %r15d
	cmovel	%esi, %r15d
	cmovnel	%esi, %r12d
	movabsq	$34362509641, %rdx              # imm = 0x8002A4949
	movq	%rdx, -4464(%rbp)
	movl	$16777231, -4456(%rbp)          # imm = 0x100000F
	movw	$4, -4452(%rbp)
	movl	$1, -4450(%rbp)
	movl	%ecx, -4446(%rbp)
	movabsq	$4295229697, %rcx               # imm = 0x100040101
	movq	%rcx, -4442(%rbp)
	movl	%eax, -4434(%rbp)
	andl	$-8, %r13d
	movabsq	$4295164162, %rcx               # imm = 0x100030102
	movq	%rcx, -4430(%rbp)
	movw	%r13w, -4422(%rbp)
	movabsq	$4295164163, %rcx               # imm = 0x100030103
	movq	%rcx, -4418(%rbp)
	movw	$1, -4410(%rbp)
	xorl	%ecx, %ecx
	cmpl	$2, %r12d
	setg	%cl
	incl	%ecx
	movabsq	$4295164166, %rdx               # imm = 0x100030106
	movq	%rdx, -4406(%rbp)
	movw	%cx, -4398(%rbp)
	movl	$262417, -4394(%rbp)            # imm = 0x40111
	movl	%r12d, -4390(%rbp)
	movabsq	$845614636073170, %rcx          # imm = 0x30115000000D2
	movq	%rcx, -4386(%rbp)
	movl	$1, -4378(%rbp)
	movw	%r12w, -4374(%rbp)
	movabsq	$4295229718, %rcx               # imm = 0x100040116
	movq	%rcx, -4370(%rbp)
	movq	-136(%rbp), %rbx                # 8-byte Reload
	movq	-64(%rbp), %rdx                 # 8-byte Reload
	imull	%ebx, %edx
	cmpl	$1, %r12d
	leal	210(,%r12,4), %ecx
	cmovel	%edx, %ecx
	movl	%eax, -4362(%rbp)
	movl	$262423, -4358(%rbp)            # imm = 0x40117
	movl	%r12d, -4354(%rbp)
	movl	%ecx, -4350(%rbp)
	vmovaps	.LCPI95_0(%rip), %ymm0          # ymm0 = [327962,1,194,327963,1,202,196892,1]
	vmovups	%ymm0, -4346(%rbp)
	movw	$2, -4314(%rbp)
	movabsq	$4295164200, %rax               # imm = 0x100030128
	movq	%rax, -4310(%rbp)
	movw	$1, -4302(%rbp)
	movslq	%edi, %rax
	movq	_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE@GOTPCREL(%rip), %rcx
	movzwl	(%rcx,%rax,2), %eax
	movabsq	$4295164243, %rcx               # imm = 0x100030153
	movq	%rcx, -4298(%rbp)
	movw	%ax, -4290(%rbp)
	movabsq	$4295262437, %rax               # imm = 0x1000480E5
	movq	%rax, -4286(%rbp)
	movl	%r15d, -4278(%rbp)
	vmovaps	.LCPI95_1(%rip), %xmm0          # xmm0 = [0,1,1,1]
	vmovups	%xmm0, -4274(%rbp)
	movl	$1, -4258(%rbp)
	leaq	-4464(%rbp), %rdi
	movl	$210, %esi
	movl	$1, %edx
	movq	-56(%rbp), %r13                 # 8-byte Reload
	movq	%r13, %rcx
	vzeroupper
	callq	fwrite@PLT
	testq	%rax, %rax
	je	.LBB95_33
# %bb.25:
	cmpl	$2, %r12d
	jl	.LBB95_32
# %bb.26:
	leal	210(,%r12,8), %eax
	movl	%eax, -368(%rbp)
	imull	%ebx, %r15d
	leaq	-368(%rbp), %r14
	movl	%r12d, %ebx
	.p2align	4, 0x90
.LBB95_27:                              # =>This Inner Loop Header: Depth=1
	movl	$4, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r13, %rcx
	callq	fwrite@PLT
	testq	%rax, %rax
	je	.LBB95_44
# %bb.28:                               #   in Loop: Header=BB95_27 Depth=1
	movl	-124(%rbp), %eax
	imull	%r15d, %eax
	imull	-108(%rbp), %eax
	addl	%eax, -368(%rbp)
	decl	%ebx
	jne	.LBB95_27
# %bb.29:
	movl	%eax, -212(%rbp)
	leaq	-212(%rbp), %r14
	.p2align	4, 0x90
.LBB95_30:                              # =>This Inner Loop Header: Depth=1
	movl	$4, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r13, %rcx
	callq	fwrite@PLT
	testq	%rax, %rax
	je	.LBB95_49
# %bb.31:                               #   in Loop: Header=BB95_30 Depth=1
	decl	%r12d
	jne	.LBB95_30
.LBB95_32:
	xorl	%r15d, %r15d
	jmp	.LBB95_127
.LBB95_33:
	movl	$-3, %ebx
	jmp	.LBB95_162
.LBB95_34:
	leaq	.L.str.5.40(%rip), %rsi
	movq	%r12, %rdi
	callq	_ZN6Halide7Runtime8Internal9ends_withEPKcS3_@PLT
	testb	%al, %al
	je	.LBB95_42
# %bb.35:                               # %.preheader30.preheader
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB95_36:                              # %.preheader30
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%r12,%rcx)
	leaq	1(%rcx), %rcx
	jne	.LBB95_36
# %bb.37:                               # %.preheader29.preheader
	movl	$1, %eax
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB95_38:                              # %.preheader29
                                        # =>This Inner Loop Header: Depth=1
	incq	%rax
	cmpb	$46, -2(%r12,%rcx)
	leaq	-1(%rcx), %rcx
	jne	.LBB95_38
# %bb.39:
	leaq	(%r12,%rcx), %rsi
	movq	%r12, %rdx
	subq	%rsi, %rdx
	xorl	%r13d, %r13d
	movq	%rax, %rsi
	.p2align	4, 0x90
.LBB95_40:                              # =>This Inner Loop Header: Depth=1
	testq	%rsi, %rsi
	je	.LBB95_45
# %bb.41:                               #   in Loop: Header=BB95_40 Depth=1
	leaq	(%r12,%r13), %rdi
	decq	%r13
	incq	%rsi
	cmpb	$47, -2(%rcx,%rdi)
	jne	.LBB95_40
	jmp	.LBB95_46
.LBB95_42:
	movl	-124(%rbp), %eax
	movl	-108(%rbp), %ecx
	movl	%eax, -4464(%rbp)
	movl	%ecx, -4460(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, -4456(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -4452(%rbp)
	movl	%r15d, -4448(%rbp)
	leaq	-4464(%rbp), %rdi
	movl	$20, %esi
	movl	$1, %edx
	movq	-56(%rbp), %r13                 # 8-byte Reload
	movq	%r13, %rcx
	callq	fwrite@PLT
	xorl	%r15d, %r15d
	testq	%rax, %rax
	jne	.LBB95_127
# %bb.43:
	movl	$-12, %ebx
	jmp	.LBB95_162
.LBB95_44:
	movl	$-4, %ebx
	jmp	.LBB95_162
.LBB95_45:
	movq	%rdx, %r13
.LBB95_46:
	leaq	-4464(%rbp), %r9
	movq	%r9, %rdx
	cmpq	$-1, %r13
	je	.LBB95_67
# %bb.47:                               # %.preheader28.preheader
	cmpq	$-128, %r13
	jb	.LBB95_50
# %bb.48:
	leaq	-4464(%rbp), %rdx
	movq	%r13, %rsi
	jmp	.LBB95_61
.LBB95_49:
	movl	$-5, %ebx
	jmp	.LBB95_162
.LBB95_50:                              # %vector.memcheck
	movq	%r13, %r8
	notq	%r8
	leaq	-4464(%rbp), %rdx
	leaq	(%r12,%r13), %r10
	movq	%r12, %rsi
	subq	%rax, %rsi
	cmpq	%rsi, %rdx
	jae	.LBB95_52
# %bb.51:                               # %vector.memcheck
	leaq	(%r8,%rbp), %rax
	addq	$-4464, %rax                    # imm = 0xEE90
	leaq	(%r10,%rcx), %rdi
	movq	%r13, %rsi
	cmpq	%rax, %rdi
	jb	.LBB95_61
.LBB95_52:                              # %vector.ph
	movq	%r8, %rsi
	andq	$-128, %rsi
	leaq	-128(%rsi), %rdi
	movq	%rdi, %rdx
	shrq	$7, %rdx
	incq	%rdx
	movl	%edx, %eax
	andl	$3, %eax
	cmpq	$384, %rdi                      # imm = 0x180
	jae	.LBB95_54
# %bb.53:
	xorl	%edi, %edi
	jmp	.LBB95_56
.LBB95_54:                              # %vector.ph.new
	andq	$-4, %rdx
	negq	%rdx
	xorl	%edi, %edi
.LBB95_55:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r10,%rdi), %rbx
	vmovups	(%rcx,%rbx), %ymm0
	vmovups	32(%rcx,%rbx), %ymm1
	vmovups	64(%rcx,%rbx), %ymm2
	vmovups	96(%rcx,%rbx), %ymm3
	vmovups	%ymm0, -4464(%rbp,%rdi)
	vmovups	%ymm1, -4432(%rbp,%rdi)
	vmovups	%ymm2, -4400(%rbp,%rdi)
	vmovups	%ymm3, -4368(%rbp,%rdi)
	vmovups	128(%rcx,%rbx), %ymm0
	vmovups	160(%rcx,%rbx), %ymm1
	vmovups	192(%rcx,%rbx), %ymm2
	vmovups	224(%rcx,%rbx), %ymm3
	vmovups	%ymm0, -4336(%rbp,%rdi)
	vmovups	%ymm1, -4304(%rbp,%rdi)
	vmovups	%ymm2, -4272(%rbp,%rdi)
	vmovups	%ymm3, -4240(%rbp,%rdi)
	vmovups	256(%rcx,%rbx), %ymm0
	vmovups	288(%rcx,%rbx), %ymm1
	vmovups	320(%rcx,%rbx), %ymm2
	vmovups	352(%rcx,%rbx), %ymm3
	vmovups	%ymm0, -4208(%rbp,%rdi)
	vmovups	%ymm1, -4176(%rbp,%rdi)
	vmovups	%ymm2, -4144(%rbp,%rdi)
	vmovups	%ymm3, -4112(%rbp,%rdi)
	vmovups	384(%rcx,%rbx), %ymm0
	vmovups	416(%rcx,%rbx), %ymm1
	vmovups	448(%rcx,%rbx), %ymm2
	vmovups	480(%rcx,%rbx), %ymm3
	vmovups	%ymm0, -4080(%rbp,%rdi)
	vmovups	%ymm1, -4048(%rbp,%rdi)
	vmovups	%ymm2, -4016(%rbp,%rdi)
	vmovups	%ymm3, -3984(%rbp,%rdi)
	addq	$512, %rdi                      # imm = 0x200
	addq	$4, %rdx
	jne	.LBB95_55
.LBB95_56:                              # %middle.block.unr-lcssa
	testq	%rax, %rax
	je	.LBB95_59
# %bb.57:                               # %vector.body.epil.preheader
	addq	$96, %rdi
	negq	%rax
.LBB95_58:                              # %vector.body.epil
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r10,%rdi), %rdx
	vmovups	-96(%rcx,%rdx), %ymm0
	vmovups	-64(%rcx,%rdx), %ymm1
	vmovups	-32(%rcx,%rdx), %ymm2
	vmovups	(%rcx,%rdx), %ymm3
	vmovups	%ymm0, -4560(%rbp,%rdi)
	vmovups	%ymm1, -4528(%rbp,%rdi)
	vmovups	%ymm2, -4496(%rbp,%rdi)
	vmovups	%ymm3, -4464(%rbp,%rdi)
	subq	$-128, %rdi
	incq	%rax
	jne	.LBB95_58
.LBB95_59:                              # %middle.block
	leaq	(%rsi,%rbp), %rdx
	addq	$-4464, %rdx                    # imm = 0xEE90
	cmpq	%r8, %rsi
	je	.LBB95_66
# %bb.60:
	addq	%r13, %rsi
.LBB95_61:                              # %.preheader28.preheader141
	movq	$-2, %rax
	subq	%rsi, %rax
	movl	%esi, %edi
	andl	$7, %edi
	cmpq	$7, %rdi
	je	.LBB95_64
# %bb.62:                               # %.preheader28.prol.preheader
	xorq	$7, %rdi
	.p2align	4, 0x90
.LBB95_63:                              # %.preheader28.prol
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r12,%rsi), %rbx
	incq	%rsi
	movzbl	(%rcx,%rbx), %ebx
	movb	%bl, (%rdx)
	incq	%rdx
	decq	%rdi
	jne	.LBB95_63
.LBB95_64:                              # %.preheader28.prol.loopexit
	cmpq	$7, %rax
	jb	.LBB95_66
	.p2align	4, 0x90
.LBB95_65:                              # %.preheader28
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r12,%rsi), %rax
	movzbl	(%rcx,%rax), %ebx
	movb	%bl, (%rdx)
	movzbl	1(%rcx,%rax), %ebx
	movb	%bl, 1(%rdx)
	movzbl	2(%rcx,%rax), %ebx
	movb	%bl, 2(%rdx)
	movzbl	3(%rcx,%rax), %ebx
	movb	%bl, 3(%rdx)
	movzbl	4(%rcx,%rax), %ebx
	movb	%bl, 4(%rdx)
	movzbl	5(%rcx,%rax), %ebx
	movb	%bl, 5(%rdx)
	movzbl	6(%rcx,%rax), %ebx
	movb	%bl, 6(%rdx)
	addq	$8, %rsi
	movzbl	7(%rcx,%rax), %eax
	movb	%al, 7(%rdx)
	addq	$8, %rdx
	cmpq	$-1, %rsi
	jne	.LBB95_65
.LBB95_66:                              # %.loopexit144
	leaq	-4208(%rbp), %rax
	cmpq	%rax, %rdx
	movq	-48(%rbp), %r14                 # 8-byte Reload
	jae	.LBB95_79
.LBB95_67:
	subq	%rdx, %r9
	addq	$256, %r9                       # imm = 0x100
	cmpq	$127, %r9
	jbe	.LBB95_77
# %bb.68:                               # %vector.ph116
	movq	%r9, %rcx
	andq	$-128, %rcx
	leaq	-128(%rcx), %rax
	movq	%rax, %rdi
	shrq	$7, %rdi
	incq	%rdi
	movl	%edi, %esi
	andl	$7, %esi
	cmpq	$896, %rax                      # imm = 0x380
	jae	.LBB95_70
# %bb.69:
	xorl	%eax, %eax
	jmp	.LBB95_72
.LBB95_70:                              # %vector.ph116.new
	leaq	992(%rdx), %rbx
	andq	$-8, %rdi
	negq	%rdi
	xorl	%eax, %eax
	vxorps	%xmm0, %xmm0, %xmm0
.LBB95_71:                              # %vector.body112
                                        # =>This Inner Loop Header: Depth=1
	vmovups	%ymm0, -992(%rbx,%rax)
	vmovups	%ymm0, -960(%rbx,%rax)
	vmovups	%ymm0, -928(%rbx,%rax)
	vmovups	%ymm0, -896(%rbx,%rax)
	vmovups	%ymm0, -864(%rbx,%rax)
	vmovups	%ymm0, -832(%rbx,%rax)
	vmovups	%ymm0, -800(%rbx,%rax)
	vmovups	%ymm0, -768(%rbx,%rax)
	vmovups	%ymm0, -736(%rbx,%rax)
	vmovups	%ymm0, -704(%rbx,%rax)
	vmovups	%ymm0, -672(%rbx,%rax)
	vmovups	%ymm0, -640(%rbx,%rax)
	vmovups	%ymm0, -608(%rbx,%rax)
	vmovups	%ymm0, -576(%rbx,%rax)
	vmovups	%ymm0, -544(%rbx,%rax)
	vmovups	%ymm0, -512(%rbx,%rax)
	vmovups	%ymm0, -480(%rbx,%rax)
	vmovups	%ymm0, -448(%rbx,%rax)
	vmovups	%ymm0, -416(%rbx,%rax)
	vmovups	%ymm0, -384(%rbx,%rax)
	vmovups	%ymm0, -352(%rbx,%rax)
	vmovups	%ymm0, -320(%rbx,%rax)
	vmovups	%ymm0, -288(%rbx,%rax)
	vmovups	%ymm0, -256(%rbx,%rax)
	vmovups	%ymm0, -224(%rbx,%rax)
	vmovups	%ymm0, -192(%rbx,%rax)
	vmovups	%ymm0, -160(%rbx,%rax)
	vmovups	%ymm0, -128(%rbx,%rax)
	vmovups	%ymm0, -96(%rbx,%rax)
	vmovups	%ymm0, -64(%rbx,%rax)
	vmovups	%ymm0, -32(%rbx,%rax)
	vmovups	%ymm0, (%rbx,%rax)
	addq	$1024, %rax                     # imm = 0x400
	addq	$8, %rdi
	jne	.LBB95_71
.LBB95_72:                              # %middle.block110.unr-lcssa
	testq	%rsi, %rsi
	je	.LBB95_75
# %bb.73:                               # %vector.body112.epil.preheader
	addq	%rdx, %rax
	addq	$96, %rax
	negq	%rsi
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB95_74:                              # %vector.body112.epil
                                        # =>This Inner Loop Header: Depth=1
	vmovups	%ymm0, -96(%rax)
	vmovups	%ymm0, -64(%rax)
	vmovups	%ymm0, -32(%rax)
	vmovups	%ymm0, (%rax)
	subq	$-128, %rax
	incq	%rsi
	jne	.LBB95_74
.LBB95_75:                              # %middle.block110
	cmpq	%r9, %rcx
	movq	-48(%rbp), %r14                 # 8-byte Reload
	je	.LBB95_79
# %bb.76:
	addq	%rcx, %rdx
.LBB95_77:                              # %scalar.ph111.preheader
	leaq	-4208(%rbp), %rax
	.p2align	4, 0x90
.LBB95_78:                              # %scalar.ph111
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, (%rdx)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.LBB95_78
.LBB95_79:                              # %.loopexit27
	movl	%r15d, %r12d
	vmovups	.L__const.halide_debug_to_file.header+96(%rip), %ymm0
	vmovups	%ymm0, -272(%rbp)
	vmovups	.L__const.halide_debug_to_file.header+64(%rip), %ymm0
	vmovups	%ymm0, -304(%rbp)
	vmovups	.L__const.halide_debug_to_file.header+32(%rip), %ymm0
	vmovups	%ymm0, -336(%rbp)
	vmovups	.L__const.halide_debug_to_file.header(%rip), %ymm0
	vmovups	%ymm0, -368(%rbp)
	movb	$0, -240(%rbp)
	leaq	-368(%rbp), %rdi
	movl	$1, %r15d
	movl	$128, %esi
	movl	$1, %edx
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	vzeroupper
	callq	fwrite@PLT
	movl	36(%r14), %r10d
	testl	%r10d, %r10d
	jle	.LBB95_95
# %bb.80:
	movq	40(%r14), %r8
	leaq	-1(%r10), %r9
	movl	%r10d, %esi
	andl	$3, %esi
	cmpq	$3, %r9
	jae	.LBB95_103
# %bb.81:
	xorl	%edi, %edi
	xorl	%r15d, %r15d
.LBB95_82:                              # %.preheader26.preheader.unr-lcssa
	testq	%rsi, %rsi
	je	.LBB95_87
# %bb.83:                               # %.epil.preheader.preheader
	shlq	$4, %rdi
	leaq	(%r8,%rdi), %rax
	addq	$8, %rax
	jmp	.LBB95_85
	.p2align	4, 0x90
.LBB95_84:                              #   in Loop: Header=BB95_85 Depth=1
	addq	$16, %rax
	decq	%rsi
	je	.LBB95_87
.LBB95_85:                              # %.epil.preheader
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	jle	.LBB95_84
# %bb.86:                               #   in Loop: Header=BB95_85 Depth=1
	movslq	-4(%rax), %rdx
	decq	%rdx
	imulq	%rcx, %rdx
	addq	%rdx, %r15
	jmp	.LBB95_84
.LBB95_87:                              # %.preheader26.preheader
	movl	%r10d, %esi
	andl	$3, %esi
	cmpq	$3, %r9
	jae	.LBB95_113
# %bb.88:
	xorl	%edi, %edi
	xorl	%edx, %edx
	jmp	.LBB95_89
.LBB95_95:
	xorl	%edx, %edx
	jmp	.LBB95_96
.LBB95_103:                             # %.new161
	movl	%r10d, %r11d
	andl	$-4, %r11d
	leaq	56(%r8), %rdx
	xorl	%edi, %edi
	xorl	%r15d, %r15d
	jmp	.LBB95_105
	.p2align	4, 0x90
.LBB95_104:                             #   in Loop: Header=BB95_105 Depth=1
	addq	$4, %rdi
	addq	$64, %rdx
	cmpq	%rdi, %r11
	je	.LBB95_82
.LBB95_105:                             # =>This Inner Loop Header: Depth=1
	movl	-48(%rdx), %ecx
	testl	%ecx, %ecx
	jle	.LBB95_107
# %bb.106:                              #   in Loop: Header=BB95_105 Depth=1
	movslq	-52(%rdx), %rax
	decq	%rax
	imulq	%rcx, %rax
	addq	%rax, %r15
.LBB95_107:                             #   in Loop: Header=BB95_105 Depth=1
	movl	-32(%rdx), %ecx
	testl	%ecx, %ecx
	jle	.LBB95_109
# %bb.108:                              #   in Loop: Header=BB95_105 Depth=1
	movslq	-36(%rdx), %rax
	decq	%rax
	imulq	%rcx, %rax
	addq	%rax, %r15
.LBB95_109:                             #   in Loop: Header=BB95_105 Depth=1
	movl	-16(%rdx), %ecx
	testl	%ecx, %ecx
	jle	.LBB95_111
# %bb.110:                              #   in Loop: Header=BB95_105 Depth=1
	movslq	-20(%rdx), %rax
	decq	%rax
	imulq	%rcx, %rax
	addq	%rax, %r15
.LBB95_111:                             #   in Loop: Header=BB95_105 Depth=1
	movl	(%rdx), %ecx
	testl	%ecx, %ecx
	jle	.LBB95_104
# %bb.112:                              #   in Loop: Header=BB95_105 Depth=1
	movslq	-4(%rdx), %rax
	decq	%rax
	imulq	%rcx, %rax
	addq	%rax, %r15
	jmp	.LBB95_104
.LBB95_113:                             # %.preheader26.preheader.new
	movl	%r10d, %r9d
	andl	$-4, %r9d
	leaq	56(%r8), %rcx
	xorl	%edi, %edi
	xorl	%edx, %edx
	jmp	.LBB95_115
.LBB95_121:                             #   in Loop: Header=BB95_115 Depth=1
	movslq	-20(%rcx), %rbx
	decq	%rbx
	imulq	%rax, %rbx
	addq	%rbx, %rdx
	movq	-48(%rbp), %r14                 # 8-byte Reload
	movslq	(%rcx), %rax
	testq	%rax, %rax
	js	.LBB95_122
.LBB95_114:                             #   in Loop: Header=BB95_115 Depth=1
	addq	$4, %rdi
	addq	$64, %rcx
	cmpq	%rdi, %r9
	je	.LBB95_89
.LBB95_115:                             # %.preheader26
                                        # =>This Inner Loop Header: Depth=1
	movslq	-48(%rcx), %rax
	testq	%rax, %rax
	js	.LBB95_119
# %bb.116:                              # %.preheader26.1
                                        #   in Loop: Header=BB95_115 Depth=1
	movslq	-32(%rcx), %rax
	testq	%rax, %rax
	js	.LBB95_120
.LBB95_117:                             # %.preheader26.2
                                        #   in Loop: Header=BB95_115 Depth=1
	movslq	-16(%rcx), %rax
	testq	%rax, %rax
	jns	.LBB95_118
	jmp	.LBB95_121
.LBB95_119:                             #   in Loop: Header=BB95_115 Depth=1
	movslq	-52(%rcx), %rbx
	decq	%rbx
	imulq	%rax, %rbx
	addq	%rbx, %rdx
	movq	-48(%rbp), %r14                 # 8-byte Reload
	movslq	-32(%rcx), %rax
	testq	%rax, %rax
	jns	.LBB95_117
.LBB95_120:                             #   in Loop: Header=BB95_115 Depth=1
	movslq	-36(%rcx), %rbx
	decq	%rbx
	imulq	%rax, %rbx
	addq	%rbx, %rdx
	movq	-48(%rbp), %r14                 # 8-byte Reload
	movslq	-16(%rcx), %rax
	testq	%rax, %rax
	js	.LBB95_121
.LBB95_118:                             # %.preheader26.3
                                        #   in Loop: Header=BB95_115 Depth=1
	movslq	(%rcx), %rax
	testq	%rax, %rax
	jns	.LBB95_114
.LBB95_122:                             #   in Loop: Header=BB95_115 Depth=1
	movslq	-4(%rcx), %rbx
	decq	%rbx
	imulq	%rax, %rbx
	addq	%rbx, %rdx
	movq	-48(%rbp), %r14                 # 8-byte Reload
	addq	$4, %rdi
	addq	$64, %rcx
	cmpq	%rdi, %r9
	jne	.LBB95_115
.LBB95_89:                              # %.unr-lcssa
	testq	%rsi, %rsi
	je	.LBB95_94
# %bb.90:                               # %.preheader26.epil.preheader
	shlq	$4, %rdi
	leaq	(%r8,%rdi), %rax
	addq	$8, %rax
	jmp	.LBB95_92
	.p2align	4, 0x90
.LBB95_91:                              #   in Loop: Header=BB95_92 Depth=1
	addq	$16, %rax
	decq	%rsi
	je	.LBB95_94
.LBB95_92:                              # %.preheader26.epil
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rax), %rcx
	testq	%rcx, %rcx
	jns	.LBB95_91
# %bb.93:                               #   in Loop: Header=BB95_92 Depth=1
	movslq	-4(%rax), %rdi
	decq	%rdi
	imulq	%rcx, %rdi
	addq	%rdi, %rdx
	jmp	.LBB95_91
.LBB95_94:                              # %.epilog-lcssa
	incq	%r15
.LBB95_96:
	subq	%rdx, %r15
	movzbl	33(%r14), %r14d
	addq	$7, %r14
	shrq	$3, %r14
	imulq	%r15, %r14
	movq	%r14, %rax
	shrq	$32, %rax
	jne	.LBB95_102
# %bb.97:
	movl	$6, %r15d
	subl	%r13d, %r15d
	andl	$-8, %r15d
	cmpl	$1, %r10d
	movl	$2, %eax
	cmovgl	%r10d, %eax
	movl	$14, -212(%rbp)
	leal	4(,%rax,4), %ebx
                                        # kill: def $eax killed $eax killed $rax
	shll	$2, %eax
	andl	$-8, %ebx
	leal	(%r15,%rbx), %ecx
	addl	%r14d, %ecx
	addl	$40, %ecx
	movl	%ecx, -208(%rbp)
	movabsq	$34359738374, %rcx              # imm = 0x800000006
	movq	%rcx, -204(%rbp)
	movslq	%r12d, %rdx
	movq	_ZN6Halide7Runtime8Internal31pixel_type_to_matlab_class_codeE@GOTPCREL(%rip), %rcx
	movq	%rdx, -64(%rbp)                 # 8-byte Spill
	movzbl	(%rcx,%rdx), %ecx
	movl	%ecx, -196(%rbp)
	movabsq	$21474836481, %rcx              # imm = 0x500000001
	movq	%rcx, -192(%rbp)
	movl	%eax, -184(%rbp)
	leaq	-212(%rbp), %rdi
	movl	$32, %esi
	movl	$1, %edx
	movq	-56(%rbp), %r12                 # 8-byte Reload
	movq	%r12, %rcx
	callq	fwrite@PLT
	testq	%rax, %rax
	je	.LBB95_123
# %bb.98:
	movl	-124(%rbp), %eax
	movl	-108(%rbp), %ecx
	movl	%eax, -180(%rbp)
	movl	%ecx, -176(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, -172(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -168(%rbp)
	movslq	%ebx, %rsi
	leaq	-180(%rbp), %rdi
	movl	$1, %edx
	movq	%r12, %rcx
	callq	fwrite@PLT
	testq	%rax, %rax
	je	.LBB95_124
# %bb.99:
	notl	%r13d
	movl	$1, -164(%rbp)
	movl	%r13d, -160(%rbp)
	leaq	-164(%rbp), %rdi
	movl	$8, %esi
	movl	$1, %edx
	movq	%r12, %rcx
	callq	fwrite@PLT
	movl	$1, %ecx
	testq	%rax, %rax
	movq	%r12, %r13
	je	.LBB95_165
# %bb.100:
	movl	%r15d, %esi
	leaq	-4464(%rbp), %rdi
	movl	$1, %edx
	movq	%r13, %rcx
	callq	fwrite@PLT
	testq	%rax, %rax
	je	.LBB95_166
# %bb.101:
	movl	%r14d, %r15d
	negl	%r15d
	andl	$7, %r15d
	movq	_ZN6Halide7Runtime8Internal30pixel_type_to_matlab_type_codeE@GOTPCREL(%rip), %rax
	movq	-64(%rbp), %rcx                 # 8-byte Reload
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -156(%rbp)
	movl	%r14d, -152(%rbp)
	leaq	-156(%rbp), %rdi
	movl	$8, %esi
	movl	$1, %edx
	movq	%r13, %rcx
	callq	fwrite@PLT
	xorl	%ecx, %ecx
	testq	%rax, %rax
	sete	%cl
	movl	$-11, %ebx
	jmp	.LBB95_126
.LBB95_102:
	leaq	.L.str.6.41(%rip), %rsi
	movq	-144(%rbp), %rdi                # 8-byte Reload
	callq	halide_error@PLT
	movl	$-6, %ebx
	jmp	.LBB95_161
.LBB95_123:
	movl	$-7, %ebx
	jmp	.LBB95_125
.LBB95_124:
	movl	$-8, %ebx
.LBB95_125:
	movl	$1, %ecx
	xorl	%r15d, %r15d
	movq	%r12, %r13
.LBB95_126:
	testl	%ecx, %ecx
	jne	.LBB95_162
.LBB95_127:
	movl	$4096, %eax                     # imm = 0x1000
	xorl	%edx, %edx
	movq	-136(%rbp), %rbx                # 8-byte Reload
	divl	%ebx
	xorl	%r8d, %r8d
	movl	-76(%rbp), %esi
	testl	%esi, %esi
	jle	.LBB95_157
# %bb.128:
	movl	-80(%rbp), %edi
	movl	%eax, -144(%rbp)                # 4-byte Spill
                                        # kill: def $eax killed $eax def $rax
	imull	%ebx, %eax
	movq	%rax, -224(%rbp)                # 8-byte Spill
	movl	-96(%rbp), %r9d
	movl	-92(%rbp), %edx
	movl	%r9d, %r13d
	movl	%edi, %eax
	movl	%edi, -64(%rbp)                 # 4-byte Spill
	movl	%r15d, -148(%rbp)               # 4-byte Spill
.LBB95_129:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB95_131 Depth 2
                                        #       Child Loop BB95_135 Depth 3
                                        #         Child Loop BB95_138 Depth 4
                                        #           Child Loop BB95_145 Depth 5
                                        #           Child Loop BB95_148 Depth 5
	testl	%edx, %edx
	jle	.LBB95_154
# %bb.130:                              #   in Loop: Header=BB95_129 Depth=1
	movl	-112(%rbp), %esi
	movl	-108(%rbp), %edi
	movl	%esi, %r15d
	movq	-48(%rbp), %rbx                 # 8-byte Reload
.LBB95_131:                             #   Parent Loop BB95_129 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB95_135 Depth 3
                                        #         Child Loop BB95_138 Depth 4
                                        #           Child Loop BB95_145 Depth 5
                                        #           Child Loop BB95_148 Depth 5
	testl	%edi, %edi
	jle	.LBB95_152
# %bb.132:                              #   in Loop: Header=BB95_131 Depth=2
	movl	-128(%rbp), %r12d
	movl	-124(%rbp), %eax
	jmp	.LBB95_135
.LBB95_133:                             #   in Loop: Header=BB95_135 Depth=3
	movl	-112(%rbp), %esi
	movl	-108(%rbp), %edi
	movl	%r14d, %r8d
.LBB95_134:                             #   in Loop: Header=BB95_135 Depth=3
	incl	%r15d
	leal	(%rdi,%rsi), %edx
	movl	%ecx, %r12d
	cmpl	%edx, %r15d
	jge	.LBB95_151
.LBB95_135:                             #   Parent Loop BB95_129 Depth=1
                                        #     Parent Loop BB95_131 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB95_138 Depth 4
                                        #           Child Loop BB95_145 Depth 5
                                        #           Child Loop BB95_148 Depth 5
	testl	%eax, %eax
	jg	.LBB95_138
# %bb.136:                              #   in Loop: Header=BB95_135 Depth=3
	movl	%r12d, %ecx
	jmp	.LBB95_134
	.p2align	4, 0x90
.LBB95_137:                             #   in Loop: Header=BB95_138 Depth=4
	incl	%r12d
	movl	-128(%rbp), %ecx
	movl	-124(%rbp), %eax
	leal	(%rcx,%rax), %edx
	movl	%r14d, %r8d
	cmpl	%edx, %r12d
	jge	.LBB95_133
.LBB95_138:                             # %.preheader25
                                        #   Parent Loop BB95_129 Depth=1
                                        #     Parent Loop BB95_131 Depth=2
                                        #       Parent Loop BB95_135 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB95_145 Depth 5
                                        #           Child Loop BB95_148 Depth 5
	leal	1(%r8), %r14d
	movl	%r12d, -368(%rbp)
	movl	%r15d, -364(%rbp)
	movl	%r13d, -360(%rbp)
	movl	-64(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -356(%rbp)
	movl	36(%rbx), %eax
	testl	%eax, %eax
	jle	.LBB95_141
# %bb.139:                              #   in Loop: Header=BB95_138 Depth=4
	movq	40(%rbx), %r9
	movslq	8(%r9), %rcx
	movslq	(%r9), %rdi
	movslq	%r12d, %rdx
	subq	%rdi, %rdx
	imulq	%rcx, %rdx
	cmpl	$1, %eax
	jne	.LBB95_142
# %bb.140:                              #   in Loop: Header=BB95_138 Depth=4
	movq	%rdx, %rcx
	jmp	.LBB95_149
	.p2align	4, 0x90
.LBB95_141:                             #   in Loop: Header=BB95_138 Depth=4
	xorl	%ecx, %ecx
	jmp	.LBB95_149
	.p2align	4, 0x90
.LBB95_142:                             # %.preheader.preheader
                                        #   in Loop: Header=BB95_138 Depth=4
	movslq	24(%r9), %rdi
	movslq	16(%r9), %rbx
	movslq	%r15d, %rcx
	subq	%rbx, %rcx
	imulq	%rdi, %rcx
	addq	%rdx, %rcx
	cmpl	$2, %eax
	je	.LBB95_149
# %bb.143:                              # %.preheader..preheader_crit_edge.preheader
                                        #   in Loop: Header=BB95_138 Depth=4
	leaq	-2(%rax), %r11
	addq	$-3, %rax
	movl	%r11d, %r10d
	andl	$3, %r10d
	movl	$2, %edi
	cmpq	$3, %rax
	jb	.LBB95_146
# %bb.144:                              # %.preheader..preheader_crit_edge.preheader.new
                                        #   in Loop: Header=BB95_138 Depth=4
	leaq	88(%r9), %rax
	andq	$-4, %r11
	negq	%r11
	movl	$2, %edi
	.p2align	4, 0x90
.LBB95_145:                             # %.preheader..preheader_crit_edge
                                        #   Parent Loop BB95_129 Depth=1
                                        #     Parent Loop BB95_131 Depth=2
                                        #       Parent Loop BB95_135 Depth=3
                                        #         Parent Loop BB95_138 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movslq	-368(%rbp,%rdi,4), %rsi
	movslq	-48(%rax), %rbx
	movslq	-56(%rax), %rdx
	subq	%rdx, %rsi
	imulq	%rbx, %rsi
	addq	%rcx, %rsi
	movslq	-364(%rbp,%rdi,4), %rcx
	movslq	-32(%rax), %rdx
	movslq	-40(%rax), %rbx
	subq	%rbx, %rcx
	imulq	%rdx, %rcx
	addq	%rsi, %rcx
	movslq	-360(%rbp,%rdi,4), %rdx
	movslq	-16(%rax), %rsi
	movslq	-24(%rax), %rbx
	subq	%rbx, %rdx
	imulq	%rsi, %rdx
	addq	%rcx, %rdx
	movslq	-356(%rbp,%rdi,4), %rcx
	movslq	(%rax), %rsi
	movslq	-8(%rax), %rbx
	subq	%rbx, %rcx
	imulq	%rsi, %rcx
	addq	%rdx, %rcx
	addq	$64, %rax
	leaq	(%r11,%rdi), %rdx
	addq	$4, %rdx
	addq	$4, %rdi
	cmpq	$2, %rdx
	jne	.LBB95_145
.LBB95_146:                             # %.loopexit.loopexit.unr-lcssa
                                        #   in Loop: Header=BB95_138 Depth=4
	testq	%r10, %r10
	je	.LBB95_149
# %bb.147:                              # %.preheader..preheader_crit_edge.epil.preheader
                                        #   in Loop: Header=BB95_138 Depth=4
	leaq	-368(,%rdi,4), %r11
	addq	%rbp, %r11
	shlq	$4, %rdi
	leaq	(%r9,%rdi), %rdx
	addq	$8, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB95_148:                             # %.preheader..preheader_crit_edge.epil
                                        #   Parent Loop BB95_129 Depth=1
                                        #     Parent Loop BB95_131 Depth=2
                                        #       Parent Loop BB95_135 Depth=3
                                        #         Parent Loop BB95_138 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movslq	(%r11,%rsi,4), %rdi
	movslq	(%rdx), %rbx
	movslq	-8(%rdx), %rax
	subq	%rax, %rdi
	imulq	%rbx, %rdi
	addq	%rdi, %rcx
	addq	$16, %rdx
	incq	%rsi
	cmpq	%rsi, %r10
	jne	.LBB95_148
	.p2align	4, 0x90
.LBB95_149:                             # %.loopexit
                                        #   in Loop: Header=BB95_138 Depth=4
	movq	-48(%rbp), %rbx                 # 8-byte Reload
	movzbl	33(%rbx), %esi
	addq	$7, %rsi
	shrq	$3, %rsi
	imulq	%rcx, %rsi
	addq	16(%rbx), %rsi
	movq	-136(%rbp), %rdx                # 8-byte Reload
	imull	%edx, %r8d
	movslq	%r8d, %rax
	leaq	(%rax,%rbp), %rdi
	addq	$-4464, %rdi                    # imm = 0xEE90
	callq	memcpy@PLT
	cmpl	-144(%rbp), %r14d               # 4-byte Folded Reload
	jne	.LBB95_137
# %bb.150:                              #   in Loop: Header=BB95_138 Depth=4
	movl	$1, %edx
	leaq	-4464(%rbp), %rdi
	movq	-224(%rbp), %rsi                # 8-byte Reload
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	callq	fwrite@PLT
	xorl	%r14d, %r14d
	testq	%rax, %rax
	jne	.LBB95_137
	jmp	.LBB95_160
.LBB95_151:                             #   in Loop: Header=BB95_131 Depth=2
	movl	-96(%rbp), %r9d
	movl	-92(%rbp), %edx
	movl	%esi, %r15d
.LBB95_152:                             #   in Loop: Header=BB95_131 Depth=2
	incl	%r13d
	leal	(%rdx,%r9), %eax
	cmpl	%eax, %r13d
	jl	.LBB95_131
# %bb.153:                              #   in Loop: Header=BB95_129 Depth=1
	movl	-80(%rbp), %edi
	movl	-76(%rbp), %esi
	movl	%r9d, %r13d
	movq	-136(%rbp), %rbx                # 8-byte Reload
	movl	-148(%rbp), %r15d               # 4-byte Reload
.LBB95_154:                             #   in Loop: Header=BB95_129 Depth=1
	movl	-64(%rbp), %ecx                 # 4-byte Reload
	incl	%ecx
	leal	(%rsi,%rdi), %eax
	movl	%ecx, -64(%rbp)                 # 4-byte Spill
	cmpl	%eax, %ecx
	jl	.LBB95_129
# %bb.155:
	testl	%r8d, %r8d
	movq	-56(%rbp), %r13                 # 8-byte Reload
	jle	.LBB95_157
# %bb.156:
	imull	%ebx, %r8d
	movslq	%r8d, %rsi
	leaq	-4464(%rbp), %rdi
	movl	$1, %edx
	movq	%r13, %rcx
	callq	fwrite@PLT
	testq	%rax, %rax
	je	.LBB95_167
.LBB95_157:
	movq	$0, -368(%rbp)
	testl	%r15d, %r15d
	je	.LBB95_159
# %bb.158:
	movl	%r15d, %esi
	leaq	-368(%rbp), %rdi
	movl	$1, %edx
	movq	%r13, %rcx
	callq	fwrite@PLT
	testq	%rax, %rax
	je	.LBB95_164
.LBB95_159:
	xorl	%ebx, %ebx
	jmp	.LBB95_162
.LBB95_160:
	movl	$-13, %ebx
.LBB95_161:
	movq	-56(%rbp), %r13                 # 8-byte Reload
.LBB95_162:
	movq	%r13, %rdi
	callq	fclose@PLT
.LBB95_163:
	movl	%ebx, %eax
	addq	$4424, %rsp                     # imm = 0x1148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB95_164:
	movl	$-16, %ebx
	jmp	.LBB95_162
.LBB95_165:
	movl	$-9, %ebx
	xorl	%r15d, %r15d
	jmp	.LBB95_126
.LBB95_166:
	movl	$-10, %ebx
	xorl	%r15d, %r15d
	movl	$1, %ecx
	jmp	.LBB95_126
.LBB95_167:
	movl	$-14, %ebx
	jmp	.LBB95_162
.Lfunc_end95:
	.size	halide_debug_to_file, .Lfunc_end95-halide_debug_to_file
                                        # -- End function
	.section	.text.halide_cache_cleanup,"ax",@progbits
	.weak	halide_cache_cleanup            # -- Begin function halide_cache_cleanup
	.p2align	4, 0x90
	.type	halide_cache_cleanup,@function
halide_cache_cleanup:                   # @halide_cache_cleanup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	jmp	halide_memoization_cache_cleanup@PLT # TAILCALL
.Lfunc_end96:
	.size	halide_cache_cleanup, .Lfunc_end96-halide_cache_cleanup
                                        # -- End function
	.section	.text.halide_memoization_cache_cleanup,"ax",@progbits
	.weak	halide_memoization_cache_cleanup # -- Begin function halide_memoization_cache_cleanup
	.p2align	4, 0x90
	.type	halide_memoization_cache_cleanup,@function
halide_memoization_cache_cleanup:       # @halide_memoization_cache_cleanup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	xorl	%r14d, %r14d
	movq	_ZN6Halide7Runtime8Internal13cache_entriesE@GOTPCREL(%rip), %r15
	jmp	.LBB97_1
	.p2align	4, 0x90
.LBB97_3:                               # %.loopexit
                                        #   in Loop: Header=BB97_1 Depth=1
	incq	%r14
	cmpq	$256, %r14                      # imm = 0x100
	je	.LBB97_4
.LBB97_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB97_2 Depth 2
	movq	(%r15,%r14,8), %rbx
	movq	$0, (%r15,%r14,8)
	testq	%rbx, %rbx
	je	.LBB97_3
	.p2align	4, 0x90
.LBB97_2:                               # %.preheader
                                        #   Parent Loop BB97_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %r12
	movq	%rbx, %rdi
	callq	_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv@PLT
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	halide_free@PLT
	movq	%r12, %rbx
	testq	%r12, %r12
	jne	.LBB97_2
	jmp	.LBB97_3
.LBB97_4:
	movq	_ZN6Halide7Runtime8Internal18current_cache_sizeE@GOTPCREL(%rip), %rax
	movq	$0, (%rax)
	movq	_ZN6Halide7Runtime8Internal18most_recently_usedE@GOTPCREL(%rip), %rax
	movq	$0, (%rax)
	movq	_ZN6Halide7Runtime8Internal19least_recently_usedE@GOTPCREL(%rip), %rax
	movq	$0, (%rax)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end97:
	.size	halide_memoization_cache_cleanup, .Lfunc_end97-halide_memoization_cache_cleanup
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal10CacheEntry7destroyEv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv # -- Begin function _ZN6Halide7Runtime8Internal10CacheEntry7destroyEv
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv,@function
_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv: # @_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	cmpl	$0, 56(%rdi)
	je	.LBB98_3
# %bb.1:
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB98_2:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r14), %rsi
	addq	%rbx, %rsi
	xorl	%edi, %edi
	callq	halide_device_free@PLT
	movq	72(%r14), %rax
	movq	16(%rax,%rbx), %rdi
	callq	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh@PLT
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	halide_free@PLT
	incq	%r15
	movl	56(%r14), %eax
	addq	$56, %rbx
	cmpq	%rax, %r15
	jb	.LBB98_2
.LBB98_3:                               # %.loopexit
	movq	24(%r14), %rsi
	xorl	%edi, %edi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	halide_free@PLT                 # TAILCALL
.Lfunc_end98:
	.size	_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv, .Lfunc_end98-_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh # -- Begin function _ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh,@function
_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh: # @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	-64(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end99:
	.size	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh, .Lfunc_end99-_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx # -- Begin function _ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx,@function
_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx: # @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movl	%esi, %r15d
	movq	%rdi, %r14
	testl	%esi, %esi
	js	.LBB100_4
	.p2align	4, 0x90
.LBB100_1:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movl	%r15d, %eax
	cmpq	$1, 24(%r14,%rax,8)
	jne	.LBB100_4
# %bb.2:                                #   in Loop: Header=BB100_1 Depth=1
	leal	-1(%r15), %eax
	testl	%r15d, %r15d
	movl	%eax, %r15d
	jg	.LBB100_1
	jmp	.LBB100_3
.LBB100_4:                              # %.loopexit2
	cmpl	$-1, %r15d
	je	.LBB100_3
# %bb.5:
	movslq	%r15d, %rax
	cmpq	$0, 24(%r14,%rax,8)
	je	.LBB100_8
# %bb.6:
	decl	%r15d
	xorl	%r13d, %r13d
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB100_7:                              # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	%r15d, %esi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	callq	_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx@PLT
	movq	-48(%rbp), %rax                 # 8-byte Reload
	addq	152(%r14,%rax,8), %rbx
	addq	280(%r14,%rax,8), %r12
	incq	%r13
	cmpq	24(%r14,%rax,8), %r13
	jb	.LBB100_7
.LBB100_8:                              # %.loopexit
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB100_3:                              # %.loopexit3
	addq	(%r14), %rbx
	addq	8(%r14), %r12
	movq	408(%r14), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	memcpy@PLT                      # TAILCALL
.Lfunc_end100:
	.size	_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx, .Lfunc_end100-_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv # -- Begin function _ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv,@function
_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv: # @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdi), %rax
	cmpq	8(%rdi), %rax
	jne	.LBB101_2
# %bb.1:
	popq	%rbp
	retq
.LBB101_2:
	movq	16(%rdi), %rdx
	movl	$15, %esi
	xorl	%ecx, %ecx
	popq	%rbp
	jmp	_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx@PLT # TAILCALL
.Lfunc_end101:
	.size	_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv, .Lfunc_end101-_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function _ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b
.LCPI102_0:
	.quad	1                               # 0x1
	.section	.text._ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b,@function
_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b: # @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$456, %rsp                      # imm = 0x1C8
	movl	%edx, %eax
	shlq	$4, %rax
	movq	(%rsi,%rax), %rax
	movq	%rax, -488(%rbp)
	movl	%r8d, %eax
	shlq	$4, %rax
	movq	(%rcx,%rax), %rax
	movq	%rax, -480(%rbp)
	movzbl	33(%rsi), %r9d
	addq	$7, %r9
	shrq	$3, %r9
	movq	%r9, -80(%rbp)
	vbroadcastsd	.LCPI102_0(%rip), %ymm0 # ymm0 = [1,1,1,1]
	vmovups	%ymm0, -464(%rbp)
	vxorps	%xmm1, %xmm1, %xmm1
	vmovups	%ymm1, -336(%rbp)
	vmovups	%ymm1, -208(%rbp)
	vmovups	%ymm0, -432(%rbp)
	vmovups	%ymm1, -304(%rbp)
	vmovups	%ymm1, -176(%rbp)
	vmovups	%ymm0, -400(%rbp)
	vmovups	%ymm1, -272(%rbp)
	vmovups	%ymm1, -144(%rbp)
	vmovups	%ymm0, -368(%rbp)
	vmovups	%ymm1, -240(%rbp)
	vmovups	%ymm1, -112(%rbp)
	movq	%rdi, %rbx
	movq	$0, -472(%rbp)
	movl	36(%rsi), %r10d
	testl	%r10d, %r10d
	movq	%r10, -48(%rbp)                 # 8-byte Spill
	jle	.LBB102_1
# %bb.2:
	movq	%r9, %r14
	movq	%r10, %r11
	movq	%rbx, %r10
	movq	40(%rsi), %r9
	movq	40(%rcx), %r8
	leaq	-1(%r11), %rdx
	movl	%r11d, %r15d
	andl	$3, %r15d
	cmpq	$3, %rdx
	jae	.LBB102_12
# %bb.3:
	xorl	%r13d, %r13d
	xorl	%edx, %edx
	jmp	.LBB102_4
.LBB102_1:
	xorl	%edx, %edx
	jmp	.LBB102_8
.LBB102_12:                             # %.new
                                        # kill: def $r11d killed $r11d killed $r11 def $r11
	andl	$-4, %r11d
	movl	$48, %edi
	xorl	%r13d, %r13d
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB102_13:                             # =>This Inner Loop Header: Depth=1
	movslq	-40(%r9,%rdi), %r12
	movslq	-48(%r8,%rdi), %rax
	movslq	-48(%r9,%rdi), %rbx
	subq	%rbx, %rax
	imulq	%r12, %rax
	addq	%rdx, %rax
	movslq	-24(%r9,%rdi), %r12
	movslq	-32(%r8,%rdi), %rbx
	movslq	-32(%r9,%rdi), %rdx
	subq	%rdx, %rbx
	imulq	%r12, %rbx
	addq	%rax, %rbx
	movslq	-8(%r9,%rdi), %r12
	movslq	-16(%r8,%rdi), %rax
	movslq	-16(%r9,%rdi), %rdx
	subq	%rdx, %rax
	imulq	%r12, %rax
	addq	%rbx, %rax
	movslq	8(%r9,%rdi), %r12
	movslq	(%r8,%rdi), %rdx
	movslq	(%r9,%rdi), %rbx
	subq	%rbx, %rdx
	imulq	%r12, %rdx
	addq	%rax, %rdx
	addq	$4, %r13
	addq	$64, %rdi
	cmpq	%r13, %r11
	jne	.LBB102_13
.LBB102_4:                              # %.unr-lcssa
	testq	%r15, %r15
	je	.LBB102_7
# %bb.5:                                # %.epil.preheader.preheader
	shlq	$4, %r13
	.p2align	4, 0x90
.LBB102_6:                              # %.epil.preheader
                                        # =>This Inner Loop Header: Depth=1
	movslq	8(%r9,%r13), %r11
	movslq	(%r8,%r13), %rax
	movslq	(%r9,%r13), %rdi
	subq	%rdi, %rax
	imulq	%r11, %rax
	addq	%rax, %rdx
	addq	$16, %r13
	decq	%r15
	jne	.LBB102_6
.LBB102_7:                              # %.epilog-lcssa
	movq	%rdx, -472(%rbp)
	movq	%r10, %rbx
	movq	%r14, %r9
	movq	-48(%rbp), %r10                 # 8-byte Reload
.LBB102_8:
	movq	-80(%rbp), %rax
	imulq	%rax, %rdx
	movq	%rdx, -472(%rbp)
	cmpl	36(%rcx), %r10d
	jne	.LBB102_11
# %bb.9:
	cmpl	$16, %r10d
	jg	.LBB102_11
# %bb.10:
	movzbl	33(%rcx), %edx
	addl	$7, %edx
	shrl	$3, %edx
	cmpl	%edx, %r9d
	jne	.LBB102_11
# %bb.14:
	testq	%rax, %rax
	je	.LBB102_11
# %bb.15:
	testl	%r10d, %r10d
	jle	.LBB102_27
# %bb.16:
	movq	%rbx, -56(%rbp)                 # 8-byte Spill
	movq	40(%rcx), %r11
	movq	40(%rsi), %r8
	leaq	-208(%rbp), %rdi
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	movq	%r9, -64(%rbp)                  # 8-byte Spill
	movq	%r11, -72(%rbp)                 # 8-byte Spill
	jmp	.LBB102_17
	.p2align	4, 0x90
.LBB102_36:                             # %.loopexit8
                                        #   in Loop: Header=BB102_17 Depth=1
	movslq	4(%r11,%r13), %rcx
	movq	%rcx, -464(%rbp,%r14,8)
	movq	%rbx, -208(%rbp,%r14,8)
	movq	%r15, -336(%rbp,%r14,8)
	incq	%rax
	addq	$8, %rdi
	decq	%r12
	cmpq	%r10, %rax
	je	.LBB102_23
.LBB102_17:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB102_20 Depth 2
                                        #     Child Loop BB102_33 Depth 2
                                        #     Child Loop BB102_37 Depth 2
	movq	%rax, %r13
	shlq	$4, %r13
	movslq	8(%r11,%r13), %rbx
	imulq	%r9, %rbx
	movslq	8(%r8,%r13), %r15
	movl	$0, %ecx
	testq	%rax, %rax
	je	.LBB102_30
# %bb.18:                               #   in Loop: Header=BB102_17 Depth=1
	testq	%rbx, %rbx
	je	.LBB102_29
# %bb.19:                               # %.preheader.preheader
                                        #   in Loop: Header=BB102_17 Depth=1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB102_20:                             # %.preheader
                                        #   Parent Loop BB102_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	-208(%rbp,%rcx,8), %rbx
	jb	.LBB102_30
# %bb.21:                               #   in Loop: Header=BB102_20 Depth=2
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB102_20
# %bb.22:                               #   in Loop: Header=BB102_17 Depth=1
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB102_30:                             #   in Loop: Header=BB102_17 Depth=1
	imulq	%r9, %r15
	movl	%ecx, %r14d
	cmpq	%r14, %rax
	jbe	.LBB102_36
.LBB102_31:                             #   in Loop: Header=BB102_17 Depth=1
	movq	%r8, %r11
	movslq	%r14d, %rsi
	movl	%eax, %ecx
	subl	%esi, %ecx
	movq	%rsi, %r8
	notq	%r8
	addq	%rax, %r8
	movq	%rax, %rdx
	testb	$3, %cl
	je	.LBB102_35
# %bb.32:                               # %.prol.preheader.preheader
                                        #   in Loop: Header=BB102_17 Depth=1
	movl	%eax, %ecx
	subb	%r14b, %cl
	movzbl	%cl, %r9d
	andl	$3, %r9d
	negq	%r9
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB102_33:                             # %.prol.preheader
                                        #   Parent Loop BB102_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-264(%rdi,%rdx,8), %rcx
	movq	-136(%rdi,%rdx,8), %r10
	movq	%rcx, -256(%rdi,%rdx,8)
	movq	-8(%rdi,%rdx,8), %rcx
	movq	%rcx, (%rdi,%rdx,8)
	movq	%r10, -128(%rdi,%rdx,8)
	decq	%rdx
	cmpq	%rdx, %r9
	jne	.LBB102_33
# %bb.34:                               # %.prol.loopexit.loopexit
                                        #   in Loop: Header=BB102_17 Depth=1
	subq	%r12, %rdx
	movq	-64(%rbp), %r9                  # 8-byte Reload
	movq	-48(%rbp), %r10                 # 8-byte Reload
.LBB102_35:                             # %.prol.loopexit
                                        #   in Loop: Header=BB102_17 Depth=1
	cmpq	$3, %r8
	movq	%r11, %r8
	movq	-72(%rbp), %r11                 # 8-byte Reload
	jb	.LBB102_36
	.p2align	4, 0x90
.LBB102_37:                             # %.new11
                                        #   Parent Loop BB102_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-216(%rbp,%rdx,8), %rcx
	movq	%rcx, -208(%rbp,%rdx,8)
	movq	-344(%rbp,%rdx,8), %rcx
	movq	%rcx, -336(%rbp,%rdx,8)
	movq	-224(%rbp,%rdx,8), %rcx
	movq	%rcx, -216(%rbp,%rdx,8)
	movq	-352(%rbp,%rdx,8), %rcx
	movq	%rcx, -344(%rbp,%rdx,8)
	vmovups	-496(%rbp,%rdx,8), %ymm0
	vmovups	%ymm0, -488(%rbp,%rdx,8)
	vmovups	-240(%rbp,%rdx,8), %xmm0
	vmovups	%xmm0, -232(%rbp,%rdx,8)
	vmovups	-368(%rbp,%rdx,8), %xmm0
	vmovups	%xmm0, -360(%rbp,%rdx,8)
	leaq	-4(%rdx), %rcx
	movq	%rcx, %rdx
	cmpq	%rsi, %rcx
	jg	.LBB102_37
	jmp	.LBB102_36
	.p2align	4, 0x90
.LBB102_29:                             #   in Loop: Header=BB102_17 Depth=1
	movl	%eax, %ecx
	imulq	%r9, %r15
	movl	%ecx, %r14d
	cmpq	%r14, %rax
	jbe	.LBB102_36
	jmp	.LBB102_31
.LBB102_11:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 384(%rbx)
	vmovups	%ymm0, 352(%rbx)
	vmovups	%ymm0, 320(%rbx)
	vmovups	%ymm0, 288(%rbx)
	vmovups	%ymm0, 256(%rbx)
	vmovups	%ymm0, 224(%rbx)
	vmovups	%ymm0, 192(%rbx)
	vmovups	%ymm0, 160(%rbx)
	vmovups	%ymm0, 128(%rbx)
	vmovups	%ymm0, 96(%rbx)
	vmovups	%ymm0, 64(%rbx)
	vmovups	%ymm0, 32(%rbx)
	vmovups	%ymm0, (%rbx)
.LBB102_28:
	movq	%rbx, %rax
	addq	$456, %rsp                      # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
.LBB102_23:
	movq	-80(%rbp), %rax
	cmpq	-336(%rbp), %rax
	movq	-56(%rbp), %rbx                 # 8-byte Reload
	jne	.LBB102_27
# %bb.24:
	movq	-208(%rbp), %rcx
	.p2align	4, 0x90
.LBB102_25:                             # =>This Inner Loop Header: Depth=1
	cmpq	%rcx, %rax
	jne	.LBB102_27
# %bb.26:                               #   in Loop: Header=BB102_25 Depth=1
	movq	%rcx, %rax
	imulq	-464(%rbp), %rax
	movq	%rax, -80(%rbp)
	vmovups	-456(%rbp), %ymm0
	vmovups	-424(%rbp), %ymm1
	vmovups	-392(%rbp), %ymm2
	vmovups	-328(%rbp), %ymm3
	vmovups	%ymm0, -464(%rbp)
	cmpq	-328(%rbp), %rax
	vmovups	%ymm3, -336(%rbp)
	vmovups	-200(%rbp), %ymm0
	movq	-200(%rbp), %rcx
	vmovups	%ymm0, -208(%rbp)
	vmovups	%ymm1, -432(%rbp)
	vmovups	-296(%rbp), %ymm0
	vmovups	%ymm0, -304(%rbp)
	vmovups	-168(%rbp), %ymm0
	vmovups	%ymm0, -176(%rbp)
	vmovups	%ymm2, -400(%rbp)
	vmovups	-264(%rbp), %ymm0
	vmovups	%ymm0, -272(%rbp)
	vmovups	-136(%rbp), %ymm0
	vmovups	%ymm0, -144(%rbp)
	vmovups	-360(%rbp), %xmm0
	vmovups	%xmm0, -368(%rbp)
	vmovups	-232(%rbp), %xmm0
	vmovups	%xmm0, -240(%rbp)
	vmovups	-104(%rbp), %xmm0
	vmovups	%xmm0, -112(%rbp)
	movq	-344(%rbp), %rdx
	movq	%rdx, -352(%rbp)
	movq	-216(%rbp), %rdx
	movq	%rdx, -224(%rbp)
	movq	-88(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	$1, -344(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -88(%rbp)
	je	.LBB102_25
.LBB102_27:                             # %.loopexit
	leaq	-488(%rbp), %rsi
	movl	$416, %edx                      # imm = 0x1A0
	movq	%rbx, %rdi
	vzeroupper
	callq	memcpy@PLT
	jmp	.LBB102_28
.Lfunc_end102:
	.size	_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b, .Lfunc_end102-_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m # -- Begin function _ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m,@function
_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m: # @_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	popq	%rbp
	retq
.Lfunc_end103:
	.size	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m, .Lfunc_end103-_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t # -- Begin function _ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t,@function
_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t: # @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	36(%rdi), %r8d
	movb	$1, %al
	testl	%r8d, %r8d
	jle	.LBB104_8
# %bb.1:
	movq	40(%rdi), %rdx
	shlq	$4, %r8
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB104_3:                              # =>This Inner Loop Header: Depth=1
	movl	(%rdx,%rdi), %ecx
	cmpl	(%rsi,%rdi), %ecx
	jne	.LBB104_7
# %bb.4:                                #   in Loop: Header=BB104_3 Depth=1
	movl	4(%rdx,%rdi), %ecx
	cmpl	4(%rsi,%rdi), %ecx
	jne	.LBB104_7
# %bb.5:                                #   in Loop: Header=BB104_3 Depth=1
	movl	8(%rdx,%rdi), %ecx
	cmpl	8(%rsi,%rdi), %ecx
	jne	.LBB104_7
# %bb.6:                                #   in Loop: Header=BB104_3 Depth=1
	movl	12(%rdx,%rdi), %ecx
	cmpl	12(%rsi,%rdi), %ecx
	jne	.LBB104_7
# %bb.2:                                #   in Loop: Header=BB104_3 Depth=1
	addq	$16, %rdi
	cmpq	%rdi, %r8
	jne	.LBB104_3
.LBB104_8:                              # %.loopexit
                                        # kill: def $al killed $al killed $eax
	popq	%rbp
	retq
.LBB104_7:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	popq	%rbp
	retq
.Lfunc_end104:
	.size	_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t, .Lfunc_end104-_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjPK15halide_buffer_tiPPS5_by,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjPK15halide_buffer_tiPPS5_by # -- Begin function _ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjPK15halide_buffer_tiPPS5_by
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjPK15halide_buffer_tiPPS5_by,@function
_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjPK15halide_buffer_tiPPS5_by: # @_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjPK15halide_buffer_tiPPS5_by
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%r9d, %r12d
	movq	%r8, %r14
	movq	%rsi, -48(%rbp)                 # 8-byte Spill
	movq	%rdi, %r13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	movq	%rdx, 32(%rdi)
	movl	%ecx, 48(%rdi)
	movl	$0, 52(%rdi)
	movl	%r9d, 56(%rdi)
	movslq	36(%r8), %rax
	movl	%eax, 60(%rdi)
	movl	%r9d, %ecx
	imulq	$56, %rcx, %r15
	incl	%r12d
	imulq	%rax, %r12
	shlq	$4, %r12
	addq	%r15, %r12
	leaq	(%rdx,%r12), %rsi
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	callq	halide_malloc@PLT
	movq	%rax, 24(%r13)
	testq	%rax, %rax
	je	.LBB105_14
# %bb.1:
	movq	%rax, 72(%r13)
	addq	%rax, %r15
	movq	%r15, 64(%r13)
	addq	%rax, %r12
	movq	%r12, 40(%r13)
	movq	32(%r13), %rax
	testq	%rax, %rax
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	je	.LBB105_6
# %bb.2:
	movb	(%rsi), %cl
	movb	%cl, (%r12)
	cmpq	$1, %rax
	je	.LBB105_6
# %bb.3:                                # %.preheader5.preheader
	movb	1(%rsi), %al
	movb	%al, 1(%r12)
	cmpq	$3, 32(%r13)
	jb	.LBB105_6
# %bb.4:                                # %.preheader5..preheader5_crit_edge.preheader
	movl	$2, %eax
	.p2align	4, 0x90
.LBB105_5:                              # %.preheader5..preheader5_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%r13), %rcx
	movzbl	(%rsi,%rax), %edx
	movb	%dl, (%rcx,%rax)
	incq	%rax
	cmpq	32(%r13), %rax
	jb	.LBB105_5
.LBB105_6:                              # %.loopexit6
	cmpl	$0, 60(%r13)
	jle	.LBB105_9
# %bb.7:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB105_8:                              # =>This Inner Loop Header: Depth=1
	movq	40(%r14), %rdx
	movq	64(%r13), %rsi
	vmovups	(%rdx,%rax), %xmm0
	vmovups	%xmm0, (%rsi,%rax)
	incq	%rcx
	movslq	60(%r13), %rdx
	addq	$16, %rax
	cmpq	%rdx, %rcx
	jl	.LBB105_8
.LBB105_9:                              # %.loopexit4
	movq	32(%rbp), %r8
	movb	24(%rbp), %r9b
	cmpl	$0, 56(%r13)
	je	.LBB105_13
# %bb.10:                               # %.preheader2.preheader
	movq	16(%rbp), %r11
	xorl	%r10d, %r10d
	jmp	.LBB105_11
	.p2align	4, 0x90
.LBB105_12:                             # %.loopexit
                                        #   in Loop: Header=BB105_11 Depth=1
	movl	56(%r13), %eax
	cmpq	%rax, %r10
	jae	.LBB105_13
.LBB105_11:                             # %.preheader2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB105_17 Depth 2
	movq	%r10, %rdi
	movq	(%r11,%r10,8), %rcx
	movq	72(%r13), %rsi
	imulq	$56, %r10, %rax
	vmovups	(%rcx), %ymm0
	vmovups	24(%rcx), %ymm1
	vmovups	%ymm1, 24(%rsi,%rax)
	vmovups	%ymm0, (%rsi,%rax)
	incq	%r10
	movl	60(%r13), %esi
	movl	%r10d, %ecx
	imull	%esi, %ecx
	shlq	$4, %rcx
	addq	64(%r13), %rcx
	movq	72(%r13), %rdx
	movq	%rcx, 40(%rdx,%rax)
	testl	%esi, %esi
	jle	.LBB105_12
# %bb.15:                               #   in Loop: Header=BB105_11 Depth=1
	movq	(%r11,%rdi,8), %rdx
	movq	40(%rdx), %rdx
	vmovups	(%rdx), %xmm0
	vmovups	%xmm0, (%rcx)
	cmpl	$2, 60(%r13)
	jl	.LBB105_12
# %bb.16:                               # %.preheader.preheader
                                        #   in Loop: Header=BB105_11 Depth=1
	movl	$1, %ecx
	movl	$16, %esi
	.p2align	4, 0x90
.LBB105_17:                             # %.preheader
                                        #   Parent Loop BB105_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	72(%r13), %rdx
	movq	40(%rdx,%rax), %rdx
	movq	(%r11,%rdi,8), %rbx
	movq	40(%rbx), %rbx
	vmovups	(%rbx,%rsi), %xmm0
	vmovups	%xmm0, (%rdx,%rsi)
	incq	%rcx
	movslq	60(%r13), %rdx
	addq	$16, %rsi
	cmpq	%rdx, %rcx
	jl	.LBB105_17
	jmp	.LBB105_12
.LBB105_13:                             # %.loopexit3
	movb	%r9b, 88(%r13)
	movq	%r8, 80(%r13)
	movb	$1, %bl
.LBB105_14:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
.Lfunc_end105:
	.size	_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjPK15halide_buffer_tiPPS5_by, .Lfunc_end105-_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjPK15halide_buffer_tiPPS5_by
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal8djb_hashEPKhm,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal8djb_hashEPKhm # -- Begin function _ZN6Halide7Runtime8Internal8djb_hashEPKhm
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal8djb_hashEPKhm,@function
_ZN6Halide7Runtime8Internal8djb_hashEPKhm: # @_ZN6Halide7Runtime8Internal8djb_hashEPKhm
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rsi, %rsi
	je	.LBB106_1
# %bb.2:                                # %.preheader.preheader
	leaq	-1(%rsi), %rax
	movl	%esi, %r8d
	andl	$7, %r8d
	cmpq	$7, %rax
	jae	.LBB106_8
# %bb.3:
	movl	$5381, %eax                     # imm = 0x1505
	xorl	%edx, %edx
.LBB106_4:                              # %.loopexit.loopexit.unr-lcssa
	testq	%r8, %r8
	je	.LBB106_7
# %bb.5:                                # %.preheader.epil.preheader
	addq	%rdx, %rdi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB106_6:                              # %.preheader.epil
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	shll	$5, %ecx
	addl	%eax, %ecx
	movzbl	(%rdi,%rdx), %eax
	addl	%ecx, %eax
	incq	%rdx
	cmpq	%rdx, %r8
	jne	.LBB106_6
.LBB106_7:                              # %.loopexit
	popq	%rbp
	retq
.LBB106_1:
	movl	$5381, %eax                     # imm = 0x1505
	popq	%rbp
	retq
.LBB106_8:                              # %.preheader.preheader.new
	andq	$-8, %rsi
	movl	$8, %edx
	movl	$177573, %ecx                   # imm = 0x2B5A5
	.p2align	4, 0x90
.LBB106_9:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-8(%rdi,%rdx), %eax
	addl	%ecx, %eax
	movl	%eax, %ecx
	shll	$5, %ecx
	addl	%eax, %ecx
	movzbl	-7(%rdi,%rdx), %eax
	addl	%ecx, %eax
	movl	%eax, %ecx
	shll	$5, %ecx
	addl	%eax, %ecx
	movzbl	-6(%rdi,%rdx), %eax
	addl	%ecx, %eax
	movl	%eax, %ecx
	shll	$5, %ecx
	addl	%eax, %ecx
	movzbl	-5(%rdi,%rdx), %eax
	addl	%ecx, %eax
	movl	%eax, %ecx
	shll	$5, %ecx
	addl	%eax, %ecx
	movzbl	-4(%rdi,%rdx), %eax
	addl	%ecx, %eax
	movl	%eax, %ecx
	shll	$5, %ecx
	addl	%eax, %ecx
	movzbl	-3(%rdi,%rdx), %eax
	addl	%ecx, %eax
	movl	%eax, %ecx
	shll	$5, %ecx
	addl	%eax, %ecx
	movzbl	-2(%rdi,%rdx), %eax
	addl	%ecx, %eax
	movl	%eax, %ecx
	shll	$5, %ecx
	addl	%eax, %ecx
	movzbl	-1(%rdi,%rdx), %eax
	addl	%ecx, %eax
	cmpq	%rdx, %rsi
	je	.LBB106_4
# %bb.10:                               # %.preheader..preheader_crit_edge
                                        #   in Loop: Header=BB106_9 Depth=1
	movl	%eax, %ecx
	shll	$5, %ecx
	addl	%eax, %ecx
	addq	$8, %rdx
	jmp	.LBB106_9
.Lfunc_end106:
	.size	_ZN6Halide7Runtime8Internal8djb_hashEPKhm, .Lfunc_end106-_ZN6Halide7Runtime8Internal8djb_hashEPKhm
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal11prune_cacheEv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal11prune_cacheEv # -- Begin function _ZN6Halide7Runtime8Internal11prune_cacheEv
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal11prune_cacheEv,@function
_ZN6Halide7Runtime8Internal11prune_cacheEv: # @_ZN6Halide7Runtime8Internal11prune_cacheEv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	_ZN6Halide7Runtime8Internal19least_recently_usedE@GOTPCREL(%rip), %r14
	movq	(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB107_28
# %bb.1:
	movq	_ZN6Halide7Runtime8Internal18current_cache_sizeE@GOTPCREL(%rip), %r15
	movq	(%r15), %rax
	movq	_ZN6Halide7Runtime8Internal14max_cache_sizeE@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	cmpq	%rdx, %rax
	jle	.LBB107_28
# %bb.2:                                # %.preheader18.preheader
	movq	_ZN6Halide7Runtime8Internal18most_recently_usedE@GOTPCREL(%rip), %rsi
	.p2align	4, 0x90
.LBB107_3:                              # %.preheader18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB107_6 Depth 2
                                        #     Child Loop BB107_21 Depth 2
                                        #       Child Loop BB107_45 Depth 3
                                        #       Child Loop BB107_33 Depth 3
                                        #       Child Loop BB107_55 Depth 3
                                        #       Child Loop BB107_40 Depth 3
	movq	8(%rcx), %r8
	cmpl	$0, 52(%rcx)
	jne	.LBB107_26
# %bb.4:                                #   in Loop: Header=BB107_3 Depth=1
	movzbl	48(%rcx), %edi
	movq	_ZN6Halide7Runtime8Internal13cache_entriesE@GOTPCREL(%rip), %rax
	movq	(%rax,%rdi,8), %rax
	cmpq	%rcx, %rax
	je	.LBB107_5
	.p2align	4, 0x90
.LBB107_6:                              # %.preheader17
                                        #   Parent Loop BB107_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB107_8
# %bb.7:                                #   in Loop: Header=BB107_6 Depth=2
	movq	(%rbx), %rax
	cmpq	%rcx, %rax
	jne	.LBB107_6
	jmp	.LBB107_9
.LBB107_5:                              #   in Loop: Header=BB107_3 Depth=1
	movq	(%rcx), %rax
	movq	_ZN6Halide7Runtime8Internal13cache_entriesE@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx,%rdi,8)
	cmpq	%rcx, (%r14)
	jne	.LBB107_12
	jmp	.LBB107_11
.LBB107_8:                              #   in Loop: Header=BB107_3 Depth=1
	xorl	%edi, %edi
	leaq	.L.str.1.43(%rip), %rsi
	movq	%rcx, %r12
	movq	%r8, %r13
	callq	halide_print@PLT
	callq	abort@PLT
	movq	%r13, %r8
	movq	%r12, %rcx
	movq	_ZN6Halide7Runtime8Internal18most_recently_usedE@GOTPCREL(%rip), %rsi
.LBB107_9:                              # %.loopexit
                                        #   in Loop: Header=BB107_3 Depth=1
	movq	(%rcx), %rax
	movq	%rax, (%rbx)
	cmpq	%rcx, (%r14)
	jne	.LBB107_12
.LBB107_11:                             #   in Loop: Header=BB107_3 Depth=1
	movq	%r8, (%r14)
.LBB107_12:                             #   in Loop: Header=BB107_3 Depth=1
	testq	%r8, %r8
	je	.LBB107_14
# %bb.13:                               #   in Loop: Header=BB107_3 Depth=1
	movq	16(%rcx), %rax
	movq	%rax, 16(%r8)
.LBB107_14:                             #   in Loop: Header=BB107_3 Depth=1
	cmpq	%rcx, (%rsi)
	je	.LBB107_16
# %bb.15:                               #   in Loop: Header=BB107_3 Depth=1
	movq	16(%rcx), %rax
	testq	%rax, %rax
	je	.LBB107_19
.LBB107_18:                             #   in Loop: Header=BB107_3 Depth=1
	movq	%r8, 16(%rcx)
.LBB107_19:                             #   in Loop: Header=BB107_3 Depth=1
	movq	%r8, -56(%rbp)                  # 8-byte Spill
	movl	56(%rcx), %eax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	testq	%rax, %rax
	je	.LBB107_25
# %bb.20:                               #   in Loop: Header=BB107_3 Depth=1
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
	movq	72(%rcx), %rcx
	movq	(%r15), %r8
	xorl	%r14d, %r14d
	movq	%rcx, -64(%rbp)                 # 8-byte Spill
	jmp	.LBB107_21
	.p2align	4, 0x90
.LBB107_43:                             # %.epilog-lcssa
                                        #   in Loop: Header=BB107_21 Depth=2
	notq	%r9
	addq	%rdi, %r9
	movq	-64(%rbp), %rcx                 # 8-byte Reload
.LBB107_23:                             #   in Loop: Header=BB107_21 Depth=2
	movzbl	33(%rcx,%r15), %eax
	addq	$7, %rax
	shrq	$3, %rax
	imulq	%r9, %rax
	addq	%rax, %r8
	incq	%r14
	cmpq	-72(%rbp), %r14                 # 8-byte Folded Reload
	je	.LBB107_24
.LBB107_21:                             #   Parent Loop BB107_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB107_45 Depth 3
                                        #       Child Loop BB107_33 Depth 3
                                        #       Child Loop BB107_55 Depth 3
                                        #       Child Loop BB107_40 Depth 3
	imulq	$56, %r14, %r15
	movl	36(%rcx,%r15), %r12d
	testl	%r12d, %r12d
	jle	.LBB107_22
# %bb.29:                               #   in Loop: Header=BB107_21 Depth=2
	movq	40(%rcx,%r15), %rax
	leaq	-1(%r12), %r11
	movl	%r12d, %ebx
	andl	$3, %ebx
	cmpq	$3, %r11
	jae	.LBB107_44
# %bb.30:                               #   in Loop: Header=BB107_21 Depth=2
	movq	%rax, %r10
	xorl	%edi, %edi
	xorl	%r9d, %r9d
.LBB107_31:                             # %.preheader.preheader.unr-lcssa
                                        #   in Loop: Header=BB107_21 Depth=2
	testq	%rbx, %rbx
	je	.LBB107_36
# %bb.32:                               # %.epil.preheader.preheader
                                        #   in Loop: Header=BB107_21 Depth=2
	shlq	$4, %rdi
	leaq	(%r10,%rdi), %rcx
	addq	$8, %rcx
	jmp	.LBB107_33
	.p2align	4, 0x90
.LBB107_35:                             #   in Loop: Header=BB107_33 Depth=3
	addq	$16, %rcx
	decq	%rbx
	je	.LBB107_36
.LBB107_33:                             # %.epil.preheader
                                        #   Parent Loop BB107_3 Depth=1
                                        #     Parent Loop BB107_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rcx), %edx
	testl	%edx, %edx
	jle	.LBB107_35
# %bb.34:                               #   in Loop: Header=BB107_33 Depth=3
	movslq	-4(%rcx), %rsi
	decq	%rsi
	imulq	%rdx, %rsi
	addq	%rsi, %r9
	jmp	.LBB107_35
	.p2align	4, 0x90
.LBB107_36:                             # %.preheader.preheader
                                        #   in Loop: Header=BB107_21 Depth=2
	movl	%r12d, %ebx
	andl	$3, %ebx
	cmpq	$3, %r11
	jae	.LBB107_54
# %bb.37:                               #   in Loop: Header=BB107_21 Depth=2
	xorl	%edx, %edx
	xorl	%edi, %edi
.LBB107_38:                             # %.unr-lcssa
                                        #   in Loop: Header=BB107_21 Depth=2
	testq	%rbx, %rbx
	je	.LBB107_43
# %bb.39:                               # %.preheader.epil.preheader
                                        #   in Loop: Header=BB107_21 Depth=2
	shlq	$4, %rdx
	leaq	(%r10,%rdx), %rcx
	addq	$8, %rcx
	jmp	.LBB107_40
	.p2align	4, 0x90
.LBB107_42:                             #   in Loop: Header=BB107_40 Depth=3
	addq	$16, %rcx
	decq	%rbx
	je	.LBB107_43
.LBB107_40:                             # %.preheader.epil
                                        #   Parent Loop BB107_3 Depth=1
                                        #     Parent Loop BB107_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	(%rcx), %rdx
	testq	%rdx, %rdx
	jns	.LBB107_42
# %bb.41:                               #   in Loop: Header=BB107_40 Depth=3
	movslq	-4(%rcx), %rax
	decq	%rax
	imulq	%rdx, %rax
	addq	%rax, %rdi
	jmp	.LBB107_42
	.p2align	4, 0x90
.LBB107_22:                             # %._crit_edge
                                        #   in Loop: Header=BB107_21 Depth=2
	movq	$-1, %r9
	jmp	.LBB107_23
	.p2align	4, 0x90
.LBB107_44:                             # %.new
                                        #   in Loop: Header=BB107_21 Depth=2
	movl	%r12d, %edx
	andl	$-4, %edx
	movq	%rax, %r10
	leaq	56(%rax), %r13
	xorl	%edi, %edi
	xorl	%r9d, %r9d
	jmp	.LBB107_45
	.p2align	4, 0x90
.LBB107_53:                             #   in Loop: Header=BB107_45 Depth=3
	addq	$4, %rdi
	addq	$64, %r13
	cmpq	%rdi, %rdx
	je	.LBB107_31
.LBB107_45:                             #   Parent Loop BB107_3 Depth=1
                                        #     Parent Loop BB107_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-48(%r13), %ecx
	testl	%ecx, %ecx
	jle	.LBB107_47
# %bb.46:                               #   in Loop: Header=BB107_45 Depth=3
	movslq	-52(%r13), %rsi
	decq	%rsi
	imulq	%rcx, %rsi
	addq	%rsi, %r9
.LBB107_47:                             #   in Loop: Header=BB107_45 Depth=3
	movl	-32(%r13), %ecx
	testl	%ecx, %ecx
	jle	.LBB107_49
# %bb.48:                               #   in Loop: Header=BB107_45 Depth=3
	movslq	-36(%r13), %rax
	decq	%rax
	imulq	%rcx, %rax
	addq	%rax, %r9
.LBB107_49:                             #   in Loop: Header=BB107_45 Depth=3
	movl	-16(%r13), %ecx
	testl	%ecx, %ecx
	jle	.LBB107_51
# %bb.50:                               #   in Loop: Header=BB107_45 Depth=3
	movslq	-20(%r13), %rax
	decq	%rax
	imulq	%rcx, %rax
	addq	%rax, %r9
.LBB107_51:                             #   in Loop: Header=BB107_45 Depth=3
	movl	(%r13), %ecx
	testl	%ecx, %ecx
	jle	.LBB107_53
# %bb.52:                               #   in Loop: Header=BB107_45 Depth=3
	movslq	-4(%r13), %rax
	decq	%rax
	imulq	%rcx, %rax
	addq	%rax, %r9
	jmp	.LBB107_53
	.p2align	4, 0x90
.LBB107_54:                             # %.preheader.preheader.new
                                        #   in Loop: Header=BB107_21 Depth=2
	andl	$-4, %r12d
	leaq	56(%r10), %rcx
	xorl	%edx, %edx
	xorl	%edi, %edi
	jmp	.LBB107_55
	.p2align	4, 0x90
.LBB107_63:                             #   in Loop: Header=BB107_55 Depth=3
	addq	$4, %rdx
	addq	$64, %rcx
	cmpq	%rdx, %r12
	je	.LBB107_38
.LBB107_55:                             # %.preheader
                                        #   Parent Loop BB107_3 Depth=1
                                        #     Parent Loop BB107_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-48(%rcx), %rsi
	testq	%rsi, %rsi
	js	.LBB107_56
# %bb.57:                               # %.preheader.1
                                        #   in Loop: Header=BB107_55 Depth=3
	movslq	-32(%rcx), %rsi
	testq	%rsi, %rsi
	js	.LBB107_58
.LBB107_59:                             # %.preheader.2
                                        #   in Loop: Header=BB107_55 Depth=3
	movslq	-16(%rcx), %rsi
	testq	%rsi, %rsi
	js	.LBB107_60
.LBB107_61:                             # %.preheader.3
                                        #   in Loop: Header=BB107_55 Depth=3
	movslq	(%rcx), %rsi
	testq	%rsi, %rsi
	jns	.LBB107_63
	jmp	.LBB107_62
	.p2align	4, 0x90
.LBB107_56:                             #   in Loop: Header=BB107_55 Depth=3
	movslq	-52(%rcx), %rax
	decq	%rax
	imulq	%rsi, %rax
	addq	%rax, %rdi
	movslq	-32(%rcx), %rsi
	testq	%rsi, %rsi
	jns	.LBB107_59
.LBB107_58:                             #   in Loop: Header=BB107_55 Depth=3
	movslq	-36(%rcx), %rax
	decq	%rax
	imulq	%rsi, %rax
	addq	%rax, %rdi
	movslq	-16(%rcx), %rsi
	testq	%rsi, %rsi
	jns	.LBB107_61
.LBB107_60:                             #   in Loop: Header=BB107_55 Depth=3
	movslq	-20(%rcx), %rax
	decq	%rax
	imulq	%rsi, %rax
	addq	%rax, %rdi
	movslq	(%rcx), %rsi
	testq	%rsi, %rsi
	jns	.LBB107_63
.LBB107_62:                             #   in Loop: Header=BB107_55 Depth=3
	movslq	-4(%rcx), %rax
	decq	%rax
	imulq	%rsi, %rax
	addq	%rax, %rdi
	jmp	.LBB107_63
	.p2align	4, 0x90
.LBB107_24:                             #   in Loop: Header=BB107_3 Depth=1
	movq	_ZN6Halide7Runtime8Internal18current_cache_sizeE@GOTPCREL(%rip), %r15
	movq	%r8, (%r15)
	movq	_ZN6Halide7Runtime8Internal19least_recently_usedE@GOTPCREL(%rip), %r14
	movq	-48(%rbp), %rcx                 # 8-byte Reload
.LBB107_25:                             #   in Loop: Header=BB107_3 Depth=1
	movq	%rcx, %rdi
	movq	%rcx, %rbx
	callq	_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv@PLT
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	halide_free@PLT
	movq	(%r15), %rax
	movq	_ZN6Halide7Runtime8Internal14max_cache_sizeE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdx
	movq	_ZN6Halide7Runtime8Internal18most_recently_usedE@GOTPCREL(%rip), %rsi
	movq	-56(%rbp), %r8                  # 8-byte Reload
.LBB107_26:                             #   in Loop: Header=BB107_3 Depth=1
	testq	%r8, %r8
	je	.LBB107_28
# %bb.27:                               #   in Loop: Header=BB107_3 Depth=1
	movq	%r8, %rcx
	cmpq	%rdx, %rax
	jg	.LBB107_3
	jmp	.LBB107_28
.LBB107_16:                             #   in Loop: Header=BB107_3 Depth=1
	movq	16(%rcx), %rax
	movq	%rax, (%rsi)
	testq	%rax, %rax
	jne	.LBB107_18
	jmp	.LBB107_19
.LBB107_28:                             # %.loopexit19
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end107:
	.size	_ZN6Halide7Runtime8Internal11prune_cacheEv, .Lfunc_end107-_ZN6Halide7Runtime8Internal11prune_cacheEv
                                        # -- End function
	.section	.text.halide_memoization_cache_set_size,"ax",@progbits
	.weak	halide_memoization_cache_set_size # -- Begin function halide_memoization_cache_set_size
	.p2align	4, 0x90
	.type	halide_memoization_cache_set_size,@function
halide_memoization_cache_set_size:      # @halide_memoization_cache_set_size
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testq	%rdi, %rdi
	movl	$1048576, %ebx                  # imm = 0x100000
	cmovneq	%rdi, %rbx
	movq	_ZN6Halide7Runtime8Internal16memoization_lockE@GOTPCREL(%rip), %r14
	movq	%r14, %rdi
	callq	halide_mutex_lock@PLT
	movq	_ZN6Halide7Runtime8Internal14max_cache_sizeE@GOTPCREL(%rip), %rax
	movq	%rbx, (%rax)
	callq	_ZN6Halide7Runtime8Internal11prune_cacheEv@PLT
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	halide_mutex_unlock@PLT         # TAILCALL
.Lfunc_end108:
	.size	halide_memoization_cache_set_size, .Lfunc_end108-halide_memoization_cache_set_size
                                        # -- End function
	.section	.text.halide_memoization_cache_lookup,"ax",@progbits
	.weak	halide_memoization_cache_lookup # -- Begin function halide_memoization_cache_lookup
	.p2align	4, 0x90
	.type	halide_memoization_cache_lookup,@function
halide_memoization_cache_lookup:        # @halide_memoization_cache_lookup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%r9, %r14
	movl	%r8d, -44(%rbp)                 # 4-byte Spill
	movq	%rcx, -88(%rbp)                 # 8-byte Spill
	movq	%rdi, -80(%rbp)                 # 8-byte Spill
	movslq	%edx, %r12
	movq	%rsi, -72(%rbp)                 # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r12, %rsi
	callq	_ZN6Halide7Runtime8Internal8djb_hashEPKhm@PLT
	movl	%eax, %r13d
	movzbl	%r13b, %ebx
	movq	_ZN6Halide7Runtime8Internal16memoization_lockE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_lock@PLT
	movq	_ZN6Halide7Runtime8Internal13cache_entriesE@GOTPCREL(%rip), %rax
	movq	(%rax,%rbx,8), %rbx
	testq	%rbx, %rbx
	movq	%r14, -56(%rbp)                 # 8-byte Spill
	movl	%r13d, -60(%rbp)                # 4-byte Spill
	je	.LBB109_9
# %bb.1:
	movl	-44(%rbp), %eax                 # 4-byte Reload
	testl	%eax, %eax
	jle	.LBB109_18
# %bb.2:
	movl	%eax, %r15d
	jmp	.LBB109_3
	.p2align	4, 0x90
.LBB109_17:                             #   in Loop: Header=BB109_18 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB109_9
.LBB109_18:                             # %.preheader20
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r13d, 48(%rbx)
	jne	.LBB109_17
# %bb.19:                               #   in Loop: Header=BB109_18 Depth=1
	cmpq	%r12, 32(%rbx)
	jne	.LBB109_17
# %bb.20:                               #   in Loop: Header=BB109_18 Depth=1
	movq	40(%rbx), %rdi
	movq	-72(%rbp), %rsi                 # 8-byte Reload
	movq	%r12, %rdx
	callq	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m@PLT
	testb	%al, %al
	je	.LBB109_17
# %bb.21:                               #   in Loop: Header=BB109_18 Depth=1
	movq	64(%rbx), %rsi
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	callq	_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t@PLT
	testb	%al, %al
	je	.LBB109_17
# %bb.22:                               #   in Loop: Header=BB109_18 Depth=1
	movl	-44(%rbp), %eax                 # 4-byte Reload
	cmpl	%eax, 56(%rbx)
	jne	.LBB109_17
.LBB109_23:                             # %.loopexit18
	movq	_ZN6Halide7Runtime8Internal18most_recently_usedE@GOTPCREL(%rip), %r14
	cmpq	(%r14), %rbx
	movl	-44(%rbp), %r15d                # 4-byte Reload
	je	.LBB109_36
# %bb.24:
	cmpq	$0, 8(%rbx)
	jne	.LBB109_26
# %bb.25:
	leaq	.L.str.2.44(%rip), %rsi
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	callq	halide_print@PLT
	callq	abort@PLT
.LBB109_26:
	movq	16(%rbx), %rax
	testq	%rax, %rax
	je	.LBB109_28
# %bb.27:
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rax)
	movq	8(%rbx), %rax
	jmp	.LBB109_31
.LBB109_16:                             #   in Loop: Header=BB109_3 Depth=1
	testb	%al, %al
	movq	-56(%rbp), %r14                 # 8-byte Reload
	movl	-60(%rbp), %r13d                # 4-byte Reload
	jne	.LBB109_23
	.p2align	4, 0x90
.LBB109_8:                              #   in Loop: Header=BB109_3 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB109_9
.LBB109_3:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB109_14 Depth 2
	cmpl	%r13d, 48(%rbx)
	jne	.LBB109_8
# %bb.4:                                #   in Loop: Header=BB109_3 Depth=1
	cmpq	%r12, 32(%rbx)
	jne	.LBB109_8
# %bb.5:                                #   in Loop: Header=BB109_3 Depth=1
	movq	40(%rbx), %rdi
	movq	-72(%rbp), %rsi                 # 8-byte Reload
	movq	%r12, %rdx
	callq	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m@PLT
	testb	%al, %al
	je	.LBB109_8
# %bb.6:                                #   in Loop: Header=BB109_3 Depth=1
	movq	64(%rbx), %rsi
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	callq	_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t@PLT
	testb	%al, %al
	je	.LBB109_8
# %bb.7:                                #   in Loop: Header=BB109_3 Depth=1
	movl	-44(%rbp), %eax                 # 4-byte Reload
	cmpl	%eax, 56(%rbx)
	jne	.LBB109_8
# %bb.13:                               #   in Loop: Header=BB109_3 Depth=1
	movl	$1, %r13d
	movl	$5, %r14d
	.p2align	4, 0x90
.LBB109_14:                             #   Parent Loop BB109_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	-8(%rax,%r13,8), %rdi
	movq	72(%rbx), %rax
	movq	(%rax,%r14,8), %rsi
	callq	_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t@PLT
	cmpq	%r15, %r13
	jae	.LBB109_16
# %bb.15:                               #   in Loop: Header=BB109_14 Depth=2
	incq	%r13
	addq	$7, %r14
	testb	%al, %al
	jne	.LBB109_14
	jmp	.LBB109_16
.LBB109_9:                              # %.loopexit19
	movl	$1, %r12d
	movl	-44(%rbp), %eax                 # 4-byte Reload
	testl	%eax, %eax
	jle	.LBB109_86
# %bb.10:
	movl	%eax, %eax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movl	$1, %r15d
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB109_11:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB109_65 Depth 2
                                        #     Child Loop BB109_49 Depth 2
                                        #     Child Loop BB109_75 Depth 2
                                        #     Child Loop BB109_56 Depth 2
	movq	(%r14,%r13,8), %r12
	movl	36(%r12), %r10d
	testl	%r10d, %r10d
	jle	.LBB109_12
# %bb.45:                               #   in Loop: Header=BB109_11 Depth=1
	movq	40(%r12), %r8
	leaq	-1(%r10), %r9
	movl	%r10d, %edi
	andl	$3, %edi
	cmpq	$3, %r9
	jae	.LBB109_64
# %bb.46:                               #   in Loop: Header=BB109_11 Depth=1
	xorl	%ecx, %ecx
	xorl	%r14d, %r14d
.LBB109_47:                             # %.preheader.preheader.unr-lcssa
                                        #   in Loop: Header=BB109_11 Depth=1
	testq	%rdi, %rdi
	je	.LBB109_52
# %bb.48:                               # %.epil.preheader76.preheader
                                        #   in Loop: Header=BB109_11 Depth=1
	shlq	$4, %rcx
	addq	%r8, %rcx
	addq	$8, %rcx
	jmp	.LBB109_49
	.p2align	4, 0x90
.LBB109_51:                             #   in Loop: Header=BB109_49 Depth=2
	addq	$16, %rcx
	decq	%rdi
	je	.LBB109_52
.LBB109_49:                             # %.epil.preheader76
                                        #   Parent Loop BB109_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edx
	testl	%edx, %edx
	jle	.LBB109_51
# %bb.50:                               #   in Loop: Header=BB109_49 Depth=2
	movslq	-4(%rcx), %rsi
	decq	%rsi
	imulq	%rdx, %rsi
	addq	%rsi, %r14
	jmp	.LBB109_51
	.p2align	4, 0x90
.LBB109_52:                             # %.preheader.preheader
                                        #   in Loop: Header=BB109_11 Depth=1
	movl	%r10d, %edi
	andl	$3, %edi
	cmpq	$3, %r9
	jae	.LBB109_74
# %bb.53:                               #   in Loop: Header=BB109_11 Depth=1
	xorl	%ecx, %ecx
	xorl	%esi, %esi
.LBB109_54:                             # %.unr-lcssa
                                        #   in Loop: Header=BB109_11 Depth=1
	testq	%rdi, %rdi
	je	.LBB109_59
# %bb.55:                               # %.preheader.epil.preheader
                                        #   in Loop: Header=BB109_11 Depth=1
	shlq	$4, %rcx
	addq	%r8, %rcx
	addq	$8, %rcx
	jmp	.LBB109_56
	.p2align	4, 0x90
.LBB109_58:                             #   in Loop: Header=BB109_56 Depth=2
	addq	$16, %rcx
	decq	%rdi
	je	.LBB109_59
.LBB109_56:                             # %.preheader.epil
                                        #   Parent Loop BB109_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rcx), %rdx
	testq	%rdx, %rdx
	jns	.LBB109_58
# %bb.57:                               #   in Loop: Header=BB109_56 Depth=2
	movslq	-4(%rcx), %rax
	decq	%rax
	imulq	%rdx, %rax
	addq	%rax, %rsi
	jmp	.LBB109_58
	.p2align	4, 0x90
.LBB109_59:                             # %.epilog-lcssa
                                        #   in Loop: Header=BB109_11 Depth=1
	incq	%r14
	jmp	.LBB109_60
	.p2align	4, 0x90
.LBB109_12:                             #   in Loop: Header=BB109_11 Depth=1
	movl	$1, %r14d
	xorl	%esi, %esi
.LBB109_60:                             #   in Loop: Header=BB109_11 Depth=1
	subq	%rsi, %r14
	movzbl	33(%r12), %esi
	addq	$7, %rsi
	shrq	$3, %rsi
	imulq	%r14, %rsi
	addq	$64, %rsi
	movq	-80(%rbp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdi
	callq	halide_malloc@PLT
	movq	%rax, 16(%r12)
	testq	%rax, %rax
	je	.LBB109_61
# %bb.84:                               #   in Loop: Header=BB109_11 Depth=1
	addq	$64, %rax
	movq	%rax, 16(%r12)
	movq	%rax, %rdi
	callq	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh@PLT
	movl	-60(%rbp), %ecx                 # 4-byte Reload
	movl	%ecx, 8(%rax)
	movq	$0, (%rax)
	incq	%r13
	incq	%r15
	cmpq	-72(%rbp), %r13                 # 8-byte Folded Reload
	movq	-56(%rbp), %r14                 # 8-byte Reload
	jne	.LBB109_11
	jmp	.LBB109_85
	.p2align	4, 0x90
.LBB109_64:                             # %.new75
                                        #   in Loop: Header=BB109_11 Depth=1
	movl	%r10d, %r11d
	andl	$-4, %r11d
	leaq	56(%r8), %rsi
	xorl	%ecx, %ecx
	xorl	%r14d, %r14d
	jmp	.LBB109_65
	.p2align	4, 0x90
.LBB109_73:                             #   in Loop: Header=BB109_65 Depth=2
	addq	$4, %rcx
	addq	$64, %rsi
	cmpq	%rcx, %r11
	je	.LBB109_47
.LBB109_65:                             #   Parent Loop BB109_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rsi), %ebx
	testl	%ebx, %ebx
	jle	.LBB109_67
# %bb.66:                               #   in Loop: Header=BB109_65 Depth=2
	movslq	-52(%rsi), %rdx
	decq	%rdx
	imulq	%rbx, %rdx
	addq	%rdx, %r14
.LBB109_67:                             #   in Loop: Header=BB109_65 Depth=2
	movl	-32(%rsi), %ebx
	testl	%ebx, %ebx
	jle	.LBB109_69
# %bb.68:                               #   in Loop: Header=BB109_65 Depth=2
	movslq	-36(%rsi), %rax
	decq	%rax
	imulq	%rbx, %rax
	addq	%rax, %r14
.LBB109_69:                             #   in Loop: Header=BB109_65 Depth=2
	movl	-16(%rsi), %ebx
	testl	%ebx, %ebx
	jle	.LBB109_71
# %bb.70:                               #   in Loop: Header=BB109_65 Depth=2
	movslq	-20(%rsi), %rax
	decq	%rax
	imulq	%rbx, %rax
	addq	%rax, %r14
.LBB109_71:                             #   in Loop: Header=BB109_65 Depth=2
	movl	(%rsi), %ebx
	testl	%ebx, %ebx
	jle	.LBB109_73
# %bb.72:                               #   in Loop: Header=BB109_65 Depth=2
	movslq	-4(%rsi), %rax
	decq	%rax
	imulq	%rbx, %rax
	addq	%rax, %r14
	jmp	.LBB109_73
	.p2align	4, 0x90
.LBB109_74:                             # %.preheader.preheader.new
                                        #   in Loop: Header=BB109_11 Depth=1
	andl	$-4, %r10d
	leaq	56(%r8), %rdx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	jmp	.LBB109_75
	.p2align	4, 0x90
.LBB109_83:                             #   in Loop: Header=BB109_75 Depth=2
	addq	$4, %rcx
	addq	$64, %rdx
	cmpq	%rcx, %r10
	je	.LBB109_54
.LBB109_75:                             # %.preheader
                                        #   Parent Loop BB109_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-48(%rdx), %rbx
	testq	%rbx, %rbx
	js	.LBB109_76
# %bb.77:                               # %.preheader.1
                                        #   in Loop: Header=BB109_75 Depth=2
	movslq	-32(%rdx), %rbx
	testq	%rbx, %rbx
	js	.LBB109_78
.LBB109_79:                             # %.preheader.2
                                        #   in Loop: Header=BB109_75 Depth=2
	movslq	-16(%rdx), %rbx
	testq	%rbx, %rbx
	js	.LBB109_80
.LBB109_81:                             # %.preheader.3
                                        #   in Loop: Header=BB109_75 Depth=2
	movslq	(%rdx), %rbx
	testq	%rbx, %rbx
	jns	.LBB109_83
	jmp	.LBB109_82
	.p2align	4, 0x90
.LBB109_76:                             #   in Loop: Header=BB109_75 Depth=2
	movslq	-52(%rdx), %rax
	decq	%rax
	imulq	%rbx, %rax
	addq	%rax, %rsi
	movslq	-32(%rdx), %rbx
	testq	%rbx, %rbx
	jns	.LBB109_79
.LBB109_78:                             #   in Loop: Header=BB109_75 Depth=2
	movslq	-36(%rdx), %rax
	decq	%rax
	imulq	%rbx, %rax
	addq	%rax, %rsi
	movslq	-16(%rdx), %rbx
	testq	%rbx, %rbx
	jns	.LBB109_81
.LBB109_80:                             #   in Loop: Header=BB109_75 Depth=2
	movslq	-20(%rdx), %rax
	decq	%rax
	imulq	%rbx, %rax
	addq	%rax, %rsi
	movslq	(%rdx), %rbx
	testq	%rbx, %rbx
	jns	.LBB109_83
.LBB109_82:                             #   in Loop: Header=BB109_75 Depth=2
	movslq	-4(%rdx), %rax
	decq	%rax
	imulq	%rbx, %rax
	addq	%rax, %rsi
	jmp	.LBB109_83
.LBB109_61:
	movl	$-1, %r12d
	testl	%r13d, %r13d
	je	.LBB109_86
# %bb.62:
	movq	-56(%rbp), %r14                 # 8-byte Reload
	.p2align	4, 0x90
.LBB109_63:                             # =>This Inner Loop Header: Depth=1
	movq	-16(%r14,%r15,8), %rax
	movq	16(%rax), %rdi
	callq	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh@PLT
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	halide_free@PLT
	movq	-16(%r14,%r15,8), %rax
	movq	$0, 16(%rax)
	decq	%r15
	cmpq	$1, %r15
	jg	.LBB109_63
	jmp	.LBB109_86
.LBB109_85:
	movl	$1, %r12d
.LBB109_86:                             # %.loopexit
	movq	_ZN6Halide7Runtime8Internal16memoization_lockE@GOTPCREL(%rip), %rdi
	vzeroupper
	callq	halide_mutex_unlock@PLT
	movl	%r12d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB109_28:
	movq	_ZN6Halide7Runtime8Internal19least_recently_usedE@GOTPCREL(%rip), %r15
	cmpq	%rbx, (%r15)
	je	.LBB109_30
# %bb.29:
	leaq	.L.str.3.45(%rip), %rsi
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	callq	halide_print@PLT
	callq	abort@PLT
.LBB109_30:
	movq	8(%rbx), %rax
	movq	%rax, (%r15)
	movl	-44(%rbp), %r15d                # 4-byte Reload
.LBB109_31:
	testq	%rax, %rax
	jne	.LBB109_33
# %bb.32:
	leaq	.L.str.4.46(%rip), %rsi
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	callq	halide_print@PLT
	callq	abort@PLT
	movq	8(%rbx), %rax
.LBB109_33:
	movq	16(%rbx), %rcx
	movq	%rcx, 16(%rax)
	movq	$0, 8(%rbx)
	movq	(%r14), %rax
	movq	%rax, 16(%rbx)
	testq	%rax, %rax
	je	.LBB109_35
# %bb.34:
	movq	%rbx, 8(%rax)
.LBB109_35:
	movq	%rbx, (%r14)
.LBB109_36:
	testl	%r15d, %r15d
	movq	-56(%rbp), %r9                  # 8-byte Reload
	jle	.LBB109_42
# %bb.37:
	movl	%r15d, %ecx
	leaq	-1(%rcx), %rdx
	movl	%ecx, %r8d
	andl	$3, %r8d
	cmpq	$3, %rdx
	jae	.LBB109_43
# %bb.38:
	xorl	%edx, %edx
	jmp	.LBB109_39
.LBB109_43:                             # %.new
	andl	$-4, %ecx
	xorl	%esi, %esi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB109_44:                             # =>This Inner Loop Header: Depth=1
	movq	(%r9,%rdx,8), %rax
	movq	72(%rbx), %rdi
	vmovups	(%rdi,%rsi), %ymm0
	vmovups	24(%rdi,%rsi), %ymm1
	vmovups	%ymm1, 24(%rax)
	vmovups	%ymm0, (%rax)
	movq	8(%r9,%rdx,8), %rax
	movq	72(%rbx), %rdi
	vmovups	56(%rdi,%rsi), %ymm0
	vmovups	80(%rdi,%rsi), %ymm1
	vmovups	%ymm1, 24(%rax)
	vmovups	%ymm0, (%rax)
	movq	16(%r9,%rdx,8), %rax
	movq	72(%rbx), %rdi
	vmovups	112(%rdi,%rsi), %ymm0
	vmovups	136(%rdi,%rsi), %ymm1
	vmovups	%ymm1, 24(%rax)
	vmovups	%ymm0, (%rax)
	movq	24(%r9,%rdx,8), %rax
	movq	72(%rbx), %rdi
	vmovups	168(%rdi,%rsi), %ymm0
	vmovups	192(%rdi,%rsi), %ymm1
	vmovups	%ymm1, 24(%rax)
	vmovups	%ymm0, (%rax)
	addq	$4, %rdx
	addq	$224, %rsi
	cmpq	%rdx, %rcx
	jne	.LBB109_44
.LBB109_39:                             # %.loopexit17.loopexit.unr-lcssa
	testq	%r8, %r8
	je	.LBB109_42
# %bb.40:                               # %.epil.preheader.preheader
	imulq	$56, %rdx, %rcx
	leaq	(%r9,%rdx,8), %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB109_41:                             # %.epil.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%rsi,8), %rdi
	movq	72(%rbx), %rax
	vmovups	(%rax,%rcx), %ymm0
	vmovups	24(%rax,%rcx), %ymm1
	vmovups	%ymm1, 24(%rdi)
	vmovups	%ymm0, (%rdi)
	addq	$56, %rcx
	incq	%rsi
	cmpq	%rsi, %r8
	jne	.LBB109_41
.LBB109_42:                             # %.loopexit17
	addl	%r15d, 52(%rbx)
	xorl	%r12d, %r12d
	jmp	.LBB109_86
.Lfunc_end109:
	.size	halide_memoization_cache_lookup, .Lfunc_end109-halide_memoization_cache_lookup
                                        # -- End function
	.section	.text.halide_memoization_cache_store,"ax",@progbits
	.weak	halide_memoization_cache_store  # -- Begin function halide_memoization_cache_store
	.p2align	4, 0x90
	.type	halide_memoization_cache_store,@function
halide_memoization_cache_store:         # @halide_memoization_cache_store
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movl	%r8d, %r14d
	movq	%rcx, %r13
	movl	%edx, %r12d
	movq	%rsi, -72(%rbp)                 # 8-byte Spill
	movq	%rdi, -88(%rbp)                 # 8-byte Spill
	movq	%r9, -64(%rbp)                  # 8-byte Spill
	movq	(%r9), %rax
	movq	16(%rax), %rdi
	callq	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh@PLT
	movl	8(%rax), %r15d
	movzbl	%r15b, %ebx
	movq	_ZN6Halide7Runtime8Internal16memoization_lockE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_lock@PLT
	movq	_ZN6Halide7Runtime8Internal13cache_entriesE@GOTPCREL(%rip), %rax
	movq	%rbx, -112(%rbp)                # 8-byte Spill
	movq	(%rax,%rbx,8), %rbx
	movslq	%r12d, %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	testq	%rbx, %rbx
	movl	%r14d, -44(%rbp)                # 4-byte Spill
	movq	%r13, -104(%rbp)                # 8-byte Spill
	movq	%r15, -96(%rbp)                 # 8-byte Spill
	je	.LBB110_9
# %bb.1:
	movq	%r15, %r12
	testl	%r14d, %r14d
	jle	.LBB110_25
# %bb.2:
	movl	%r14d, %eax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	jmp	.LBB110_3
	.p2align	4, 0x90
.LBB110_24:                             #   in Loop: Header=BB110_25 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB110_9
.LBB110_25:                             # %.preheader19
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r12d, 48(%rbx)
	jne	.LBB110_24
# %bb.26:                               #   in Loop: Header=BB110_25 Depth=1
	movq	-56(%rbp), %rax                 # 8-byte Reload
	cmpq	%rax, 32(%rbx)
	jne	.LBB110_24
# %bb.27:                               #   in Loop: Header=BB110_25 Depth=1
	movq	40(%rbx), %rdi
	movq	-72(%rbp), %rsi                 # 8-byte Reload
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	callq	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m@PLT
	testb	%al, %al
	je	.LBB110_24
# %bb.28:                               #   in Loop: Header=BB110_25 Depth=1
	movq	64(%rbx), %rsi
	movq	%r13, %rdi
	callq	_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t@PLT
	testb	%al, %al
	je	.LBB110_24
# %bb.29:                               #   in Loop: Header=BB110_25 Depth=1
	cmpl	%r14d, 56(%rbx)
	jne	.LBB110_24
	jmp	.LBB110_30
.LBB110_21:                             #   in Loop: Header=BB110_3 Depth=1
	testb	%al, %al
	movl	-44(%rbp), %r14d                # 4-byte Reload
	movq	-104(%rbp), %r13                # 8-byte Reload
	movq	-96(%rbp), %r12                 # 8-byte Reload
	jne	.LBB110_22
	.p2align	4, 0x90
.LBB110_8:                              #   in Loop: Header=BB110_3 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB110_9
.LBB110_3:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB110_19 Depth 2
	cmpl	%r12d, 48(%rbx)
	jne	.LBB110_8
# %bb.4:                                #   in Loop: Header=BB110_3 Depth=1
	movq	-56(%rbp), %rax                 # 8-byte Reload
	cmpq	%rax, 32(%rbx)
	jne	.LBB110_8
# %bb.5:                                #   in Loop: Header=BB110_3 Depth=1
	movq	40(%rbx), %rdi
	movq	-72(%rbp), %rsi                 # 8-byte Reload
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	callq	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m@PLT
	testb	%al, %al
	je	.LBB110_8
# %bb.6:                                #   in Loop: Header=BB110_3 Depth=1
	movq	64(%rbx), %rsi
	movq	%r13, %rdi
	callq	_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t@PLT
	testb	%al, %al
	je	.LBB110_8
# %bb.7:                                #   in Loop: Header=BB110_3 Depth=1
	cmpl	%r14d, 56(%rbx)
	jne	.LBB110_8
# %bb.18:                               #   in Loop: Header=BB110_3 Depth=1
	movq	72(%rbx), %rcx
	movb	$1, %r15b
	movl	$1, %r14d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB110_19:                             #   Parent Loop BB110_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	-8(%rax,%r14,8), %r13
	movq	40(%rcx,%r12), %rsi
	movq	%r13, %rdi
	callq	_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t@PLT
	movq	72(%rbx), %rcx
	movq	16(%rcx,%r12), %rdx
	cmpq	16(%r13), %rdx
	movzbl	%r15b, %r15d
	movl	$0, %edx
	cmovel	%edx, %r15d
	cmpq	-80(%rbp), %r14                 # 8-byte Folded Reload
	jae	.LBB110_21
# %bb.20:                               #   in Loop: Header=BB110_19 Depth=2
	incq	%r14
	addq	$56, %r12
	testb	%al, %al
	jne	.LBB110_19
	jmp	.LBB110_21
.LBB110_9:                              # %.loopexit18
	testl	%r14d, %r14d
	jle	.LBB110_10
# %bb.33:
	movl	%r14d, %eax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	-64(%rbp), %r15                 # 8-byte Reload
	jmp	.LBB110_34
	.p2align	4, 0x90
.LBB110_50:                             # %.epilog-lcssa
                                        #   in Loop: Header=BB110_34 Depth=1
	incq	%r8
.LBB110_51:                             #   in Loop: Header=BB110_34 Depth=1
	subq	%rdx, %r8
	movzbl	33(%r11), %eax
	addq	$7, %rax
	shrq	$3, %rax
	imulq	%r8, %rax
	addq	%rax, %r12
	incq	%r13
	cmpq	-80(%rbp), %r13                 # 8-byte Folded Reload
	je	.LBB110_11
.LBB110_34:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB110_53 Depth 2
                                        #     Child Loop BB110_40 Depth 2
                                        #     Child Loop BB110_63 Depth 2
                                        #     Child Loop BB110_47 Depth 2
	movq	(%r15,%r13,8), %r11
	movl	36(%r11), %r14d
	testl	%r14d, %r14d
	jle	.LBB110_35
# %bb.36:                               #   in Loop: Header=BB110_34 Depth=1
	movq	40(%r11), %r9
	leaq	-1(%r14), %r10
	movl	%r14d, %eax
	andl	$3, %eax
	cmpq	$3, %r10
	jae	.LBB110_52
# %bb.37:                               #   in Loop: Header=BB110_34 Depth=1
	xorl	%edx, %edx
	xorl	%r8d, %r8d
.LBB110_38:                             # %.preheader.preheader.unr-lcssa
                                        #   in Loop: Header=BB110_34 Depth=1
	testq	%rax, %rax
	movq	-64(%rbp), %r15                 # 8-byte Reload
	je	.LBB110_43
# %bb.39:                               # %.epil.preheader.preheader
                                        #   in Loop: Header=BB110_34 Depth=1
	shlq	$4, %rdx
	leaq	(%r9,%rdx), %rcx
	addq	$8, %rcx
	jmp	.LBB110_40
	.p2align	4, 0x90
.LBB110_42:                             #   in Loop: Header=BB110_40 Depth=2
	addq	$16, %rcx
	decq	%rax
	je	.LBB110_43
.LBB110_40:                             # %.epil.preheader
                                        #   Parent Loop BB110_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edx
	testl	%edx, %edx
	jle	.LBB110_42
# %bb.41:                               #   in Loop: Header=BB110_40 Depth=2
	movslq	-4(%rcx), %rdi
	decq	%rdi
	imulq	%rdx, %rdi
	addq	%rdi, %r8
	jmp	.LBB110_42
	.p2align	4, 0x90
.LBB110_43:                             # %.preheader.preheader
                                        #   in Loop: Header=BB110_34 Depth=1
	movl	%r14d, %eax
	andl	$3, %eax
	cmpq	$3, %r10
	jae	.LBB110_62
# %bb.44:                               #   in Loop: Header=BB110_34 Depth=1
	xorl	%edi, %edi
	xorl	%edx, %edx
.LBB110_45:                             # %.unr-lcssa
                                        #   in Loop: Header=BB110_34 Depth=1
	testq	%rax, %rax
	je	.LBB110_50
# %bb.46:                               # %.preheader.epil.preheader
                                        #   in Loop: Header=BB110_34 Depth=1
	shlq	$4, %rdi
	leaq	(%r9,%rdi), %rcx
	addq	$8, %rcx
	jmp	.LBB110_47
	.p2align	4, 0x90
.LBB110_49:                             #   in Loop: Header=BB110_47 Depth=2
	addq	$16, %rcx
	decq	%rax
	je	.LBB110_50
.LBB110_47:                             # %.preheader.epil
                                        #   Parent Loop BB110_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rcx), %rdi
	testq	%rdi, %rdi
	jns	.LBB110_49
# %bb.48:                               #   in Loop: Header=BB110_47 Depth=2
	movslq	-4(%rcx), %rsi
	decq	%rsi
	imulq	%rdi, %rsi
	addq	%rsi, %rdx
	jmp	.LBB110_49
	.p2align	4, 0x90
.LBB110_35:                             #   in Loop: Header=BB110_34 Depth=1
	movl	$1, %r8d
	xorl	%edx, %edx
	jmp	.LBB110_51
	.p2align	4, 0x90
.LBB110_52:                             # %.new
                                        #   in Loop: Header=BB110_34 Depth=1
	movl	%r14d, %r15d
	andl	$-4, %r15d
	leaq	56(%r9), %rcx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	jmp	.LBB110_53
	.p2align	4, 0x90
.LBB110_61:                             #   in Loop: Header=BB110_53 Depth=2
	addq	$4, %rdx
	addq	$64, %rcx
	cmpq	%rdx, %r15
	je	.LBB110_38
.LBB110_53:                             #   Parent Loop BB110_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rcx), %ebx
	testl	%ebx, %ebx
	jle	.LBB110_55
# %bb.54:                               #   in Loop: Header=BB110_53 Depth=2
	movslq	-52(%rcx), %rdi
	decq	%rdi
	imulq	%rbx, %rdi
	addq	%rdi, %r8
.LBB110_55:                             #   in Loop: Header=BB110_53 Depth=2
	movl	-32(%rcx), %ebx
	testl	%ebx, %ebx
	jle	.LBB110_57
# %bb.56:                               #   in Loop: Header=BB110_53 Depth=2
	movslq	-36(%rcx), %rsi
	decq	%rsi
	imulq	%rbx, %rsi
	addq	%rsi, %r8
.LBB110_57:                             #   in Loop: Header=BB110_53 Depth=2
	movl	-16(%rcx), %ebx
	testl	%ebx, %ebx
	jle	.LBB110_59
# %bb.58:                               #   in Loop: Header=BB110_53 Depth=2
	movslq	-20(%rcx), %rsi
	decq	%rsi
	imulq	%rbx, %rsi
	addq	%rsi, %r8
.LBB110_59:                             #   in Loop: Header=BB110_53 Depth=2
	movl	(%rcx), %ebx
	testl	%ebx, %ebx
	jle	.LBB110_61
# %bb.60:                               #   in Loop: Header=BB110_53 Depth=2
	movslq	-4(%rcx), %rsi
	decq	%rsi
	imulq	%rbx, %rsi
	addq	%rsi, %r8
	jmp	.LBB110_61
	.p2align	4, 0x90
.LBB110_62:                             # %.preheader.preheader.new
                                        #   in Loop: Header=BB110_34 Depth=1
	andl	$-4, %r14d
	leaq	56(%r9), %rcx
	xorl	%edi, %edi
	xorl	%edx, %edx
	jmp	.LBB110_63
	.p2align	4, 0x90
.LBB110_71:                             #   in Loop: Header=BB110_63 Depth=2
	addq	$4, %rdi
	addq	$64, %rcx
	cmpq	%rdi, %r14
	je	.LBB110_45
.LBB110_63:                             # %.preheader
                                        #   Parent Loop BB110_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-48(%rcx), %rbx
	testq	%rbx, %rbx
	js	.LBB110_64
# %bb.65:                               # %.preheader.1
                                        #   in Loop: Header=BB110_63 Depth=2
	movslq	-32(%rcx), %rbx
	testq	%rbx, %rbx
	js	.LBB110_66
.LBB110_67:                             # %.preheader.2
                                        #   in Loop: Header=BB110_63 Depth=2
	movslq	-16(%rcx), %rbx
	testq	%rbx, %rbx
	js	.LBB110_68
.LBB110_69:                             # %.preheader.3
                                        #   in Loop: Header=BB110_63 Depth=2
	movslq	(%rcx), %rbx
	testq	%rbx, %rbx
	jns	.LBB110_71
	jmp	.LBB110_70
	.p2align	4, 0x90
.LBB110_64:                             #   in Loop: Header=BB110_63 Depth=2
	movslq	-52(%rcx), %rsi
	decq	%rsi
	imulq	%rbx, %rsi
	addq	%rsi, %rdx
	movslq	-32(%rcx), %rbx
	testq	%rbx, %rbx
	jns	.LBB110_67
.LBB110_66:                             #   in Loop: Header=BB110_63 Depth=2
	movslq	-36(%rcx), %rsi
	decq	%rsi
	imulq	%rbx, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rcx), %rbx
	testq	%rbx, %rbx
	jns	.LBB110_69
.LBB110_68:                             #   in Loop: Header=BB110_63 Depth=2
	movslq	-20(%rcx), %rsi
	decq	%rsi
	imulq	%rbx, %rsi
	addq	%rsi, %rdx
	movslq	(%rcx), %rbx
	testq	%rbx, %rbx
	jns	.LBB110_71
.LBB110_70:                             #   in Loop: Header=BB110_63 Depth=2
	movslq	-4(%rcx), %rsi
	decq	%rsi
	imulq	%rbx, %rsi
	addq	%rsi, %rdx
	jmp	.LBB110_71
.LBB110_10:
	xorl	%r12d, %r12d
	movq	-64(%rbp), %r15                 # 8-byte Reload
.LBB110_11:                             # %.loopexit16
	movq	_ZN6Halide7Runtime8Internal18current_cache_sizeE@GOTPCREL(%rip), %rbx
	addq	%r12, (%rbx)
	callq	_ZN6Halide7Runtime8Internal11prune_cacheEv@PLT
	movl	$96, %esi
	xorl	%edi, %edi
	callq	halide_malloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LBB110_13
# %bb.12:
	movb	16(%rbp), %al
	subq	$8, %rsp
	movzbl	%al, %eax
	movq	%r13, %rdi
	movq	-72(%rbp), %rsi                 # 8-byte Reload
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	movq	-96(%rbp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	-104(%rbp), %r8                 # 8-byte Reload
	movl	-44(%rbp), %r9d                 # 4-byte Reload
	pushq	24(%rbp)
	pushq	%rax
	pushq	%r15
	callq	_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjPK15halide_buffer_tiPPS5_by@PLT
	addq	$32, %rsp
	testb	%al, %al
	je	.LBB110_13
# %bb.72:
	movq	-112(%rbp), %rdx                # 8-byte Reload
	movq	_ZN6Halide7Runtime8Internal13cache_entriesE@GOTPCREL(%rip), %rsi
	movq	(%rsi,%rdx,8), %rax
	movq	%rax, (%r13)
	movq	_ZN6Halide7Runtime8Internal18most_recently_usedE@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, 16(%r13)
	testq	%rcx, %rcx
	je	.LBB110_74
# %bb.73:
	movq	%r13, 8(%rcx)
.LBB110_74:
	movq	%r13, (%rax)
	movq	_ZN6Halide7Runtime8Internal19least_recently_usedE@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	jne	.LBB110_76
# %bb.75:
	movq	%r13, (%rax)
.LBB110_76:
	movq	%r13, (%rsi,%rdx,8)
	movl	-44(%rbp), %eax                 # 4-byte Reload
	movl	%eax, 52(%r13)
	testl	%eax, %eax
	jle	.LBB110_79
# %bb.77:
	movl	%eax, %r14d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB110_78:                             # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rbx,8), %rax
	movq	16(%rax), %rdi
	callq	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh@PLT
	movq	%r13, (%rax)
	incq	%rbx
	cmpq	%rbx, %r14
	jne	.LBB110_78
	jmp	.LBB110_79
.LBB110_13:
	subq	%r12, (%rbx)
	movl	-44(%rbp), %eax                 # 4-byte Reload
	testl	%eax, %eax
	jle	.LBB110_16
# %bb.14:
	movl	%eax, %r14d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB110_15:                             # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rbx,8), %rax
	movq	16(%rax), %rdi
	callq	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh@PLT
	movq	$0, (%rax)
	incq	%rbx
	cmpq	%rbx, %r14
	jne	.LBB110_15
.LBB110_16:                             # %.loopexit
	testq	%r13, %r13
	je	.LBB110_79
# %bb.17:
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movq	%r13, %rsi
	callq	halide_free@PLT
.LBB110_79:                             # %.loopexit15
	movq	_ZN6Halide7Runtime8Internal16memoization_lockE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_unlock@PLT
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB110_22:
	testb	$1, %r15b
	jne	.LBB110_30
# %bb.23:
	leaq	.L.str.8.47(%rip), %rsi
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	callq	halide_print@PLT
	callq	abort@PLT
.LBB110_30:                             # %.loopexit20
	testl	%r14d, %r14d
	movq	-64(%rbp), %r15                 # 8-byte Reload
	jle	.LBB110_79
# %bb.31:
	movl	%r14d, %r14d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB110_32:                             # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rbx,8), %rax
	movq	16(%rax), %rdi
	callq	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh@PLT
	movq	$0, (%rax)
	incq	%rbx
	cmpq	%rbx, %r14
	jne	.LBB110_32
	jmp	.LBB110_79
.Lfunc_end110:
	.size	halide_memoization_cache_store, .Lfunc_end110-halide_memoization_cache_store
                                        # -- End function
	.section	.text.halide_memoization_cache_release,"ax",@progbits
	.weak	halide_memoization_cache_release # -- Begin function halide_memoization_cache_release
	.p2align	4, 0x90
	.type	halide_memoization_cache_release,@function
halide_memoization_cache_release:       # @halide_memoization_cache_release
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	%rsi, %rdi
	callq	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh@PLT
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB111_4
# %bb.1:
	movq	_ZN6Halide7Runtime8Internal16memoization_lockE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_lock@PLT
	movl	52(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB111_3
# %bb.2:
	leaq	.L.str.11.48(%rip), %rsi
	movq	%r14, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
	movl	52(%rbx), %eax
.LBB111_3:
	decl	%eax
	movl	%eax, 52(%rbx)
	movq	_ZN6Halide7Runtime8Internal16memoization_lockE@GOTPCREL(%rip), %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	halide_mutex_unlock@PLT         # TAILCALL
.LBB111_4:
	movq	%r14, %rdi
	movq	%rax, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	halide_free@PLT                 # TAILCALL
.Lfunc_end111:
	.size	halide_memoization_cache_release, .Lfunc_end111-halide_memoization_cache_release
                                        # -- End function
	.section	.text.halide_memoization_cache_evict,"ax",@progbits
	.weak	halide_memoization_cache_evict  # -- Begin function halide_memoization_cache_evict
	.p2align	4, 0x90
	.type	halide_memoization_cache_evict,@function
halide_memoization_cache_evict:         # @halide_memoization_cache_evict
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	movq	_ZN6Halide7Runtime8Internal16memoization_lockE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_lock@PLT
	xorl	%r12d, %r12d
	jmp	.LBB112_1
	.p2align	4, 0x90
.LBB112_13:                             # %.loopexit
                                        #   in Loop: Header=BB112_1 Depth=1
	incq	%r12
	cmpq	$256, %r12                      # imm = 0x100
	je	.LBB112_14
.LBB112_1:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB112_3 Depth 2
	movq	_ZN6Halide7Runtime8Internal13cache_entriesE@GOTPCREL(%rip), %rax
	movq	(%rax,%r12,8), %r13
	testq	%r13, %r13
	je	.LBB112_13
# %bb.2:                                # %.preheader.preheader
                                        #   in Loop: Header=BB112_1 Depth=1
	movq	_ZN6Halide7Runtime8Internal13cache_entriesE@GOTPCREL(%rip), %rax
	leaq	(%rax,%r12,8), %r14
	jmp	.LBB112_3
.LBB112_10:                             #   in Loop: Header=BB112_3 Depth=2
	movq	_ZN6Halide7Runtime8Internal19least_recently_usedE@GOTPCREL(%rip), %rcx
.LBB112_11:                             #   in Loop: Header=BB112_3 Depth=2
	movq	%rax, (%rcx)
	movq	%rbx, %rdi
	callq	_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%rbx, %rsi
	callq	halide_free@PLT
	movq	%r14, %rbx
.LBB112_12:                             #   in Loop: Header=BB112_3 Depth=2
	movq	%rbx, %r14
	testq	%r13, %r13
	je	.LBB112_13
.LBB112_3:                              # %.preheader
                                        #   Parent Loop BB112_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %rbx
	movq	(%r13), %r13
	cmpb	$0, 88(%rbx)
	je	.LBB112_12
# %bb.4:                                #   in Loop: Header=BB112_3 Depth=2
	cmpq	%r15, 80(%rbx)
	jne	.LBB112_12
# %bb.5:                                #   in Loop: Header=BB112_3 Depth=2
	movq	%r13, (%r14)
	movq	8(%rbx), %rax
	movq	16(%rbx), %rcx
	testq	%rax, %rax
	je	.LBB112_7
# %bb.6:                                #   in Loop: Header=BB112_3 Depth=2
	movq	%rcx, 16(%rax)
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB112_10
	jmp	.LBB112_9
.LBB112_7:                              #   in Loop: Header=BB112_3 Depth=2
	movq	_ZN6Halide7Runtime8Internal18most_recently_usedE@GOTPCREL(%rip), %rdx
	movq	%rcx, (%rdx)
	testq	%rcx, %rcx
	je	.LBB112_10
.LBB112_9:                              #   in Loop: Header=BB112_3 Depth=2
	addq	$8, %rcx
	jmp	.LBB112_11
.LBB112_14:
	movq	_ZN6Halide7Runtime8Internal16memoization_lockE@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	halide_mutex_unlock@PLT         # TAILCALL
.Lfunc_end112:
	.size	halide_memoization_cache_evict, .Lfunc_end112-halide_memoization_cache_evict
                                        # -- End function
	.section	.text.halide_string_to_string,"ax",@progbits
	.weak	halide_string_to_string         # -- Begin function halide_string_to_string
	.p2align	4, 0x90
	.type	halide_string_to_string,@function
halide_string_to_string:                # @halide_string_to_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	%rsi, %rdi
	jae	.LBB113_6
# %bb.1:
	movq	%rsi, %rax
	.p2align	4, 0x90
.LBB113_2:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx), %ecx
	movb	%cl, (%rdi)
	testb	%cl, %cl
	je	.LBB113_6
# %bb.3:                                #   in Loop: Header=BB113_2 Depth=1
	incq	%rdi
	incq	%rdx
	cmpq	%rdi, %rax
	jne	.LBB113_2
# %bb.4:
	movb	$0, -1(%rdi)
	popq	%rbp
	retq
.LBB113_6:
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end113:
	.size	halide_string_to_string, .Lfunc_end113-halide_string_to_string
                                        # -- End function
	.section	.text.halide_uint64_to_string,"ax",@progbits
	.weak	halide_uint64_to_string         # -- Begin function halide_uint64_to_string
	.p2align	4, 0x90
	.type	halide_uint64_to_string,@function
halide_uint64_to_string:                # @halide_uint64_to_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movb	$0, -9(%rbp)
	leaq	-10(%rbp), %r8
	testq	%rdx, %rdx
	jne	.LBB114_2
# %bb.1:
	testl	%ecx, %ecx
	jle	.LBB114_5
.LBB114_2:                              # %.preheader.preheader
	movl	$1, %r11d
	movabsq	$-3689348814741910323, %r9      # imm = 0xCCCCCCCCCCCCCCCD
	.p2align	4, 0x90
.LBB114_3:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rbx
	movl	%r11d, %r10d
	mulxq	%r9, %rdx, %rdx
	shrq	$3, %rdx
	leal	(%rdx,%rdx), %eax
	leal	(%rax,%rax,4), %r11d
	movl	%ebx, %eax
	subl	%r11d, %eax
	addb	$48, %al
	movb	%al, (%r8)
	decq	%r8
	leal	1(%r10), %r11d
	cmpq	$9, %rbx
	ja	.LBB114_3
# %bb.4:                                # %.preheader
                                        #   in Loop: Header=BB114_3 Depth=1
	cmpl	%ecx, %r10d
	jl	.LBB114_3
.LBB114_5:                              # %.loopexit
	incq	%r8
	movq	%r8, %rdx
	callq	halide_string_to_string@PLT
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end114:
	.size	halide_uint64_to_string, .Lfunc_end114-halide_uint64_to_string
                                        # -- End function
	.section	.text.halide_int64_to_string,"ax",@progbits
	.weak	halide_int64_to_string          # -- Begin function halide_int64_to_string
	.p2align	4, 0x90
	.type	halide_int64_to_string,@function
halide_int64_to_string:                 # @halide_int64_to_string
# %bb.0:
	cmpq	%rsi, %rdi
	jae	.LBB115_3
# %bb.1:
	testq	%rdx, %rdx
	jns	.LBB115_3
# %bb.2:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$45, (%rdi)
	incq	%rdi
	negq	%rdx
	popq	%rbp
.LBB115_3:
	jmp	halide_uint64_to_string@PLT     # TAILCALL
.Lfunc_end115:
	.size	halide_int64_to_string, .Lfunc_end115-halide_int64_to_string
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function halide_double_to_string
.LCPI116_0:
	.quad	0x8000000000000000              # double -0
	.quad	0x8000000000000000              # double -0
.LCPI116_6:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI116_7:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI116_1:
	.quad	0x3ff0000000000000              # double 1
.LCPI116_2:
	.quad	0x4024000000000000              # double 10
.LCPI116_3:
	.quad	0x412e848000000000              # double 1.0E+6
.LCPI116_4:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI116_5:
	.quad	0x43e0000000000000              # double 9.2233720368547758E+18
	.section	.text.halide_double_to_string,"ax",@progbits
	.weak	halide_double_to_string
	.p2align	4, 0x90
	.type	halide_double_to_string,@function
halide_double_to_string:                # @halide_double_to_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$536, %rsp                      # imm = 0x218
	movl	%edx, %ebx
	movq	%rsi, %r12
	movq	%rdi, %r14
	vmovsd	%xmm0, -48(%rbp)
	movq	$0, -64(%rbp)
	leaq	-64(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy@PLT
	movq	-64(%rbp), %rax
	movb	$52, %cl
	bzhiq	%rcx, %rax, %r13
	movq	%rax, %r15
	shrq	$52, %r15
	andl	$2047, %r15d                    # imm = 0x7FF
	cmpl	$2047, %r15d                    # imm = 0x7FF
	jne	.LBB116_9
# %bb.1:
	testq	%r13, %r13
	je	.LBB116_6
# %bb.2:
	testq	%rax, %rax
	js	.LBB116_3
# %bb.5:
	leaq	.L.str.1.58(%rip), %rdx
	jmp	.LBB116_4
.LBB116_9:
	testq	%r13, %r13
	jne	.LBB116_18
# %bb.10:
	testl	%r15d, %r15d
	jne	.LBB116_18
# %bb.11:
	testl	%ebx, %ebx
	je	.LBB116_15
# %bb.12:
	testq	%rax, %rax
	js	.LBB116_13
# %bb.14:
	leaq	.L.str.5.62(%rip), %rdx
	jmp	.LBB116_4
.LBB116_18:
	testq	%rax, %rax
	js	.LBB116_19
# %bb.20:
	testl	%ebx, %ebx
	je	.LBB116_35
.LBB116_21:
	vmovsd	-48(%rbp), %xmm0                # xmm0 = mem[0],zero
	xorl	%ebx, %ebx
	vmovsd	.LCPI116_1(%rip), %xmm1         # xmm1 = mem[0],zero
	vucomisd	%xmm0, %xmm1
	jbe	.LBB116_25
# %bb.22:                               # %.preheader14.preheader
	xorl	%ebx, %ebx
	vmovsd	.LCPI116_2(%rip), %xmm2         # xmm2 = mem[0],zero
	.p2align	4, 0x90
.LBB116_23:                             # %.preheader14
                                        # =>This Inner Loop Header: Depth=1
	vmulsd	%xmm2, %xmm0, %xmm0
	decl	%ebx
	vucomisd	%xmm0, %xmm1
	ja	.LBB116_23
# %bb.24:
	vmovsd	%xmm0, -48(%rbp)
.LBB116_25:
	vucomisd	.LCPI116_2(%rip), %xmm0
	jb	.LBB116_29
# %bb.26:                               # %.preheader13.preheader
	vmovsd	.LCPI116_2(%rip), %xmm1         # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB116_27:                             # %.preheader13
                                        # =>This Inner Loop Header: Depth=1
	vdivsd	%xmm1, %xmm0, %xmm0
	incl	%ebx
	vucomisd	%xmm1, %xmm0
	jae	.LBB116_27
# %bb.28:
	vmovsd	%xmm0, -48(%rbp)
.LBB116_29:
	vmovsd	.LCPI116_3(%rip), %xmm1         # xmm1 = mem[0],zero
	vfmadd213sd	.LCPI116_4(%rip), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovsd	.LCPI116_5(%rip), %xmm0         # xmm0 = mem[0],zero
	vsubsd	%xmm0, %xmm1, %xmm2
	vcvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx     # imm = 0x8000000000000000
	vcvttsd2si	%xmm1, %rdx
	xorq	%rax, %rcx
	vucomisd	%xmm0, %xmm1
	cmovaeq	%rcx, %rdx
	movabsq	$4835703278458516699, %rax      # imm = 0x431BDE82D7B634DB
	mulxq	%rax, %rax, %rax
	shrq	$18, %rax
	imulq	$-1000000, %rax, %r15           # imm = 0xFFF0BDC0
	addq	%rdx, %r15
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.30.142(%rip), %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	$6, %ecx
	callq	halide_int64_to_string@PLT
	testl	%ebx, %ebx
	js	.LBB116_31
# %bb.30:
	leaq	.L.str.10.67(%rip), %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	jmp	.LBB116_32
.LBB116_6:
	testq	%rax, %rax
	js	.LBB116_7
# %bb.8:
	leaq	.L.str.3.60(%rip), %rdx
	jmp	.LBB116_4
.LBB116_3:
	leaq	.L.str.57(%rip), %rdx
	jmp	.LBB116_4
.LBB116_15:
	testq	%rax, %rax
	js	.LBB116_16
# %bb.17:
	leaq	.L.str.7.64(%rip), %rdx
	jmp	.LBB116_4
.LBB116_19:
	leaq	.L.str.8.65(%rip), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %r14
	vmovsd	-48(%rbp), %xmm0                # xmm0 = mem[0],zero
	vxorpd	.LCPI116_0(%rip), %xmm0, %xmm0
	vmovlpd	%xmm0, -48(%rbp)
	testl	%ebx, %ebx
	jne	.LBB116_21
.LBB116_35:
	testl	%r15d, %r15d
	je	.LBB116_36
# %bb.37:
	movabsq	$4503599627370495, %rax         # imm = 0xFFFFFFFFFFFFF
	incq	%rax
	orq	%rax, %r13
	xorl	%edi, %edi
	movl	%r15d, %edx
	subl	$1075, %edx                     # imm = 0x433
	jae	.LBB116_38
# %bb.39:
	movl	%edx, %ecx
	negb	%cl
	cmpl	$1023, %r15d                    # imm = 0x3FF
	shrxq	%rcx, %r13, %rax
	shlxq	%rcx, %rax, %rcx
	cmovbq	%rdi, %rax
	cmovbq	%rdi, %rcx
	subq	%rcx, %r13
	vmovq	%r13, %xmm0
	vmovdqa	.LCPI116_6(%rip), %xmm1         # xmm1 = [1127219200,1160773632,0,0]
	vpunpckldq	%xmm1, %xmm0, %xmm0     # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	vmovapd	.LCPI116_7(%rip), %xmm2         # xmm2 = [4.503599627370496E+15,1.9342813113834067E+25]
	vsubpd	%xmm2, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm3        # xmm3 = xmm0[1,0]
	vaddsd	%xmm0, %xmm3, %xmm0
	shlq	$52, %rdx
	movabsq	$4696837146684686336, %rcx      # imm = 0x412E848000000000
	addq	%rdx, %rcx
	vmovq	%rcx, %xmm3
	vfmadd213sd	.LCPI116_4(%rip), %xmm0, %xmm3 # xmm3 = (xmm0 * xmm3) + mem
	vmovsd	.LCPI116_5(%rip), %xmm0         # xmm0 = mem[0],zero
	vsubsd	%xmm0, %xmm3, %xmm4
	vcvttsd2si	%xmm4, %rcx
	movabsq	$-9223372036854775808, %rdx     # imm = 0x8000000000000000
	vcvttsd2si	%xmm3, %rsi
	xorq	%rcx, %rdx
	vucomisd	%xmm0, %xmm3
	cmovaeq	%rdx, %rsi
	vmovq	%rsi, %xmm0
	vpunpckldq	%xmm1, %xmm0, %xmm0     # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	vsubpd	%xmm2, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm0, %xmm1, %xmm0
	vucomisd	%xmm0, %xmm3
	setnp	%cl
	sete	%dl
	andb	%cl, %dl
	andb	%sil, %dl
	movzbl	%dl, %ecx
	subq	%rcx, %rsi
	xorl	%r13d, %r13d
	cmpq	$1000000, %rsi                  # imm = 0xF4240
	sete	%r13b
	cmovneq	%rsi, %rdi
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	addq	%rax, %r13
	xorl	%r15d, %r15d
	jmp	.LBB116_40
.LBB116_7:
	leaq	.L.str.2.59(%rip), %rdx
	jmp	.LBB116_4
.LBB116_13:
	leaq	.L.str.4.61(%rip), %rdx
	jmp	.LBB116_4
.LBB116_31:
	leaq	.L.str.11.68(%rip), %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	negl	%ebx
.LBB116_32:
	movl	%ebx, %edx
	movq	%r12, %rsi
	movl	$2, %ecx
	jmp	.LBB116_33
.LBB116_16:
	leaq	.L.str.6.63(%rip), %rdx
.LBB116_4:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	jmp	.LBB116_34
.LBB116_36:
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r14, %rdi
	movq	%r12, %rsi
	xorl	%edx, %edx
	callq	halide_double_to_string@PLT
	jmp	.LBB116_34
.LBB116_38:
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	%rdx, %r15
.LBB116_40:
	leaq	-64(%rbp), %rsi
	leaq	-96(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%r13, %rdx
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	testl	%r15d, %r15d
	jle	.LBB116_63
# %bb.41:                               # %.preheader12.preheader
	cmpl	$1, %r15d
	jne	.LBB116_42
.LBB116_56:                             # %.loopexit.loopexit.unr-lcssa
	testb	$1, %r15b
	je	.LBB116_63
# %bb.57:                               # %.preheader12.epil
	cmpq	%rbx, %rax
	je	.LBB116_58
# %bb.59:                               # %.preheader.epil.preheader
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB116_60:                             # %.preheader.epil
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rax), %edx
	addb	$-48, %dl
	movzbl	%dl, %edx
	addl	%edx, %edx
	orl	%ecx, %edx
	leal	-10(%rdx), %esi
	xorl	%ecx, %ecx
	cmpb	$9, %dl
	setg	%cl
	movzbl	%sil, %esi
	cmovlel	%edx, %esi
	addb	$48, %sil
	movb	%sil, -1(%rax)
	leaq	-1(%rax), %rsi
	movq	%rsi, %rax
	cmpq	%rsi, %rbx
	jne	.LBB116_60
# %bb.61:
	cmpb	$10, %dl
	jl	.LBB116_63
# %bb.62:
	movb	$49, -1(%rbx)
	decq	%rbx
	jmp	.LBB116_63
.LBB116_42:                             # %.preheader12.preheader.new
	movl	%r15d, %r8d
	andl	$-2, %r8d
	jmp	.LBB116_43
	.p2align	4, 0x90
.LBB116_54:                             #   in Loop: Header=BB116_43 Depth=1
	movq	%rdx, %rbx
.LBB116_55:                             #   in Loop: Header=BB116_43 Depth=1
	addl	$-2, %r8d
	je	.LBB116_56
.LBB116_43:                             # %.preheader12
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB116_45 Depth 2
                                        #     Child Loop BB116_51 Depth 2
	movq	%rax, %rdx
	cmpq	%rbx, %rax
	je	.LBB116_49
# %bb.44:                               # %.preheader.preheader
                                        #   in Loop: Header=BB116_43 Depth=1
	xorl	%esi, %esi
	movq	%rax, %rdx
	.p2align	4, 0x90
.LBB116_45:                             # %.preheader
                                        #   Parent Loop BB116_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%rdx), %ecx
	addb	$-48, %cl
	movzbl	%cl, %edi
	addl	%edi, %edi
	orl	%esi, %edi
	leal	-10(%rdi), %ecx
	xorl	%esi, %esi
	cmpb	$9, %dil
	setg	%sil
	movzbl	%cl, %ecx
	cmovlel	%edi, %ecx
	addb	$48, %cl
	movb	%cl, -1(%rdx)
	leaq	-1(%rdx), %rcx
	movq	%rcx, %rdx
	cmpq	%rcx, %rbx
	jne	.LBB116_45
# %bb.46:                               #   in Loop: Header=BB116_43 Depth=1
	cmpb	$9, %dil
	jle	.LBB116_48
# %bb.47:                               #   in Loop: Header=BB116_43 Depth=1
	movb	$49, -1(%rbx)
	decq	%rbx
.LBB116_48:                             # %.preheader12.1
                                        #   in Loop: Header=BB116_43 Depth=1
	movq	%rbx, %rdx
.LBB116_49:                             # %.preheader12.1
                                        #   in Loop: Header=BB116_43 Depth=1
	movq	%rax, %rbx
	cmpq	%rdx, %rax
	je	.LBB116_55
# %bb.50:                               # %.preheader.1.preheader
                                        #   in Loop: Header=BB116_43 Depth=1
	xorl	%edi, %edi
	movq	%rax, %rsi
	.p2align	4, 0x90
.LBB116_51:                             # %.preheader.1
                                        #   Parent Loop BB116_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%rsi), %ecx
	addb	$-48, %cl
	movzbl	%cl, %ebx
	addl	%ebx, %ebx
	orl	%edi, %ebx
	leal	-10(%rbx), %ecx
	xorl	%edi, %edi
	cmpb	$9, %bl
	setg	%dil
	movzbl	%cl, %ecx
	cmovlel	%ebx, %ecx
	addb	$48, %cl
	movb	%cl, -1(%rsi)
	leaq	-1(%rsi), %rcx
	movq	%rcx, %rsi
	cmpq	%rcx, %rdx
	jne	.LBB116_51
# %bb.52:                               #   in Loop: Header=BB116_43 Depth=1
	cmpb	$10, %bl
	jl	.LBB116_54
# %bb.53:                               #   in Loop: Header=BB116_43 Depth=1
	movb	$49, -1(%rdx)
	decq	%rdx
	jmp	.LBB116_54
.LBB116_58:
	movq	%rax, %rbx
.LBB116_63:                             # %.loopexit
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.30.142(%rip), %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	movl	$6, %ecx
.LBB116_33:
	callq	halide_int64_to_string@PLT
.LBB116_34:
	addq	$536, %rsp                      # imm = 0x218
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end116:
	.size	halide_double_to_string, .Lfunc_end116-halide_double_to_string
                                        # -- End function
	.section	.text.halide_pointer_to_string,"ax",@progbits
	.weak	halide_pointer_to_string        # -- Begin function halide_pointer_to_string
	.p2align	4, 0x90
	.type	halide_pointer_to_string,@function
halide_pointer_to_string:               # @halide_pointer_to_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -32(%rbp)
	movl	$0, -16(%rbp)
	movl	%edx, %eax
	andl	$15, %eax
	leaq	.L.str.12.71(%rip), %r8
	movb	(%rax,%r8), %cl
	leaq	-15(%rbp), %rax
	movb	%cl, -14(%rbp)
	movq	%rdx, %rcx
	shrq	$4, %rcx
	je	.LBB117_17
# %bb.1:
	andl	$15, %ecx
	movb	(%rcx,%r8), %cl
	leaq	-16(%rbp), %r9
	movb	%cl, -15(%rbp)
	movq	%rdx, %rcx
	shrq	$8, %rcx
	je	.LBB117_16
# %bb.2:
	andl	$15, %ecx
	movb	(%rcx,%r8), %cl
	leaq	-17(%rbp), %rax
	movb	%cl, -16(%rbp)
	movq	%rdx, %rcx
	shrq	$12, %rcx
	je	.LBB117_24
# %bb.3:
	andl	$15, %ecx
	movb	(%rcx,%r8), %cl
	leaq	-18(%rbp), %r9
	movb	%cl, -17(%rbp)
	movq	%rdx, %rcx
	shrq	$16, %rcx
	je	.LBB117_16
# %bb.4:
	andl	$15, %ecx
	movb	(%rcx,%r8), %cl
	leaq	-19(%rbp), %rax
	movb	%cl, -18(%rbp)
	movq	%rdx, %rcx
	shrq	$20, %rcx
	je	.LBB117_24
# %bb.5:
	andl	$15, %ecx
	movb	(%rcx,%r8), %cl
	leaq	-20(%rbp), %r9
	movb	%cl, -19(%rbp)
	movq	%rdx, %rcx
	shrq	$24, %rcx
	je	.LBB117_16
# %bb.6:
	andl	$15, %ecx
	movb	(%rcx,%r8), %cl
	leaq	-21(%rbp), %rax
	movb	%cl, -20(%rbp)
	movq	%rdx, %rcx
	shrq	$28, %rcx
	je	.LBB117_24
# %bb.7:
	andl	$15, %ecx
	movb	(%rcx,%r8), %cl
	leaq	-22(%rbp), %r9
	movb	%cl, -21(%rbp)
	movq	%rdx, %rcx
	shrq	$32, %rcx
	je	.LBB117_16
# %bb.8:
	andl	$15, %ecx
	movb	(%rcx,%r8), %cl
	leaq	-23(%rbp), %rax
	movb	%cl, -22(%rbp)
	movq	%rdx, %rcx
	shrq	$36, %rcx
	je	.LBB117_24
# %bb.9:
	andl	$15, %ecx
	movb	(%rcx,%r8), %cl
	leaq	-24(%rbp), %r9
	movb	%cl, -23(%rbp)
	movq	%rdx, %rcx
	shrq	$40, %rcx
	je	.LBB117_16
# %bb.10:
	andl	$15, %ecx
	movb	(%rcx,%r8), %cl
	leaq	-25(%rbp), %rax
	movb	%cl, -24(%rbp)
	movq	%rdx, %rcx
	shrq	$44, %rcx
	je	.LBB117_24
# %bb.11:
	andl	$15, %ecx
	movb	(%rcx,%r8), %cl
	leaq	-26(%rbp), %r9
	movb	%cl, -25(%rbp)
	movq	%rdx, %rcx
	shrq	$48, %rcx
	je	.LBB117_16
# %bb.12:
	andl	$15, %ecx
	movb	(%rcx,%r8), %cl
	leaq	-27(%rbp), %rax
	movb	%cl, -26(%rbp)
	movq	%rdx, %rcx
	shrq	$52, %rcx
	je	.LBB117_24
# %bb.13:
	andl	$15, %ecx
	movb	(%rcx,%r8), %cl
	leaq	-28(%rbp), %r9
	movb	%cl, -27(%rbp)
	movq	%rdx, %rcx
	shrq	$56, %rcx
	je	.LBB117_16
# %bb.14:
	andl	$15, %ecx
	movb	(%rcx,%r8), %cl
	leaq	-29(%rbp), %rax
	movb	%cl, -28(%rbp)
	shrq	$60, %rdx
	je	.LBB117_24
# %bb.15:
	movb	(%rdx,%r8), %cl
	movq	%rax, %rdx
	leaq	-30(%rbp), %rax
	movb	%cl, -29(%rbp)
	jmp	.LBB117_25
.LBB117_16:
	movq	%rax, %rdx
	movq	%r9, %rax
	jmp	.LBB117_25
.LBB117_17:
	leaq	-14(%rbp), %rdx
	jmp	.LBB117_25
.LBB117_24:
	movq	%r9, %rdx
.LBB117_25:
	movb	$120, (%rax)
	movb	$48, -2(%rdx)
	addq	$-2, %rdx
	callq	halide_string_to_string@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end117:
	.size	halide_pointer_to_string, .Lfunc_end117-halide_pointer_to_string
                                        # -- End function
	.section	.text.halide_type_to_string,"ax",@progbits
	.weak	halide_type_to_string           # -- Begin function halide_type_to_string
	.p2align	4, 0x90
	.type	halide_type_to_string,@function
halide_type_to_string:                  # @halide_type_to_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movsbq	(%rdx), %rax
	cmpq	$3, %rax
	ja	.LBB118_1
# %bb.2:                                # %switch.lookup
	leaq	.Lswitch.table.halide_type_to_string(%rip), %rcx
	movq	(%rcx,%rax,8), %rdx
	jmp	.LBB118_3
.LBB118_1:
	leaq	.L.str.17.72(%rip), %rdx
.LBB118_3:
	movq	%r14, %rsi
	callq	halide_string_to_string@PLT
	movzbl	1(%rbx), %edx
	movq	%rax, %rdi
	movq	%r14, %rsi
	movl	$1, %ecx
	callq	halide_uint64_to_string@PLT
	cmpw	$1, 2(%rbx)
	jne	.LBB118_5
# %bb.4:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB118_5:
	leaq	.L.str.18.77(%rip), %rdx
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	halide_string_to_string@PLT
	movzwl	2(%rbx), %edx
	movq	%rax, %rdi
	movq	%r14, %rsi
	movl	$1, %ecx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	halide_uint64_to_string@PLT     # TAILCALL
.Lfunc_end118:
	.size	halide_type_to_string, .Lfunc_end118-halide_type_to_string
                                        # -- End function
	.section	.text.halide_buffer_to_string,"ax",@progbits
	.weak	halide_buffer_to_string         # -- Begin function halide_buffer_to_string
	.p2align	4, 0x90
	.type	halide_buffer_to_string,@function
halide_buffer_to_string:                # @halide_buffer_to_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	testq	%rdx, %rdx
	je	.LBB119_1
# %bb.3:
	movq	%rdx, %r14
	leaq	.L.str.20.79(%rip), %rdx
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	(%r14), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_uint64_to_string@PLT
	leaq	.L.str.55(%rip), %r15
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	movq	8(%r14), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_pointer_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	movq	16(%r14), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_pointer_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	movq	24(%r14), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_uint64_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	leaq	32(%r14), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_type_to_string@PLT
	cmpl	$0, 36(%r14)
	jle	.LBB119_6
# %bb.4:
	xorl	%r15d, %r15d
	leaq	.L.str.55(%rip), %r12
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB119_5:                              # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdi
	movq	%rbx, %rsi
	leaq	.L.str.22.82(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	40(%r14), %rcx
	movslq	(%rcx,%r15), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	halide_string_to_string@PLT
	movq	40(%r14), %rcx
	movslq	4(%rcx,%r15), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	halide_string_to_string@PLT
	movq	40(%r14), %rcx
	movslq	8(%rcx,%r15), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	leaq	.L.str.23.83(%rip), %rdx
	callq	halide_string_to_string@PLT
	incq	%r13
	movslq	36(%r14), %rcx
	addq	$16, %r15
	cmpq	%rcx, %r13
	jl	.LBB119_5
.LBB119_6:                              # %.loopexit
	leaq	.L.str.8.120(%rip), %rdx
	movq	%rax, %rdi
	jmp	.LBB119_2
.LBB119_1:
	leaq	.L.str.19.78(%rip), %rdx
.LBB119_2:
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	halide_string_to_string@PLT     # TAILCALL
.Lfunc_end119:
	.size	halide_buffer_to_string, .Lfunc_end119-halide_buffer_to_string
                                        # -- End function
	.section	.text.halide_malloc_alignment,"ax",@progbits
	.weak	halide_malloc_alignment         # -- Begin function halide_malloc_alignment
	.p2align	4, 0x90
	.type	halide_malloc_alignment,@function
halide_malloc_alignment:                # @halide_malloc_alignment
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$64, %eax
	popq	%rbp
	retq
.Lfunc_end120:
	.size	halide_malloc_alignment, .Lfunc_end120-halide_malloc_alignment
                                        # -- End function
	.section	.text.halide_reuse_device_allocations,"ax",@progbits
	.weak	halide_reuse_device_allocations # -- Begin function halide_reuse_device_allocations
	.p2align	4, 0x90
	.type	halide_reuse_device_allocations,@function
halide_reuse_device_allocations:        # @halide_reuse_device_allocations
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	_ZN6Halide7Runtime8Internal36halide_reuse_device_allocations_flagE@GOTPCREL(%rip), %rax
	movb	%sil, (%rax)
	xorl	%r15d, %r15d
	testl	%esi, %esi
	jne	.LBB121_4
# %bb.1:
	movq	%rdi, %r14
	movq	_ZN6Halide7Runtime8Internal21allocation_pools_lockE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_lock@PLT
	movq	_ZN6Halide7Runtime8Internal23device_allocation_poolsE@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	xorl	%r15d, %r15d
	testq	%rbx, %rbx
	je	.LBB121_3
	.p2align	4, 0x90
.LBB121_5:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	*(%rbx)
	testl	%eax, %eax
	cmovnel	%eax, %r15d
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB121_5
.LBB121_3:                              # %.loopexit
	movq	_ZN6Halide7Runtime8Internal21allocation_pools_lockE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_unlock@PLT
.LBB121_4:
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end121:
	.size	halide_reuse_device_allocations, .Lfunc_end121-halide_reuse_device_allocations
                                        # -- End function
	.section	.text.halide_can_reuse_device_allocations,"ax",@progbits
	.weak	halide_can_reuse_device_allocations # -- Begin function halide_can_reuse_device_allocations
	.p2align	4, 0x90
	.type	halide_can_reuse_device_allocations,@function
halide_can_reuse_device_allocations:    # @halide_can_reuse_device_allocations
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal36halide_reuse_device_allocations_flagE@GOTPCREL(%rip), %rax
	movb	(%rax), %al
	popq	%rbp
	retq
.Lfunc_end122:
	.size	halide_can_reuse_device_allocations, .Lfunc_end122-halide_can_reuse_device_allocations
                                        # -- End function
	.section	.text.halide_register_device_allocation_pool,"ax",@progbits
	.weak	halide_register_device_allocation_pool # -- Begin function halide_register_device_allocation_pool
	.p2align	4, 0x90
	.type	halide_register_device_allocation_pool,@function
halide_register_device_allocation_pool: # @halide_register_device_allocation_pool
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	_ZN6Halide7Runtime8Internal21allocation_pools_lockE@GOTPCREL(%rip), %r14
	movq	%r14, %rdi
	callq	halide_mutex_lock@PLT
	movq	_ZN6Halide7Runtime8Internal23device_allocation_poolsE@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, 8(%rbx)
	movq	%rbx, (%rax)
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	halide_mutex_unlock@PLT         # TAILCALL
.Lfunc_end123:
	.size	halide_register_device_allocation_pool, .Lfunc_end123-halide_register_device_allocation_pool
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t # -- Begin function _ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t,@function
_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t: # @_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	24(%rsi), %rax
	xorl	%ebx, %ebx
	testb	$2, %al
	je	.LBB124_6
# %bb.1:
	movl	$-14, %ebx
	testb	$1, %al
	jne	.LBB124_6
# %bb.2:
	movq	%rsi, %r14
	movq	8(%rsi), %rax
	testq	%rax, %rax
	je	.LBB124_3
# %bb.4:
	movq	%rdi, %r15
	movq	120(%rax), %rax
	movq	%r14, %rsi
	callq	*48(%rax)
	testl	%eax, %eax
	jne	.LBB124_6
# %bb.5:
	andb	$-3, 24(%r14)
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	halide_msan_annotate_buffer_is_initialized@PLT
	xorl	%ebx, %ebx
	jmp	.LBB124_6
.LBB124_3:
	movl	$-19, %ebx
.LBB124_6:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end124:
	.size	_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t, .Lfunc_end124-_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t
                                        # -- End function
	.section	.text.halide_device_release,"ax",@progbits
	.weak	halide_device_release           # -- Begin function halide_device_release
	.p2align	4, 0x90
	.type	halide_device_release,@function
halide_device_release:                  # @halide_device_release
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	120(%rsi), %rax
	popq	%rbp
	jmpq	*40(%rax)                       # TAILCALL
.Lfunc_end125:
	.size	halide_device_release, .Lfunc_end125-halide_device_release
                                        # -- End function
	.section	.text.halide_copy_to_host,"ax",@progbits
	.weak	halide_copy_to_host             # -- Begin function halide_copy_to_host
	.p2align	4, 0x90
	.type	halide_copy_to_host,@function
halide_copy_to_host:                    # @halide_copy_to_host
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_lock@PLT
	testq	%r15, %r15
	je	.LBB126_1
# %bb.2:
	movq	(%r15), %rax
	movq	8(%r15), %rcx
	testq	%rax, %rax
	je	.LBB126_5
# %bb.3:
	testq	%rcx, %rcx
	jne	.LBB126_5
# %bb.4:
	movq	%r14, %rdi
	callq	halide_error_no_device_interface@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB126_12
	jmp	.LBB126_11
.LBB126_1:
	leaq	.L.str.6.88(%rip), %rsi
	movq	%r14, %rdi
	callq	halide_error_buffer_is_null@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB126_12
	jmp	.LBB126_11
.LBB126_5:
	testq	%rcx, %rcx
	je	.LBB126_8
# %bb.6:
	testq	%rax, %rax
	jne	.LBB126_8
# %bb.7:
	movq	%r14, %rdi
	callq	halide_error_device_interface_no_device@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB126_12
	jmp	.LBB126_11
.LBB126_8:
	movl	24(%r15), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	jne	.LBB126_11
# %bb.9:
	movq	%r14, %rdi
	callq	halide_error_host_and_device_dirty@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB126_12
.LBB126_11:                             # %.split1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t@PLT
	movl	%eax, %ebx
.LBB126_12:
	movq	_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_unlock@PLT
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end126:
	.size	halide_copy_to_host, .Lfunc_end126-halide_copy_to_host
                                        # -- End function
	.section	.text.copy_to_device_already_locked,"ax",@progbits
	.weak	copy_to_device_already_locked   # -- Begin function copy_to_device_already_locked
	.p2align	4, 0x90
	.type	copy_to_device_already_locked,@function
copy_to_device_already_locked:          # @copy_to_device_already_locked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	testq	%rsi, %rsi
	je	.LBB127_1
# %bb.2:
	movq	(%r12), %rax
	movq	8(%r12), %rcx
	testq	%rax, %rax
	je	.LBB127_5
# %bb.3:
	testq	%rcx, %rcx
	jne	.LBB127_5
# %bb.4:
	movq	%r14, %rdi
	callq	halide_error_no_device_interface@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB127_21
	jmp	.LBB127_11
.LBB127_1:
	leaq	.L.str.7.89(%rip), %rsi
	movq	%r14, %rdi
	callq	halide_error_buffer_is_null@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB127_21
	jmp	.LBB127_11
.LBB127_5:
	testq	%rcx, %rcx
	je	.LBB127_8
# %bb.6:
	testq	%rax, %rax
	jne	.LBB127_8
# %bb.7:
	movq	%r14, %rdi
	callq	halide_error_device_interface_no_device@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB127_21
	jmp	.LBB127_11
.LBB127_8:
	movl	24(%r12), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	jne	.LBB127_11
# %bb.9:
	movq	%r14, %rdi
	callq	halide_error_host_and_device_dirty@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB127_21
.LBB127_11:
	testq	%r15, %r15
	jne	.LBB127_13
# %bb.12:
	movq	8(%r12), %r15
	testq	%r15, %r15
	je	.LBB127_22
.LBB127_13:
	cmpq	$0, (%r12)
	je	.LBB127_16
# %bb.14:
	cmpq	%r15, 8(%r12)
	je	.LBB127_17
# %bb.15:
	leaq	.L.str.9.90(%rip), %rsi
	movq	%r14, %rdi
	callq	halide_error@PLT
	movl	$-42, %ebx
	jmp	.LBB127_21
.LBB127_16:
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	halide_device_malloc@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB127_21
.LBB127_17:
	movq	24(%r12), %rax
	xorl	%ebx, %ebx
	testb	$1, %al
	je	.LBB127_21
# %bb.18:
	movl	$-15, %ebx
	testb	$2, %al
	jne	.LBB127_21
# %bb.19:
	movq	120(%r15), %rax
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*56(%rax)
	testl	%eax, %eax
	jne	.LBB127_21
# %bb.20:
	andb	$-2, 24(%r12)
	xorl	%ebx, %ebx
.LBB127_21:
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB127_22:
	movq	%r14, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	halide_error_no_device_interface@PLT # TAILCALL
.Lfunc_end127:
	.size	copy_to_device_already_locked, .Lfunc_end127-copy_to_device_already_locked
                                        # -- End function
	.section	.text.halide_device_malloc,"ax",@progbits
	.weak	halide_device_malloc            # -- Begin function halide_device_malloc
	.p2align	4, 0x90
	.type	halide_device_malloc,@function
halide_device_malloc:                   # @halide_device_malloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	testq	%rsi, %rsi
	je	.LBB128_1
# %bb.2:
	movq	(%rbx), %rcx
	movq	8(%rbx), %rax
	testq	%rcx, %rcx
	je	.LBB128_5
# %bb.3:
	testq	%rax, %rax
	jne	.LBB128_5
# %bb.4:
	movq	%r15, %rdi
	callq	halide_error_no_device_interface@PLT
	testl	%eax, %eax
	jne	.LBB128_16
	jmp	.LBB128_11
.LBB128_1:
	leaq	.L.str.17.91(%rip), %rsi
	movq	%r15, %rdi
	callq	halide_error_buffer_is_null@PLT
	testl	%eax, %eax
	jne	.LBB128_16
	jmp	.LBB128_11
.LBB128_5:
	testq	%rax, %rax
	je	.LBB128_8
# %bb.6:
	testq	%rcx, %rcx
	jne	.LBB128_8
# %bb.7:
	movq	%r15, %rdi
	callq	halide_error_device_interface_no_device@PLT
	testl	%eax, %eax
	jne	.LBB128_16
	jmp	.LBB128_11
.LBB128_8:
	movl	24(%rbx), %ecx
	andl	$3, %ecx
	cmpl	$3, %ecx
	jne	.LBB128_12
# %bb.9:
	movq	%r15, %rdi
	callq	halide_error_host_and_device_dirty@PLT
	testl	%eax, %eax
	jne	.LBB128_16
.LBB128_11:
	movq	8(%rbx), %rax
.LBB128_12:
	testq	%rax, %rax
	je	.LBB128_15
# %bb.13:
	cmpq	%r14, %rax
	je	.LBB128_15
# %bb.14:
	leaq	.L.str.20.92(%rip), %rsi
	movq	%r15, %rdi
	callq	halide_error@PLT
	movl	$-42, %eax
	jmp	.LBB128_16
.LBB128_15:
	movq	120(%r14), %rax
	callq	*(%rax)
	movq	120(%r14), %rax
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*16(%rax)
	movl	%eax, %ebx
	movq	120(%r14), %rax
	callq	*8(%rax)
	xorl	%eax, %eax
	testl	%ebx, %ebx
	sete	%al
	shll	$4, %eax
	addl	$-16, %eax
.LBB128_16:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end128:
	.size	halide_device_malloc, .Lfunc_end128-halide_device_malloc
                                        # -- End function
	.section	.text.halide_copy_to_device,"ax",@progbits
	.weak	halide_copy_to_device           # -- Begin function halide_copy_to_device
	.p2align	4, 0x90
	.type	halide_copy_to_device,@function
halide_copy_to_device:                  # @halide_copy_to_device
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOTPCREL(%rip), %r12
	movq	%r12, %rdi
	callq	halide_mutex_lock@PLT
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	copy_to_device_already_locked@PLT
	movl	%eax, %ebx
	movq	%r12, %rdi
	callq	halide_mutex_unlock@PLT
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end129:
	.size	halide_copy_to_device, .Lfunc_end129-halide_copy_to_device
                                        # -- End function
	.section	.text.halide_device_sync,"ax",@progbits
	.weak	halide_device_sync              # -- Begin function halide_device_sync
	.p2align	4, 0x90
	.type	halide_device_sync,@function
halide_device_sync:                     # @halide_device_sync
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rsi, %rsi
	je	.LBB130_1
# %bb.2:
	movq	(%rbx), %rcx
	movq	8(%rbx), %rax
	testq	%rcx, %rcx
	je	.LBB130_5
# %bb.3:
	testq	%rax, %rax
	jne	.LBB130_5
# %bb.4:
	movq	%r14, %rdi
	callq	halide_error_no_device_interface@PLT
	testl	%eax, %eax
	jne	.LBB130_14
	jmp	.LBB130_11
.LBB130_1:
	leaq	.L.str.16.93(%rip), %rsi
	movq	%r14, %rdi
	callq	halide_error_buffer_is_null@PLT
	testl	%eax, %eax
	jne	.LBB130_14
	jmp	.LBB130_11
.LBB130_5:
	testq	%rax, %rax
	je	.LBB130_8
# %bb.6:
	testq	%rcx, %rcx
	jne	.LBB130_8
# %bb.7:
	movq	%r14, %rdi
	callq	halide_error_device_interface_no_device@PLT
	testl	%eax, %eax
	je	.LBB130_11
.LBB130_14:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB130_8:
	movl	24(%rbx), %ecx
	andl	$3, %ecx
	cmpl	$3, %ecx
	jne	.LBB130_12
# %bb.9:
	movq	%r14, %rdi
	callq	halide_error_host_and_device_dirty@PLT
	testl	%eax, %eax
	jne	.LBB130_14
.LBB130_11:
	movq	8(%rbx), %rax
.LBB130_12:
	testq	%rax, %rax
	je	.LBB130_15
# %bb.13:
	movq	120(%rax), %rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*32(%rax)
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	$-17, %eax
	cmovel	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB130_15:
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	halide_error_no_device_interface@PLT # TAILCALL
.Lfunc_end130:
	.size	halide_device_sync, .Lfunc_end130-halide_device_sync
                                        # -- End function
	.section	.text.halide_device_free,"ax",@progbits
	.weak	halide_device_free              # -- Begin function halide_device_free
	.p2align	4, 0x90
	.type	halide_device_free,@function
halide_device_free:                     # @halide_device_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r12
	movq	%rdi, %r14
	testq	%rsi, %rsi
	je	.LBB131_1
# %bb.2:
	movq	(%r12), %rax
	movq	8(%r12), %rbx
	testq	%rax, %rax
	je	.LBB131_5
# %bb.3:
	testq	%rbx, %rbx
	jne	.LBB131_5
# %bb.4:
	movq	%r14, %rdi
	callq	halide_error_no_device_interface@PLT
	testl	%eax, %eax
	jne	.LBB131_17
	jmp	.LBB131_11
.LBB131_1:
	leaq	.L.str.21.96(%rip), %rsi
	movq	%r14, %rdi
	callq	halide_error_buffer_is_null@PLT
	testl	%eax, %eax
	jne	.LBB131_17
	jmp	.LBB131_11
.LBB131_5:
	testq	%rbx, %rbx
	je	.LBB131_8
# %bb.6:
	testq	%rax, %rax
	jne	.LBB131_8
# %bb.7:
	movq	%r14, %rdi
	callq	halide_error_device_interface_no_device@PLT
	testl	%eax, %eax
	jne	.LBB131_17
	jmp	.LBB131_11
.LBB131_8:
	movl	24(%r12), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	jne	.LBB131_12
# %bb.9:
	movq	%r14, %rdi
	callq	halide_error_host_and_device_dirty@PLT
	testl	%eax, %eax
	jne	.LBB131_17
.LBB131_11:
	movq	8(%r12), %rbx
.LBB131_12:
	testq	%rbx, %rbx
	je	.LBB131_16
# %bb.13:
	movq	120(%rbx), %rax
	callq	*(%rax)
	movq	120(%rbx), %rax
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*24(%rax)
	movl	%eax, %r15d
	movq	120(%rbx), %rax
	callq	*8(%rax)
	cmpq	$0, (%r12)
	je	.LBB131_15
# %bb.14:
	leaq	.L.str.22.97(%rip), %rsi
	movq	%r14, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB131_15:
	testl	%r15d, %r15d
	movl	$-18, %eax
	cmovel	%r15d, %eax
	jmp	.LBB131_17
.LBB131_16:
	andb	$-3, 24(%r12)
	xorl	%eax, %eax
.LBB131_17:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end131:
	.size	halide_device_free, .Lfunc_end131-halide_device_free
                                        # -- End function
	.section	.text.halide_device_free_as_destructor,"ax",@progbits
	.weak	halide_device_free_as_destructor # -- Begin function halide_device_free_as_destructor
	.p2align	4, 0x90
	.type	halide_device_free_as_destructor,@function
halide_device_free_as_destructor:       # @halide_device_free_as_destructor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	jmp	halide_device_free@PLT          # TAILCALL
.Lfunc_end132:
	.size	halide_device_free_as_destructor, .Lfunc_end132-halide_device_free_as_destructor
                                        # -- End function
	.section	.text.halide_device_and_host_malloc,"ax",@progbits
	.weak	halide_device_and_host_malloc   # -- Begin function halide_device_and_host_malloc
	.p2align	4, 0x90
	.type	halide_device_and_host_malloc,@function
halide_device_and_host_malloc:          # @halide_device_and_host_malloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	testq	%rsi, %rsi
	je	.LBB133_1
# %bb.2:
	movq	(%rbx), %rcx
	movq	8(%rbx), %rax
	testq	%rcx, %rcx
	je	.LBB133_5
# %bb.3:
	testq	%rax, %rax
	jne	.LBB133_5
# %bb.4:
	movq	%r15, %rdi
	callq	halide_error_no_device_interface@PLT
	testl	%eax, %eax
	jne	.LBB133_18
	jmp	.LBB133_11
.LBB133_1:
	leaq	.L.str.23.98(%rip), %rsi
	movq	%r15, %rdi
	callq	halide_error_buffer_is_null@PLT
	testl	%eax, %eax
	jne	.LBB133_18
	jmp	.LBB133_11
.LBB133_5:
	testq	%rax, %rax
	je	.LBB133_8
# %bb.6:
	testq	%rcx, %rcx
	jne	.LBB133_8
# %bb.7:
	movq	%r15, %rdi
	callq	halide_error_device_interface_no_device@PLT
	testl	%eax, %eax
	jne	.LBB133_18
	jmp	.LBB133_11
.LBB133_8:
	movl	24(%rbx), %ecx
	andl	$3, %ecx
	cmpl	$3, %ecx
	jne	.LBB133_12
# %bb.9:
	movq	%r15, %rdi
	callq	halide_error_host_and_device_dirty@PLT
	testl	%eax, %eax
	jne	.LBB133_18
.LBB133_11:
	movq	8(%rbx), %rax
.LBB133_12:
	testq	%rax, %rax
	je	.LBB133_15
# %bb.13:
	cmpq	%r14, %rax
	je	.LBB133_15
# %bb.14:
	leaq	.L.str.25.99(%rip), %rsi
	movq	%r15, %rdi
	callq	halide_error@PLT
	movl	$-42, %eax
	jmp	.LBB133_18
.LBB133_15:
	movq	120(%r14), %rax
	callq	*(%rax)
	movq	120(%r14), %rax
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*64(%rax)
	movl	%eax, %ebx
	movq	120(%r14), %rax
	callq	*8(%rax)
	testl	%ebx, %ebx
	je	.LBB133_16
# %bb.17:
	leaq	.L.str.26.100(%rip), %rsi
	movq	%r15, %rdi
	callq	halide_error@PLT
	movl	$-16, %eax
	jmp	.LBB133_18
.LBB133_16:
	xorl	%eax, %eax
.LBB133_18:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end133:
	.size	halide_device_and_host_malloc, .Lfunc_end133-halide_device_and_host_malloc
                                        # -- End function
	.section	.text.halide_device_and_host_free,"ax",@progbits
	.weak	halide_device_and_host_free     # -- Begin function halide_device_and_host_free
	.p2align	4, 0x90
	.type	halide_device_and_host_free,@function
halide_device_and_host_free:            # @halide_device_and_host_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r12
	movq	%rdi, %r14
	testq	%rsi, %rsi
	je	.LBB134_1
# %bb.2:
	movq	(%r12), %rax
	movq	8(%r12), %rbx
	testq	%rax, %rax
	je	.LBB134_5
# %bb.3:
	testq	%rbx, %rbx
	jne	.LBB134_5
# %bb.4:
	movq	%r14, %rdi
	callq	halide_error_no_device_interface@PLT
	testl	%eax, %eax
	jne	.LBB134_19
	jmp	.LBB134_11
.LBB134_1:
	leaq	.L.str.27.101(%rip), %rsi
	movq	%r14, %rdi
	callq	halide_error_buffer_is_null@PLT
	testl	%eax, %eax
	jne	.LBB134_19
	jmp	.LBB134_11
.LBB134_5:
	testq	%rbx, %rbx
	je	.LBB134_8
# %bb.6:
	testq	%rax, %rax
	jne	.LBB134_8
# %bb.7:
	movq	%r14, %rdi
	callq	halide_error_device_interface_no_device@PLT
	testl	%eax, %eax
	jne	.LBB134_19
	jmp	.LBB134_11
.LBB134_8:
	movl	24(%r12), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	jne	.LBB134_12
# %bb.9:
	movq	%r14, %rdi
	callq	halide_error_host_and_device_dirty@PLT
	testl	%eax, %eax
	jne	.LBB134_19
.LBB134_11:
	movq	8(%r12), %rbx
.LBB134_12:
	testq	%rbx, %rbx
	je	.LBB134_16
# %bb.13:
	movq	120(%rbx), %rax
	callq	*(%rax)
	movq	120(%rbx), %rax
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*72(%rax)
	movl	%eax, %r15d
	movq	120(%rbx), %rax
	callq	*8(%rax)
	cmpq	$0, (%r12)
	je	.LBB134_15
# %bb.14:
	leaq	.L.str.28.102(%rip), %rsi
	movq	%r14, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB134_15:
	testl	%r15d, %r15d
	movl	$-18, %eax
	cmovel	%r15d, %eax
	jmp	.LBB134_19
.LBB134_16:
	movq	16(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB134_18
# %bb.17:
	movq	%r14, %rdi
	callq	halide_free@PLT
	movq	$0, 16(%r12)
.LBB134_18:
	andb	$-3, 24(%r12)
	xorl	%eax, %eax
.LBB134_19:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end134:
	.size	halide_device_and_host_free, .Lfunc_end134-halide_device_and_host_free
                                        # -- End function
	.section	.text.halide_default_device_and_host_malloc,"ax",@progbits
	.weak	halide_default_device_and_host_malloc # -- Begin function halide_default_device_and_host_malloc
	.p2align	4, 0x90
	.type	halide_default_device_and_host_malloc,@function
halide_default_device_and_host_malloc:  # @halide_default_device_and_host_malloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	testq	%rsi, %rsi
	je	.LBB135_1
# %bb.2:
	movq	(%r12), %rax
	movq	8(%r12), %rcx
	testq	%rax, %rax
	je	.LBB135_5
# %bb.3:
	testq	%rcx, %rcx
	jne	.LBB135_5
# %bb.4:
	movq	%r14, %rdi
	callq	halide_error_no_device_interface@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB135_53
	jmp	.LBB135_11
.LBB135_1:
	leaq	.L.str.29.103(%rip), %rsi
	movq	%r14, %rdi
	callq	halide_error_buffer_is_null@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB135_53
	jmp	.LBB135_11
.LBB135_5:
	testq	%rcx, %rcx
	je	.LBB135_8
# %bb.6:
	testq	%rax, %rax
	jne	.LBB135_8
# %bb.7:
	movq	%r14, %rdi
	callq	halide_error_device_interface_no_device@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB135_53
	jmp	.LBB135_11
.LBB135_8:
	movl	24(%r12), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	jne	.LBB135_11
# %bb.9:
	movq	%r14, %rdi
	callq	halide_error_host_and_device_dirty@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB135_53
.LBB135_11:
	movl	36(%r12), %r10d
	testl	%r10d, %r10d
	jle	.LBB135_12
# %bb.13:
	movq	40(%r12), %r8
	leaq	-1(%r10), %r9
	movl	%r10d, %edi
	andl	$3, %edi
	cmpq	$3, %r9
	jae	.LBB135_30
# %bb.14:
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
.LBB135_15:                             # %.preheader.preheader.unr-lcssa
	testq	%rdi, %rdi
	je	.LBB135_20
# %bb.16:                               # %.epil.preheader.preheader
	shlq	$4, %rbx
	leaq	(%r8,%rbx), %rdx
	addq	$8, %rdx
	jmp	.LBB135_17
	.p2align	4, 0x90
.LBB135_19:                             #   in Loop: Header=BB135_17 Depth=1
	addq	$16, %rdx
	decq	%rdi
	je	.LBB135_20
.LBB135_17:                             # %.epil.preheader
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdx), %ecx
	testl	%ecx, %ecx
	jle	.LBB135_19
# %bb.18:                               #   in Loop: Header=BB135_17 Depth=1
	movslq	-4(%rdx), %rsi
	decq	%rsi
	imulq	%rcx, %rsi
	addq	%rsi, %r13
	jmp	.LBB135_19
.LBB135_20:                             # %.preheader.preheader
	movl	%r10d, %edi
	andl	$3, %edi
	cmpq	$3, %r9
	jae	.LBB135_40
# %bb.21:
	xorl	%ebx, %ebx
	xorl	%esi, %esi
.LBB135_22:                             # %.unr-lcssa
	testq	%rdi, %rdi
	je	.LBB135_27
# %bb.23:                               # %.preheader.epil.preheader
	shlq	$4, %rbx
	leaq	(%r8,%rbx), %rcx
	addq	$8, %rcx
	jmp	.LBB135_24
	.p2align	4, 0x90
.LBB135_26:                             #   in Loop: Header=BB135_24 Depth=1
	addq	$16, %rcx
	decq	%rdi
	je	.LBB135_27
.LBB135_24:                             # %.preheader.epil
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rcx), %rdx
	testq	%rdx, %rdx
	jns	.LBB135_26
# %bb.25:                               #   in Loop: Header=BB135_24 Depth=1
	movslq	-4(%rcx), %rax
	decq	%rax
	imulq	%rdx, %rax
	addq	%rax, %rsi
	jmp	.LBB135_26
.LBB135_27:                             # %.epilog-lcssa
	incq	%r13
	jmp	.LBB135_28
.LBB135_12:
	movl	$1, %r13d
	xorl	%esi, %esi
.LBB135_28:
	subq	%rsi, %r13
	movzbl	33(%r12), %esi
	addq	$7, %rsi
	shrq	$3, %rsi
	imulq	%r13, %rsi
	movq	%r14, %rdi
	callq	halide_malloc@PLT
	movq	%rax, 16(%r12)
	testq	%rax, %rax
	je	.LBB135_29
# %bb.50:
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	halide_device_malloc@PLT
	testl	%eax, %eax
	je	.LBB135_51
# %bb.52:
	movl	%eax, %ebx
	movq	16(%r12), %rsi
	movq	%r14, %rdi
	callq	halide_free@PLT
	movq	$0, 16(%r12)
	jmp	.LBB135_53
.LBB135_29:
	movl	$-1, %ebx
	jmp	.LBB135_53
.LBB135_30:                             # %.new
	movl	%r10d, %r11d
	andl	$-4, %r11d
	leaq	56(%r8), %rsi
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
	jmp	.LBB135_31
	.p2align	4, 0x90
.LBB135_39:                             #   in Loop: Header=BB135_31 Depth=1
	addq	$4, %rbx
	addq	$64, %rsi
	cmpq	%rbx, %r11
	je	.LBB135_15
.LBB135_31:                             # =>This Inner Loop Header: Depth=1
	movl	-48(%rsi), %ecx
	testl	%ecx, %ecx
	jle	.LBB135_33
# %bb.32:                               #   in Loop: Header=BB135_31 Depth=1
	movslq	-52(%rsi), %rdx
	decq	%rdx
	imulq	%rcx, %rdx
	addq	%rdx, %r13
.LBB135_33:                             #   in Loop: Header=BB135_31 Depth=1
	movl	-32(%rsi), %ecx
	testl	%ecx, %ecx
	jle	.LBB135_35
# %bb.34:                               #   in Loop: Header=BB135_31 Depth=1
	movslq	-36(%rsi), %rax
	decq	%rax
	imulq	%rcx, %rax
	addq	%rax, %r13
.LBB135_35:                             #   in Loop: Header=BB135_31 Depth=1
	movl	-16(%rsi), %ecx
	testl	%ecx, %ecx
	jle	.LBB135_37
# %bb.36:                               #   in Loop: Header=BB135_31 Depth=1
	movslq	-20(%rsi), %rax
	decq	%rax
	imulq	%rcx, %rax
	addq	%rax, %r13
.LBB135_37:                             #   in Loop: Header=BB135_31 Depth=1
	movl	(%rsi), %ecx
	testl	%ecx, %ecx
	jle	.LBB135_39
# %bb.38:                               #   in Loop: Header=BB135_31 Depth=1
	movslq	-4(%rsi), %rax
	decq	%rax
	imulq	%rcx, %rax
	addq	%rax, %r13
	jmp	.LBB135_39
.LBB135_40:                             # %.preheader.preheader.new
	andl	$-4, %r10d
	leaq	56(%r8), %rdx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	jmp	.LBB135_41
	.p2align	4, 0x90
.LBB135_49:                             #   in Loop: Header=BB135_41 Depth=1
	addq	$4, %rbx
	addq	$64, %rdx
	cmpq	%rbx, %r10
	je	.LBB135_22
.LBB135_41:                             # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movslq	-48(%rdx), %rcx
	testq	%rcx, %rcx
	js	.LBB135_42
# %bb.43:                               # %.preheader.1
                                        #   in Loop: Header=BB135_41 Depth=1
	movslq	-32(%rdx), %rcx
	testq	%rcx, %rcx
	js	.LBB135_44
.LBB135_45:                             # %.preheader.2
                                        #   in Loop: Header=BB135_41 Depth=1
	movslq	-16(%rdx), %rcx
	testq	%rcx, %rcx
	js	.LBB135_46
.LBB135_47:                             # %.preheader.3
                                        #   in Loop: Header=BB135_41 Depth=1
	movslq	(%rdx), %rcx
	testq	%rcx, %rcx
	jns	.LBB135_49
	jmp	.LBB135_48
	.p2align	4, 0x90
.LBB135_42:                             #   in Loop: Header=BB135_41 Depth=1
	movslq	-52(%rdx), %rax
	decq	%rax
	imulq	%rcx, %rax
	addq	%rax, %rsi
	movslq	-32(%rdx), %rcx
	testq	%rcx, %rcx
	jns	.LBB135_45
.LBB135_44:                             #   in Loop: Header=BB135_41 Depth=1
	movslq	-36(%rdx), %rax
	decq	%rax
	imulq	%rcx, %rax
	addq	%rax, %rsi
	movslq	-16(%rdx), %rcx
	testq	%rcx, %rcx
	jns	.LBB135_47
.LBB135_46:                             #   in Loop: Header=BB135_41 Depth=1
	movslq	-20(%rdx), %rax
	decq	%rax
	imulq	%rcx, %rax
	addq	%rax, %rsi
	movslq	(%rdx), %rcx
	testq	%rcx, %rcx
	jns	.LBB135_49
.LBB135_48:                             #   in Loop: Header=BB135_41 Depth=1
	movslq	-4(%rdx), %rax
	decq	%rax
	imulq	%rcx, %rax
	addq	%rax, %rsi
	jmp	.LBB135_49
.LBB135_51:
	xorl	%ebx, %ebx
.LBB135_53:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end135:
	.size	halide_default_device_and_host_malloc, .Lfunc_end135-halide_default_device_and_host_malloc
                                        # -- End function
	.section	.text.halide_default_device_and_host_free,"ax",@progbits
	.weak	halide_default_device_and_host_free # -- Begin function halide_default_device_and_host_free
	.p2align	4, 0x90
	.type	halide_default_device_and_host_free,@function
halide_default_device_and_host_free:    # @halide_default_device_and_host_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, %r14
	testq	%rsi, %rsi
	je	.LBB136_1
# %bb.2:
	movq	(%r15), %rax
	movq	8(%r15), %rcx
	testq	%rax, %rax
	je	.LBB136_5
# %bb.3:
	testq	%rcx, %rcx
	jne	.LBB136_5
# %bb.4:
	movq	%r14, %rdi
	callq	halide_error_no_device_interface@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB136_14
	jmp	.LBB136_11
.LBB136_1:
	leaq	.L.str.30.104(%rip), %rsi
	movq	%r14, %rdi
	callq	halide_error_buffer_is_null@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB136_14
	jmp	.LBB136_11
.LBB136_5:
	testq	%rcx, %rcx
	je	.LBB136_8
# %bb.6:
	testq	%rax, %rax
	jne	.LBB136_8
# %bb.7:
	movq	%r14, %rdi
	callq	halide_error_device_interface_no_device@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB136_14
	jmp	.LBB136_11
.LBB136_8:
	movl	24(%r15), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	jne	.LBB136_11
# %bb.9:
	movq	%r14, %rdi
	callq	halide_error_host_and_device_dirty@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB136_14
.LBB136_11:                             # %.split1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	halide_device_free@PLT
	movl	%eax, %ebx
	movq	16(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB136_13
# %bb.12:
	movq	%r14, %rdi
	callq	halide_free@PLT
	movq	$0, 16(%r15)
.LBB136_13:
	andb	$-4, 24(%r15)
.LBB136_14:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end136:
	.size	halide_default_device_and_host_free, .Lfunc_end136-halide_default_device_and_host_free
                                        # -- End function
	.section	.text.halide_device_wrap_native,"ax",@progbits
	.weak	halide_device_wrap_native       # -- Begin function halide_device_wrap_native
	.p2align	4, 0x90
	.type	halide_device_wrap_native,@function
halide_device_wrap_native:              # @halide_device_wrap_native
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	testq	%rsi, %rsi
	je	.LBB137_1
# %bb.2:
	movq	(%rbx), %rcx
	movq	8(%rbx), %rax
	testq	%rcx, %rcx
	je	.LBB137_5
# %bb.3:
	testq	%rax, %rax
	jne	.LBB137_5
# %bb.4:
	movq	%r12, %rdi
	callq	halide_error_no_device_interface@PLT
	testl	%eax, %eax
	jne	.LBB137_16
	jmp	.LBB137_11
.LBB137_1:
	leaq	.L.str.31.105(%rip), %rsi
	movq	%r12, %rdi
	callq	halide_error_buffer_is_null@PLT
	testl	%eax, %eax
	jne	.LBB137_16
	jmp	.LBB137_11
.LBB137_5:
	testq	%rax, %rax
	je	.LBB137_8
# %bb.6:
	testq	%rcx, %rcx
	jne	.LBB137_8
# %bb.7:
	movq	%r12, %rdi
	callq	halide_error_device_interface_no_device@PLT
	testl	%eax, %eax
	jne	.LBB137_16
	jmp	.LBB137_11
.LBB137_8:
	movl	24(%rbx), %ecx
	andl	$3, %ecx
	cmpl	$3, %ecx
	jne	.LBB137_12
# %bb.9:
	movq	%r12, %rdi
	callq	halide_error_host_and_device_dirty@PLT
	testl	%eax, %eax
	jne	.LBB137_16
.LBB137_11:
	movq	8(%rbx), %rax
.LBB137_12:
	testq	%rax, %rax
	je	.LBB137_15
# %bb.13:
	cmpq	%r15, %rax
	je	.LBB137_15
# %bb.14:
	leaq	.L.str.32.106(%rip), %rsi
	movq	%r12, %rdi
	callq	halide_error@PLT
	movl	$-42, %eax
	jmp	.LBB137_16
.LBB137_15:
	movq	120(%r15), %rax
	callq	*(%rax)
	movq	%r15, 8(%rbx)
	movq	120(%r15), %rax
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*112(%rax)
	movl	%eax, %ebx
	movq	120(%r15), %rax
	callq	*8(%rax)
	xorl	%eax, %eax
	testl	%ebx, %ebx
	sete	%al
	shll	$4, %eax
	addl	$-16, %eax
.LBB137_16:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end137:
	.size	halide_device_wrap_native, .Lfunc_end137-halide_device_wrap_native
                                        # -- End function
	.section	.text.halide_device_detach_native,"ax",@progbits
	.weak	halide_device_detach_native     # -- Begin function halide_device_detach_native
	.p2align	4, 0x90
	.type	halide_device_detach_native,@function
halide_device_detach_native:            # @halide_device_detach_native
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r12
	movq	%rdi, %r14
	testq	%rsi, %rsi
	je	.LBB138_1
# %bb.2:
	movq	(%r12), %rax
	movq	8(%r12), %rbx
	testq	%rax, %rax
	je	.LBB138_5
# %bb.3:
	testq	%rbx, %rbx
	jne	.LBB138_5
# %bb.4:
	movq	%r14, %rdi
	callq	halide_error_no_device_interface@PLT
	testl	%eax, %eax
	jne	.LBB138_17
	jmp	.LBB138_11
.LBB138_1:
	leaq	.L.str.33.107(%rip), %rsi
	movq	%r14, %rdi
	callq	halide_error_buffer_is_null@PLT
	testl	%eax, %eax
	jne	.LBB138_17
	jmp	.LBB138_11
.LBB138_5:
	testq	%rbx, %rbx
	je	.LBB138_8
# %bb.6:
	testq	%rax, %rax
	jne	.LBB138_8
# %bb.7:
	movq	%r14, %rdi
	callq	halide_error_device_interface_no_device@PLT
	testl	%eax, %eax
	jne	.LBB138_17
	jmp	.LBB138_11
.LBB138_8:
	movl	24(%r12), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	jne	.LBB138_12
# %bb.9:
	movq	%r14, %rdi
	callq	halide_error_host_and_device_dirty@PLT
	testl	%eax, %eax
	jne	.LBB138_17
.LBB138_11:
	movq	8(%r12), %rbx
.LBB138_12:
	testq	%rbx, %rbx
	je	.LBB138_13
# %bb.14:
	movq	120(%rbx), %rax
	callq	*(%rax)
	movq	120(%rbx), %rax
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*120(%rax)
	movl	%eax, %r15d
	movq	120(%rbx), %rax
	callq	*8(%rax)
	cmpq	$0, (%r12)
	je	.LBB138_16
# %bb.15:
	leaq	.L.str.34.108(%rip), %rsi
	movq	%r14, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB138_16:
	testl	%r15d, %r15d
	movl	$-33, %eax
	cmovel	%r15d, %eax
	jmp	.LBB138_17
.LBB138_13:
	xorl	%eax, %eax
.LBB138_17:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end138:
	.size	halide_device_detach_native, .Lfunc_end138-halide_device_detach_native
                                        # -- End function
	.section	.text.halide_default_device_wrap_native,"ax",@progbits
	.weak	halide_default_device_wrap_native # -- Begin function halide_default_device_wrap_native
	.p2align	4, 0x90
	.type	halide_default_device_wrap_native,@function
halide_default_device_wrap_native:      # @halide_default_device_wrap_native
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rsi, %rbx
	testq	%rsi, %rsi
	je	.LBB139_1
# %bb.2:
	movq	(%rbx), %rcx
	movq	8(%rbx), %rax
	testq	%rcx, %rcx
	je	.LBB139_5
# %bb.3:
	testq	%rax, %rax
	jne	.LBB139_5
# %bb.4:
	callq	halide_error_no_device_interface@PLT
	testl	%eax, %eax
	jne	.LBB139_13
	jmp	.LBB139_11
.LBB139_1:
	leaq	.L.str.35.109(%rip), %rsi
	callq	halide_error_buffer_is_null@PLT
	testl	%eax, %eax
	jne	.LBB139_13
	jmp	.LBB139_11
.LBB139_5:
	testq	%rax, %rax
	je	.LBB139_8
# %bb.6:
	testq	%rcx, %rcx
	jne	.LBB139_8
# %bb.7:
	callq	halide_error_device_interface_no_device@PLT
	testl	%eax, %eax
	je	.LBB139_11
.LBB139_13:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB139_8:
	movl	24(%rbx), %ecx
	andl	$3, %ecx
	cmpl	$3, %ecx
	jne	.LBB139_12
# %bb.9:
	callq	halide_error_host_and_device_dirty@PLT
	testl	%eax, %eax
	jne	.LBB139_13
.LBB139_11:
	movq	8(%rbx), %rax
.LBB139_12:
	movq	120(%rax), %rax
	callq	*(%rax)
	movq	%r14, (%rbx)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end139:
	.size	halide_default_device_wrap_native, .Lfunc_end139-halide_default_device_wrap_native
                                        # -- End function
	.section	.text.halide_default_device_detach_native,"ax",@progbits
	.weak	halide_default_device_detach_native # -- Begin function halide_default_device_detach_native
	.p2align	4, 0x90
	.type	halide_default_device_detach_native,@function
halide_default_device_detach_native:    # @halide_default_device_detach_native
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	testq	%rsi, %rsi
	je	.LBB140_1
# %bb.2:
	movq	(%r14), %rax
	movq	8(%r14), %rcx
	testq	%rax, %rax
	je	.LBB140_5
# %bb.3:
	testq	%rcx, %rcx
	jne	.LBB140_5
# %bb.4:
	callq	halide_error_no_device_interface@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB140_14
	jmp	.LBB140_11
.LBB140_1:
	leaq	.L.str.36(%rip), %rsi
	callq	halide_error_buffer_is_null@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB140_14
	jmp	.LBB140_11
.LBB140_5:
	testq	%rcx, %rcx
	je	.LBB140_8
# %bb.6:
	testq	%rax, %rax
	jne	.LBB140_8
# %bb.7:
	callq	halide_error_device_interface_no_device@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB140_14
	jmp	.LBB140_11
.LBB140_8:
	movl	24(%r14), %ecx
	andl	$3, %ecx
	cmpl	$3, %ecx
	jne	.LBB140_12
# %bb.9:
	callq	halide_error_host_and_device_dirty@PLT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB140_14
.LBB140_11:
	movq	(%r14), %rax
.LBB140_12:
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB140_14
# %bb.13:
	movq	8(%r14), %rax
	movq	120(%rax), %rax
	callq	*8(%rax)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r14)
.LBB140_14:
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end140:
	.size	halide_default_device_detach_native, .Lfunc_end140-halide_default_device_detach_native
                                        # -- End function
	.section	.text.halide_device_and_host_free_as_destructor,"ax",@progbits
	.weak	halide_device_and_host_free_as_destructor # -- Begin function halide_device_and_host_free_as_destructor
	.p2align	4, 0x90
	.type	halide_device_and_host_free_as_destructor,@function
halide_device_and_host_free_as_destructor: # @halide_device_and_host_free_as_destructor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	jmp	halide_device_and_host_free@PLT # TAILCALL
.Lfunc_end141:
	.size	halide_device_and_host_free_as_destructor, .Lfunc_end141-halide_device_and_host_free_as_destructor
                                        # -- End function
	.section	.text.halide_device_host_nop_free,"ax",@progbits
	.weak	halide_device_host_nop_free     # -- Begin function halide_device_host_nop_free
	.p2align	4, 0x90
	.type	halide_device_host_nop_free,@function
halide_device_host_nop_free:            # @halide_device_host_nop_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	retq
.Lfunc_end142:
	.size	halide_device_host_nop_free, .Lfunc_end142-halide_device_host_nop_free
                                        # -- End function
	.section	.text.halide_default_buffer_copy,"ax",@progbits
	.weak	halide_default_buffer_copy      # -- Begin function halide_default_buffer_copy
	.p2align	4, 0x90
	.type	halide_default_buffer_copy,@function
halide_default_buffer_copy:             # @halide_default_buffer_copy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-39, %eax
	popq	%rbp
	retq
.Lfunc_end143:
	.size	halide_default_buffer_copy, .Lfunc_end143-halide_default_buffer_copy
                                        # -- End function
	.section	.text.halide_buffer_copy_already_locked,"ax",@progbits
	.weak	halide_buffer_copy_already_locked # -- Begin function halide_buffer_copy_already_locked
	.p2align	4, 0x90
	.type	halide_buffer_copy_already_locked,@function
halide_buffer_copy_already_locked:      # @halide_buffer_copy_already_locked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$456, %rsp                      # imm = 0x1C8
	movq	%rdx, %r13
	movq	%rsi, %rdx
	testq	%r13, %r13
	je	.LBB144_6
# %bb.1:
	movq	8(%rcx), %rax
	testq	%rax, %rax
	je	.LBB144_4
# %bb.2:
	cmpq	%r13, %rax
	je	.LBB144_4
# %bb.3:
	leaq	.L.str.42(%rip), %rsi
	callq	halide_error@PLT
	movl	$-42, %eax
	jmp	.LBB144_39
.LBB144_4:
	cmpq	$0, (%rcx)
	je	.LBB144_5
.LBB144_6:
	cmpq	$0, (%rdx)
	movq	16(%rdx), %rax
	je	.LBB144_10
# %bb.7:
	testq	%rax, %rax
	je	.LBB144_8
# %bb.9:
	movq	24(%rdx), %rax
	movl	%eax, %esi
	andb	$1, %sil
	movb	$1, %r9b
	testb	$2, %al
	jne	.LBB144_15
.LBB144_14:
	xorl	%r8d, %r8d
	jmp	.LBB144_16
.LBB144_10:
	testq	%rax, %rax
	je	.LBB144_11
# %bb.12:                               # %._crit_edge
	movq	24(%rdx), %rax
	movb	$1, %sil
	movb	$1, %r9b
	testb	$2, %al
	je	.LBB144_14
.LBB144_15:
	cmpq	$0, 8(%rdx)
	setne	%r8b
	jmp	.LBB144_16
.LBB144_8:
	movb	$1, %r8b
	xorl	%r9d, %r9d
	xorl	%esi, %esi
	jmp	.LBB144_16
.LBB144_5:
	movq	%rdi, %r12
	movq	%rcx, %rsi
	movq	%rdx, %r15
	movq	%r13, %rdx
	movq	%rcx, %r14
	callq	halide_device_malloc@PLT
	movq	%r12, %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	testl	%eax, %eax
	jne	.LBB144_39
	jmp	.LBB144_6
.LBB144_11:
	movb	$1, %sil
	xorl	%r9d, %r9d
	movb	$1, %r8b
.LBB144_16:
	movq	16(%rcx), %r14
	testq	%r14, %r14
	setne	%r15b
	testq	%r13, %r13
	setne	%bl
	jne	.LBB144_18
# %bb.17:
	movl	$-34, %eax
	testb	%r15b, %r15b
	je	.LBB144_39
.LBB144_18:
	testq	%r13, %r13
	sete	%al
	orb	%sil, %al
	jne	.LBB144_20
# %bb.19:
	movq	120(%r13), %rax
	movq	%r13, %r12
	movq	%rdi, %r13
	movl	%esi, -52(%rbp)                 # 4-byte Spill
	movq	%rdx, %rsi
	movq	%rdx, -64(%rbp)                 # 8-byte Spill
	movq	%r12, %rdx
	movq	%rcx, -72(%rbp)                 # 8-byte Spill
	movl	%r8d, -48(%rbp)                 # 4-byte Spill
	movb	%bl, -41(%rbp)                  # 1-byte Spill
	movl	%r9d, %ebx
	callq	*80(%rax)
	movl	%ebx, %r9d
	movb	-41(%rbp), %bl                  # 1-byte Reload
	movl	-48(%rbp), %r8d                 # 4-byte Reload
	movl	-52(%rbp), %esi                 # 4-byte Reload
	movq	%r13, %rdi
	movq	%r12, %r13
	movq	-64(%rbp), %rdx                 # 8-byte Reload
	movq	-72(%rbp), %rcx                 # 8-byte Reload
	cmpl	$-42, %eax
	jne	.LBB144_33
.LBB144_20:
	orb	%r15b, %r9b
	movl	$-42, %eax
	cmpb	$1, %r9b
	jne	.LBB144_39
# %bb.21:
	orb	%bl, %r8b
	je	.LBB144_22
# %bb.23:
	testq	%r13, %r13
	je	.LBB144_24
# %bb.27:
	testq	%r14, %r14
	sete	%al
	orb	%al, %sil
	je	.LBB144_28
# %bb.30:
	movq	%rdi, %r12
	movq	%rdx, %rsi
	movq	%rcx, %r14
	movq	%rdx, %r15
	callq	_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t@PLT
	testl	%eax, %eax
	jne	.LBB144_39
# %bb.31:
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	120(%r13), %rax
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	*80(%rax)
	jmp	.LBB144_32
.LBB144_22:
	movq	%r13, %rbx
	leaq	-488(%rbp), %r13
	movq	%rdi, %r12
	movq	%r13, %rdi
	movq	%rdx, %rsi
	movq	%rdx, %r15
	movl	$1, %edx
	movq	%rcx, %r14
	movl	$1, %r8d
	callq	_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b@PLT
	movq	%r13, %rdi
	movq	%rbx, %r13
	movq	%r12, %rsi
	callq	_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv@PLT
	movq	%r15, %rdx
	movq	%r14, %rcx
	jmp	.LBB144_34
.LBB144_24:
	movq	8(%rdx), %rax
	movq	120(%rax), %rax
	movq	%rdi, %r12
	movq	%rdx, %rsi
	movq	%rdx, %r15
	xorl	%edx, %edx
	movq	%rcx, %r14
	callq	*80(%rax)
	movq	%r15, %rdx
	movq	%r14, %rcx
	cmpl	$-42, %eax
	jne	.LBB144_33
# %bb.25:
	movq	%r12, %rdi
	movq	%rdx, %rsi
	callq	_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t@PLT
	testl	%eax, %eax
	jne	.LBB144_39
# %bb.26:
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %rdi
	xorl	%edx, %edx
	callq	halide_buffer_copy_already_locked@PLT
	jmp	.LBB144_32
.LBB144_28:
	movq	8(%rdx), %rax
	movq	120(%rax), %rax
	movq	%rdi, %r12
	movq	%rdx, %rsi
	movq	%rdx, %r15
	xorl	%edx, %edx
	movq	%rcx, %r14
	callq	*80(%rax)
	testl	%eax, %eax
	jne	.LBB144_39
# %bb.29:
	movq	%r14, %rsi
	orb	$1, 24(%r14)
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	copy_to_device_already_locked@PLT
.LBB144_32:
	movq	%r15, %rdx
	movq	%r14, %rcx
.LBB144_33:
	testl	%eax, %eax
	jne	.LBB144_39
.LBB144_34:
	xorl	%eax, %eax
	cmpq	%rdx, %rcx
	je	.LBB144_39
# %bb.35:
	movq	24(%rcx), %rdx
	andq	$-4, %rdx
	testq	%r13, %r13
	je	.LBB144_37
# %bb.36:
	orq	$2, %rdx
	jmp	.LBB144_38
.LBB144_37:
	orq	$1, %rdx
.LBB144_38:
	movq	%rdx, 24(%rcx)
.LBB144_39:
	addq	$456, %rsp                      # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end144:
	.size	halide_buffer_copy_already_locked, .Lfunc_end144-halide_buffer_copy_already_locked
                                        # -- End function
	.section	.text.halide_buffer_copy,"ax",@progbits
	.weak	halide_buffer_copy              # -- Begin function halide_buffer_copy
	.p2align	4, 0x90
	.type	halide_buffer_copy,@function
halide_buffer_copy:                     # @halide_buffer_copy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_lock@PLT
	testq	%rbx, %rbx
	je	.LBB145_2
# %bb.1:
	movq	120(%rbx), %rax
	callq	*(%rax)
.LBB145_2:
	movq	8(%r14), %rax
	testq	%rax, %rax
	je	.LBB145_4
# %bb.3:
	movq	120(%rax), %rax
	callq	*(%rax)
.LBB145_4:
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	halide_buffer_copy_already_locked@PLT
	movl	%eax, %r15d
	testq	%rbx, %rbx
	je	.LBB145_6
# %bb.5:
	movq	120(%rbx), %rax
	callq	*8(%rax)
.LBB145_6:
	movq	8(%r14), %rax
	testq	%rax, %rax
	je	.LBB145_8
# %bb.7:
	movq	120(%rax), %rax
	callq	*8(%rax)
.LBB145_8:
	movq	_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_unlock@PLT
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end145:
	.size	halide_buffer_copy, .Lfunc_end145-halide_buffer_copy
                                        # -- End function
	.section	.text.halide_default_device_crop,"ax",@progbits
	.weak	halide_default_device_crop      # -- Begin function halide_default_device_crop
	.p2align	4, 0x90
	.type	halide_default_device_crop,@function
halide_default_device_crop:             # @halide_default_device_crop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	.L.str.58(%rip), %rsi
	callq	halide_error@PLT
	movl	$-40, %eax
	popq	%rbp
	retq
.Lfunc_end146:
	.size	halide_default_device_crop, .Lfunc_end146-halide_default_device_crop
                                        # -- End function
	.section	.text.halide_default_device_slice,"ax",@progbits
	.weak	halide_default_device_slice     # -- Begin function halide_default_device_slice
	.p2align	4, 0x90
	.type	halide_default_device_slice,@function
halide_default_device_slice:            # @halide_default_device_slice
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	.L.str.59(%rip), %rsi
	callq	halide_error@PLT
	movl	$-40, %eax
	popq	%rbp
	retq
.Lfunc_end147:
	.size	halide_default_device_slice, .Lfunc_end147-halide_default_device_slice
                                        # -- End function
	.section	.text.halide_device_crop,"ax",@progbits
	.weak	halide_device_crop              # -- Begin function halide_device_crop
	.p2align	4, 0x90
	.type	halide_device_crop,@function
halide_device_crop:                     # @halide_device_crop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_lock@PLT
	cmpq	$0, (%rbx)
	je	.LBB148_1
# %bb.2:
	cmpq	$0, (%r15)
	je	.LBB148_5
# %bb.3:
	leaq	.L.str.60(%rip), %rsi
	jmp	.LBB148_4
.LBB148_1:
	xorl	%ebx, %ebx
	jmp	.LBB148_8
.LBB148_5:
	movl	36(%rbx), %eax
	cmpl	36(%r15), %eax
	jne	.LBB148_6
# %bb.7:
	movq	8(%rbx), %rax
	movq	120(%rax), %rax
	callq	*(%rax)
	movq	8(%rbx), %rax
	movq	120(%rax), %rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	*88(%rax)
	movl	%eax, %ebx
	jmp	.LBB148_8
.LBB148_6:
	leaq	.L.str.61(%rip), %rsi
.LBB148_4:
	movq	%r14, %rdi
	callq	halide_error@PLT
	movl	$-41, %ebx
.LBB148_8:
	movq	_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_unlock@PLT
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end148:
	.size	halide_device_crop, .Lfunc_end148-halide_device_crop
                                        # -- End function
	.section	.text.halide_device_slice,"ax",@progbits
	.weak	halide_device_slice             # -- Begin function halide_device_slice
	.p2align	4, 0x90
	.type	halide_device_slice,@function
halide_device_slice:                    # @halide_device_slice
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r8, %r13
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_lock@PLT
	cmpq	$0, (%rbx)
	je	.LBB149_1
# %bb.2:
	cmpq	$0, (%r13)
	je	.LBB149_5
# %bb.3:
	leaq	.L.str.60(%rip), %rsi
	jmp	.LBB149_4
.LBB149_1:
	xorl	%ebx, %ebx
	jmp	.LBB149_8
.LBB149_5:
	movl	36(%r13), %eax
	incl	%eax
	cmpl	%eax, 36(%rbx)
	jne	.LBB149_6
# %bb.7:
	movq	8(%rbx), %rax
	movq	120(%rax), %rax
	callq	*(%rax)
	movq	8(%rbx), %rax
	movq	120(%rax), %rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movq	%r13, %r8
	callq	*96(%rax)
	movl	%eax, %ebx
	jmp	.LBB149_8
.LBB149_6:
	leaq	.L.str.64(%rip), %rsi
.LBB149_4:
	movq	%r14, %rdi
	callq	halide_error@PLT
	movl	$-41, %ebx
.LBB149_8:
	movq	_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_unlock@PLT
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end149:
	.size	halide_device_slice, .Lfunc_end149-halide_device_slice
                                        # -- End function
	.section	.text.halide_default_device_release_crop,"ax",@progbits
	.weak	halide_default_device_release_crop # -- Begin function halide_default_device_release_crop
	.p2align	4, 0x90
	.type	halide_default_device_release_crop,@function
halide_default_device_release_crop:     # @halide_default_device_release_crop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	$0, (%rsi)
	je	.LBB150_1
# %bb.2:
	leaq	.L.str.58(%rip), %rsi
	callq	halide_error@PLT
	movl	$-40, %eax
	popq	%rbp
	retq
.LBB150_1:
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end150:
	.size	halide_default_device_release_crop, .Lfunc_end150-halide_default_device_release_crop
                                        # -- End function
	.section	.text.halide_device_release_crop,"ax",@progbits
	.weak	halide_device_release_crop      # -- Begin function halide_device_release_crop
	.p2align	4, 0x90
	.type	halide_device_release_crop,@function
halide_device_release_crop:             # @halide_device_release_crop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	cmpq	$0, (%rsi)
	je	.LBB151_2
# %bb.1:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOTPCREL(%rip), %r15
	movq	%r15, %rdi
	callq	halide_mutex_lock@PLT
	movq	8(%rbx), %r12
	movq	120(%r12), %rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*104(%rax)
	movl	%eax, %r14d
	movq	$0, (%rbx)
	movq	120(%r12), %rax
	callq	*8(%rax)
	movq	$0, 8(%rbx)
	movq	%r15, %rdi
	callq	halide_mutex_unlock@PLT
	movl	%r14d, %eax
	jmp	.LBB151_3
.LBB151_2:
	xorl	%eax, %eax
.LBB151_3:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end151:
	.size	halide_device_release_crop, .Lfunc_end151-halide_device_release_crop
                                        # -- End function
	.section	.text.halide_float16_bits_to_float,"ax",@progbits
	.weak	halide_float16_bits_to_float    # -- Begin function halide_float16_bits_to_float
	.p2align	4, 0x90
	.type	halide_float16_bits_to_float,@function
halide_float16_bits_to_float:           # @halide_float16_bits_to_float
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %ecx
	shrl	$10, %ecx
	andl	$31, %ecx
	movl	%edi, %eax
	andl	$1023, %eax                     # imm = 0x3FF
	je	.LBB152_3
# %bb.1:
	testl	%ecx, %ecx
	jne	.LBB152_3
# %bb.2:
	xorl	%ecx, %ecx
	lzcntl	%eax, %ecx
	xorl	$31, %ecx
	btrl	%ecx, %eax
	movb	$23, %dl
	subb	%cl, %dl
	shlxl	%edx, %eax, %edx
	shll	$23, %ecx
	addl	$864026624, %ecx                # imm = 0x33800000
	movl	%ecx, %eax
	jmp	.LBB152_7
.LBB152_3:
	shll	$13, %eax
	testl	%ecx, %ecx
	je	.LBB152_4
# %bb.5:
	movl	$2139095040, %edx               # imm = 0x7F800000
	cmpl	$31, %ecx
	je	.LBB152_7
# %bb.6:
	shll	$23, %ecx
	addl	$939524096, %ecx                # imm = 0x38000000
	movl	%ecx, %edx
	jmp	.LBB152_7
.LBB152_4:
	xorl	%edx, %edx
.LBB152_7:
	orl	%edx, %eax
	shll	$16, %edi
	andl	$-2147483648, %edi              # imm = 0x80000000
	orl	%eax, %edi
	vmovd	%edi, %xmm0
	popq	%rbp
	retq
.Lfunc_end152:
	.size	halide_float16_bits_to_float, .Lfunc_end152-halide_float16_bits_to_float
                                        # -- End function
	.section	.text.halide_float16_bits_to_double,"ax",@progbits
	.weak	halide_float16_bits_to_double   # -- Begin function halide_float16_bits_to_double
	.p2align	4, 0x90
	.type	halide_float16_bits_to_double,@function
halide_float16_bits_to_double:          # @halide_float16_bits_to_double
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	halide_float16_bits_to_float@PLT
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	popq	%rbp
	retq
.Lfunc_end153:
	.size	halide_float16_bits_to_double, .Lfunc_end153-halide_float16_bits_to_double
                                        # -- End function
	.section	.text.halide_error_bounds_inference_call_failed,"ax",@progbits
	.weak	halide_error_bounds_inference_call_failed # -- Begin function halide_error_bounds_inference_call_failed
	.p2align	4, 0x90
	.type	halide_error_bounds_inference_call_failed,@function
halide_error_bounds_inference_call_failed: # @halide_error_bounds_inference_call_failed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movq	%rsi, %r13
	movq	%rdi, %r15
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB154_1
# %bb.2:                                # %.split2
	leaq	1023(%rbx), %r12
	movb	$0, 1023(%rbx)
	leaq	.L.str.112(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	testq	%r13, %r13
	je	.LBB154_4
.LBB154_5:
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	jmp	.LBB154_6
.LBB154_1:                              # %.split
	leaq	.L.str.112(%rip), %rdx
	xorl	%r12d, %r12d
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r13, %r13
	jne	.LBB154_5
.LBB154_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
.LBB154_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.1.113(%rip), %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r14d, %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	testq	%rbx, %rbx
	je	.LBB154_7
# %bb.8:
	subq	%rbx, %rax
	incq	%rax
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r15, %rdi
	movq	%rbx, %rsi
	jmp	.LBB154_9
.LBB154_7:
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r15, %rdi
.LBB154_9:
	callq	halide_error@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end154:
	.size	halide_error_bounds_inference_call_failed, .Lfunc_end154-halide_error_bounds_inference_call_failed
                                        # -- End function
	.section	.text.halide_error_extern_stage_failed,"ax",@progbits
	.weak	halide_error_extern_stage_failed # -- Begin function halide_error_extern_stage_failed
	.p2align	4, 0x90
	.type	halide_error_extern_stage_failed,@function
halide_error_extern_stage_failed:       # @halide_error_extern_stage_failed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movq	%rsi, %r13
	movq	%rdi, %r15
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB155_1
# %bb.2:                                # %.split2
	leaq	1023(%rbx), %r12
	movb	$0, 1023(%rbx)
	leaq	.L.str.2.114(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	testq	%r13, %r13
	je	.LBB155_4
.LBB155_5:
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	jmp	.LBB155_6
.LBB155_1:                              # %.split
	leaq	.L.str.2.114(%rip), %rdx
	xorl	%r12d, %r12d
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r13, %r13
	jne	.LBB155_5
.LBB155_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
.LBB155_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.1.113(%rip), %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r14d, %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	testq	%rbx, %rbx
	je	.LBB155_7
# %bb.8:
	subq	%rbx, %rax
	incq	%rax
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r15, %rdi
	movq	%rbx, %rsi
	jmp	.LBB155_9
.LBB155_7:
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r15, %rdi
.LBB155_9:
	callq	halide_error@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end155:
	.size	halide_error_extern_stage_failed, .Lfunc_end155-halide_error_extern_stage_failed
                                        # -- End function
	.section	.text.halide_error_explicit_bounds_too_small,"ax",@progbits
	.weak	halide_error_explicit_bounds_too_small # -- Begin function halide_error_explicit_bounds_too_small
	.p2align	4, 0x90
	.type	halide_error_explicit_bounds_too_small,@function
halide_error_explicit_bounds_too_small: # @halide_error_explicit_bounds_too_small
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%r9d, -48(%rbp)                 # 4-byte Spill
	movl	%r8d, -44(%rbp)                 # 4-byte Spill
	movl	%ecx, %r12d
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB156_1
# %bb.2:                                # %.split2
	leaq	1023(%r15), %rbx
	movb	$0, 1023(%r15)
	leaq	.L.str.3.115(%rip), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r13, %r13
	je	.LBB156_4
.LBB156_5:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	jmp	.LBB156_6
.LBB156_1:                              # %.split
	leaq	.L.str.3.115(%rip), %rdx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r13, %r13
	jne	.LBB156_5
.LBB156_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB156_6:
	callq	halide_string_to_string@PLT
	movl	16(%rbp), %r13d
	leaq	.L.str.4.116(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r14, %r14
	je	.LBB156_7
# %bb.8:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	jmp	.LBB156_9
.LBB156_7:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB156_9:
	callq	halide_string_to_string@PLT
	leaq	.L.str.5.117(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r12d, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.6.118(%rip), %r14
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	halide_string_to_string@PLT
	movslq	-44(%rbp), %rdx                 # 4-byte Folded Reload
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.7.119(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	-48(%rbp), %rdx                 # 4-byte Folded Reload
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	halide_string_to_string@PLT
	movslq	%r13d, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.8.120(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	je	.LBB156_10
# %bb.11:
	subq	%r15, %rax
	incq	%rax
	movq	-56(%rbp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%rbx, %rdi
	movq	%r15, %rsi
	jmp	.LBB156_12
.LBB156_10:
	leaq	.L.str.29.165(%rip), %rsi
	movq	-56(%rbp), %rdi                 # 8-byte Reload
.LBB156_12:
	callq	halide_error@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movl	$-2, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end156:
	.size	halide_error_explicit_bounds_too_small, .Lfunc_end156-halide_error_explicit_bounds_too_small
                                        # -- End function
	.section	.text.halide_error_bad_type,"ax",@progbits
	.weak	halide_error_bad_type           # -- Begin function halide_error_bad_type
	.p2align	4, 0x90
	.type	halide_error_bad_type,@function
halide_error_bad_type:                  # @halide_error_bad_type
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	%edx, -56(%rbp)
	movl	%ecx, -52(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -40(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-52(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy@PLT
	leaq	-40(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy@PLT
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB157_1
# %bb.2:
	leaq	1023(%r15), %rbx
	movb	$0, 1023(%r15)
	testq	%r12, %r12
	je	.LBB157_4
.LBB157_5:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	jmp	.LBB157_6
.LBB157_1:
	xorl	%ebx, %ebx
	testq	%r12, %r12
	jne	.LBB157_5
.LBB157_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
.LBB157_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.9.121(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	leaq	-48(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_type_to_string@PLT
	leaq	.L.str.10.122(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	leaq	-40(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_type_to_string@PLT
	testq	%r15, %r15
	je	.LBB157_7
# %bb.8:
	subq	%r15, %rax
	incq	%rax
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r15, %rsi
	jmp	.LBB157_9
.LBB157_7:
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB157_9:
	callq	halide_error@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movl	$-3, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end157:
	.size	halide_error_bad_type, .Lfunc_end157-halide_error_bad_type
                                        # -- End function
	.section	.text.halide_error_bad_dimensions,"ax",@progbits
	.weak	halide_error_bad_dimensions     # -- Begin function halide_error_bad_dimensions
	.p2align	4, 0x90
	.type	halide_error_bad_dimensions,@function
halide_error_bad_dimensions:            # @halide_error_bad_dimensions
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%ecx, %r13d
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.LBB158_1
# %bb.2:
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
	testq	%r14, %r14
	je	.LBB158_4
.LBB158_5:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	jmp	.LBB158_6
.LBB158_1:
	xorl	%ebx, %ebx
	testq	%r14, %r14
	jne	.LBB158_5
.LBB158_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
.LBB158_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.11.123(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r13d, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.12.124(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r15d, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.13.125(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	je	.LBB158_7
# %bb.8:
	subq	%r12, %rax
	incq	%rax
	movq	-48(%rbp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%rbx, %rdi
	movq	%r12, %rsi
	jmp	.LBB158_9
.LBB158_7:
	leaq	.L.str.29.165(%rip), %rsi
	movq	-48(%rbp), %rdi                 # 8-byte Reload
.LBB158_9:
	callq	halide_error@PLT
	movq	%r12, %rdi
	callq	free@PLT
	movl	$-43, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end158:
	.size	halide_error_bad_dimensions, .Lfunc_end158-halide_error_bad_dimensions
                                        # -- End function
	.section	.text.halide_error_access_out_of_bounds,"ax",@progbits
	.weak	halide_error_access_out_of_bounds # -- Begin function halide_error_access_out_of_bounds
	.p2align	4, 0x90
	.type	halide_error_access_out_of_bounds,@function
halide_error_access_out_of_bounds:      # @halide_error_access_out_of_bounds
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r14
	cmpl	%r9d, %ecx
	jge	.LBB159_10
# %bb.1:
	movl	%r9d, %r12d
	movl	%ecx, %r15d
	movl	%edx, -44(%rbp)                 # 4-byte Spill
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LBB159_2
# %bb.3:
	leaq	1023(%r13), %rbx
	movb	$0, 1023(%r13)
	testq	%r14, %r14
	je	.LBB159_5
.LBB159_6:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	jmp	.LBB159_7
.LBB159_10:
	movl	%r8d, %ebx
	movl	16(%rbp), %r12d
	cmpl	%r12d, %r8d
	jle	.LBB159_20
# %bb.11:
	movl	%edx, -44(%rbp)                 # 4-byte Spill
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LBB159_12
# %bb.13:
	leaq	1023(%r13), %r15
	movb	$0, 1023(%r13)
	testq	%r14, %r14
	je	.LBB159_15
.LBB159_16:
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	jmp	.LBB159_17
.LBB159_2:
	xorl	%ebx, %ebx
	testq	%r14, %r14
	jne	.LBB159_6
.LBB159_5:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%r13, %rdi
	movq	%rbx, %rsi
.LBB159_7:
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	leaq	.L.str.14.126(%rip), %rdx
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r15d, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.15.127(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r12d, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.16.128(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	-44(%rbp), %rdx                 # 4-byte Folded Reload
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	testq	%r13, %r13
	je	.LBB159_9
.LBB159_18:
	subq	%r13, %rax
	incq	%rax
	movq	-56(%rbp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	halide_error@PLT
	jmp	.LBB159_19
.LBB159_12:
	xorl	%r15d, %r15d
	testq	%r14, %r14
	jne	.LBB159_16
.LBB159_15:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%r13, %rdi
	movq	%r15, %rsi
.LBB159_17:
	callq	halide_string_to_string@PLT
	leaq	.L.str.14.126(%rip), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	movslq	%ebx, %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.17.129(%rip), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r12d, %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.16.128(%rip), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	movslq	-44(%rbp), %rdx                 # 4-byte Folded Reload
	movq	%rax, %rdi
	movq	%r15, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	testq	%r13, %r13
	jne	.LBB159_18
.LBB159_9:
	leaq	.L.str.29.165(%rip), %rsi
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	callq	halide_error@PLT
	xorl	%r13d, %r13d
.LBB159_19:
	movq	%r13, %rdi
	callq	free@PLT
.LBB159_20:
	movl	$-4, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end159:
	.size	halide_error_access_out_of_bounds, .Lfunc_end159-halide_error_access_out_of_bounds
                                        # -- End function
	.section	.text.halide_error_buffer_allocation_too_large,"ax",@progbits
	.weak	halide_error_buffer_allocation_too_large # -- Begin function halide_error_buffer_allocation_too_large
	.p2align	4, 0x90
	.type	halide_error_buffer_allocation_too_large,@function
halide_error_buffer_allocation_too_large: # @halide_error_buffer_allocation_too_large
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LBB160_1
# %bb.2:                                # %.split2
	leaq	1023(%r13), %rbx
	movb	$0, 1023(%r13)
	leaq	.L.str.18.130(%rip), %rdx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	je	.LBB160_4
.LBB160_5:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	jmp	.LBB160_6
.LBB160_1:                              # %.split
	leaq	.L.str.18.130(%rip), %rdx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	jne	.LBB160_5
.LBB160_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB160_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.19.131(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movl	$1, %ecx
	callq	halide_uint64_to_string@PLT
	leaq	.L.str.20.132(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	-48(%rbp), %rdx                 # 8-byte Reload
	movl	$1, %ecx
	callq	halide_uint64_to_string@PLT
	testq	%r13, %r13
	je	.LBB160_7
# %bb.8:
	subq	%r13, %rax
	incq	%rax
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r13, %rsi
	jmp	.LBB160_9
.LBB160_7:
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB160_9:
	callq	halide_error@PLT
	movq	%r13, %rdi
	callq	free@PLT
	movl	$-5, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end160:
	.size	halide_error_buffer_allocation_too_large, .Lfunc_end160-halide_error_buffer_allocation_too_large
                                        # -- End function
	.section	.text.halide_error_buffer_extents_negative,"ax",@progbits
	.weak	halide_error_buffer_extents_negative # -- Begin function halide_error_buffer_extents_negative
	.p2align	4, 0x90
	.type	halide_error_buffer_extents_negative,@function
halide_error_buffer_extents_negative:   # @halide_error_buffer_extents_negative
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%ecx, -44(%rbp)                 # 4-byte Spill
	movl	%edx, %r13d
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.LBB161_1
# %bb.2:                                # %.split2
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
	leaq	.L.str.21.133(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	je	.LBB161_4
.LBB161_5:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	jmp	.LBB161_6
.LBB161_1:                              # %.split
	leaq	.L.str.21.133(%rip), %rdx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	jne	.LBB161_5
.LBB161_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB161_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.22.134(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r13d, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.23.135(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	-44(%rbp), %rdx                 # 4-byte Folded Reload
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.8.120(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	je	.LBB161_7
# %bb.8:
	subq	%r12, %rax
	incq	%rax
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	jmp	.LBB161_9
.LBB161_7:
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB161_9:
	callq	halide_error@PLT
	movq	%r12, %rdi
	callq	free@PLT
	movl	$-28, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end161:
	.size	halide_error_buffer_extents_negative, .Lfunc_end161-halide_error_buffer_extents_negative
                                        # -- End function
	.section	.text.halide_error_buffer_extents_too_large,"ax",@progbits
	.weak	halide_error_buffer_extents_too_large # -- Begin function halide_error_buffer_extents_too_large
	.p2align	4, 0x90
	.type	halide_error_buffer_extents_too_large,@function
halide_error_buffer_extents_too_large:  # @halide_error_buffer_extents_too_large
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LBB162_1
# %bb.2:                                # %.split2
	leaq	1023(%r13), %rbx
	movb	$0, 1023(%r13)
	leaq	.L.str.24.136(%rip), %rdx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	je	.LBB162_4
.LBB162_5:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	jmp	.LBB162_6
.LBB162_1:                              # %.split
	leaq	.L.str.24.136(%rip), %rdx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	jne	.LBB162_5
.LBB162_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB162_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.19.131(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.20.132(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	-48(%rbp), %rdx                 # 8-byte Reload
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	testq	%r13, %r13
	je	.LBB162_7
# %bb.8:
	subq	%r13, %rax
	incq	%rax
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r13, %rsi
	jmp	.LBB162_9
.LBB162_7:
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB162_9:
	callq	halide_error@PLT
	movq	%r13, %rdi
	callq	free@PLT
	movl	$-6, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end162:
	.size	halide_error_buffer_extents_too_large, .Lfunc_end162-halide_error_buffer_extents_too_large
                                        # -- End function
	.section	.text.halide_error_constraints_make_required_region_smaller,"ax",@progbits
	.weak	halide_error_constraints_make_required_region_smaller # -- Begin function halide_error_constraints_make_required_region_smaller
	.p2align	4, 0x90
	.type	halide_error_constraints_make_required_region_smaller,@function
halide_error_constraints_make_required_region_smaller: # @halide_error_constraints_make_required_region_smaller
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%r9d, %r13d
	movl	%r8d, %r14d
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, -72(%rbp)                 # 8-byte Spill
	movl	%edx, -48(%rbp)                 # 4-byte Spill
	movq	%rsi, %r12
	movq	%rdi, -64(%rbp)                 # 8-byte Spill
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB163_1
# %bb.2:                                # %.split2
	leaq	1023(%r15), %rbx
	movb	$0, 1023(%r15)
	leaq	.L.str.25.137(%rip), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	jmp	.LBB163_3
.LBB163_1:                              # %.split
	leaq	.L.str.25.137(%rip), %rdx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%esi, %esi
.LBB163_3:
	callq	halide_string_to_string@PLT
	movl	16(%rbp), %ecx
	addl	%r13d, %ecx
	decl	%ecx
	movl	%ecx, -44(%rbp)                 # 4-byte Spill
	movq	-72(%rbp), %rcx                 # 8-byte Reload
	addl	%r14d, %ecx
	decl	%ecx
	movl	%ecx, -52(%rbp)                 # 4-byte Spill
	testq	%r12, %r12
	je	.LBB163_4
# %bb.5:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	jmp	.LBB163_6
.LBB163_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB163_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.26.138(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	-48(%rbp), %rdx                 # 4-byte Folded Reload
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.27.139(%rip), %r14
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.28.140(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r13d, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.6.118(%rip), %r12
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	halide_string_to_string@PLT
	movslq	-44(%rbp), %rdx                 # 4-byte Folded Reload
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.29.141(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	-72(%rbp), %rdx                 # 4-byte Folded Reload
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	halide_string_to_string@PLT
	movslq	-52(%rbp), %rdx                 # 4-byte Folded Reload
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.30.142(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	je	.LBB163_7
# %bb.8:
	subq	%r15, %rax
	incq	%rax
	movq	-64(%rbp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%rbx, %rdi
	movq	%r15, %rsi
	jmp	.LBB163_9
.LBB163_7:
	leaq	.L.str.29.165(%rip), %rsi
	movq	-64(%rbp), %rdi                 # 8-byte Reload
.LBB163_9:
	callq	halide_error@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movl	$-7, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end163:
	.size	halide_error_constraints_make_required_region_smaller, .Lfunc_end163-halide_error_constraints_make_required_region_smaller
                                        # -- End function
	.section	.text.halide_error_constraint_violated,"ax",@progbits
	.weak	halide_error_constraint_violated # -- Begin function halide_error_constraint_violated
	.p2align	4, 0x90
	.type	halide_error_constraint_violated,@function
halide_error_constraint_violated:       # @halide_error_constraint_violated
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%r8d, -44(%rbp)                 # 4-byte Spill
	movq	%rcx, %r13
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.LBB164_1
# %bb.2:                                # %.split2
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
	leaq	.L.str.31.143(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r14, %r14
	je	.LBB164_4
.LBB164_5:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	jmp	.LBB164_6
.LBB164_1:                              # %.split
	leaq	.L.str.31.143(%rip), %rdx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r14, %r14
	jne	.LBB164_5
.LBB164_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB164_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.32.144(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r15d, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.33.145(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r13, %r13
	je	.LBB164_7
# %bb.8:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	jmp	.LBB164_9
.LBB164_7:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB164_9:
	callq	halide_string_to_string@PLT
	leaq	.L.str.32.144(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	-44(%rbp), %rdx                 # 4-byte Folded Reload
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.8.120(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	je	.LBB164_10
# %bb.11:
	subq	%r12, %rax
	incq	%rax
	movq	-56(%rbp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%rbx, %rdi
	movq	%r12, %rsi
	jmp	.LBB164_12
.LBB164_10:
	leaq	.L.str.29.165(%rip), %rsi
	movq	-56(%rbp), %rdi                 # 8-byte Reload
.LBB164_12:
	callq	halide_error@PLT
	movq	%r12, %rdi
	callq	free@PLT
	movl	$-8, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end164:
	.size	halide_error_constraint_violated, .Lfunc_end164-halide_error_constraint_violated
                                        # -- End function
	.section	.text.halide_error_param_too_small_i64,"ax",@progbits
	.weak	halide_error_param_too_small_i64 # -- Begin function halide_error_param_too_small_i64
	.p2align	4, 0x90
	.type	halide_error_param_too_small_i64,@function
halide_error_param_too_small_i64:       # @halide_error_param_too_small_i64
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LBB165_1
# %bb.2:                                # %.split2
	leaq	1023(%r13), %rbx
	movb	$0, 1023(%r13)
	leaq	.L.str.34.146(%rip), %rdx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	je	.LBB165_4
.LBB165_5:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	jmp	.LBB165_6
.LBB165_1:                              # %.split
	leaq	.L.str.34.146(%rip), %rdx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	jne	.LBB165_5
.LBB165_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB165_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.19.131(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.35.147(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	-48(%rbp), %rdx                 # 8-byte Reload
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	testq	%r13, %r13
	je	.LBB165_7
# %bb.8:
	subq	%r13, %rax
	incq	%rax
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r13, %rsi
	jmp	.LBB165_9
.LBB165_7:
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB165_9:
	callq	halide_error@PLT
	movq	%r13, %rdi
	callq	free@PLT
	movl	$-9, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end165:
	.size	halide_error_param_too_small_i64, .Lfunc_end165-halide_error_param_too_small_i64
                                        # -- End function
	.section	.text.halide_error_param_too_small_u64,"ax",@progbits
	.weak	halide_error_param_too_small_u64 # -- Begin function halide_error_param_too_small_u64
	.p2align	4, 0x90
	.type	halide_error_param_too_small_u64,@function
halide_error_param_too_small_u64:       # @halide_error_param_too_small_u64
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LBB166_1
# %bb.2:                                # %.split2
	leaq	1023(%r13), %rbx
	movb	$0, 1023(%r13)
	leaq	.L.str.34.146(%rip), %rdx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	je	.LBB166_4
.LBB166_5:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	jmp	.LBB166_6
.LBB166_1:                              # %.split
	leaq	.L.str.34.146(%rip), %rdx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	jne	.LBB166_5
.LBB166_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB166_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.19.131(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movl	$1, %ecx
	callq	halide_uint64_to_string@PLT
	leaq	.L.str.35.147(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	-48(%rbp), %rdx                 # 8-byte Reload
	movl	$1, %ecx
	callq	halide_uint64_to_string@PLT
	testq	%r13, %r13
	je	.LBB166_7
# %bb.8:
	subq	%r13, %rax
	incq	%rax
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r13, %rsi
	jmp	.LBB166_9
.LBB166_7:
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB166_9:
	callq	halide_error@PLT
	movq	%r13, %rdi
	callq	free@PLT
	movl	$-9, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end166:
	.size	halide_error_param_too_small_u64, .Lfunc_end166-halide_error_param_too_small_u64
                                        # -- End function
	.section	.text.halide_error_param_too_small_f64,"ax",@progbits
	.weak	halide_error_param_too_small_f64 # -- Begin function halide_error_param_too_small_f64
	.p2align	4, 0x90
	.type	halide_error_param_too_small_f64,@function
halide_error_param_too_small_f64:       # @halide_error_param_too_small_f64
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	vmovsd	%xmm1, -48(%rbp)                # 8-byte Spill
	vmovsd	%xmm0, -40(%rbp)                # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB167_1
# %bb.2:                                # %.split2
	leaq	1023(%r15), %rbx
	movb	$0, 1023(%r15)
	leaq	.L.str.34.146(%rip), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	je	.LBB167_4
.LBB167_5:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	jmp	.LBB167_6
.LBB167_1:                              # %.split
	leaq	.L.str.34.146(%rip), %rdx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	jne	.LBB167_5
.LBB167_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB167_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.19.131(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	vmovsd	-40(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$1, %edx
	callq	halide_double_to_string@PLT
	leaq	.L.str.35.147(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	vmovsd	-48(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$1, %edx
	callq	halide_double_to_string@PLT
	testq	%r15, %r15
	je	.LBB167_7
# %bb.8:
	subq	%r15, %rax
	incq	%rax
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r15, %rsi
	jmp	.LBB167_9
.LBB167_7:
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB167_9:
	callq	halide_error@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movl	$-9, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end167:
	.size	halide_error_param_too_small_f64, .Lfunc_end167-halide_error_param_too_small_f64
                                        # -- End function
	.section	.text.halide_error_param_too_large_i64,"ax",@progbits
	.weak	halide_error_param_too_large_i64 # -- Begin function halide_error_param_too_large_i64
	.p2align	4, 0x90
	.type	halide_error_param_too_large_i64,@function
halide_error_param_too_large_i64:       # @halide_error_param_too_large_i64
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LBB168_1
# %bb.2:                                # %.split2
	leaq	1023(%r13), %rbx
	movb	$0, 1023(%r13)
	leaq	.L.str.34.146(%rip), %rdx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	je	.LBB168_4
.LBB168_5:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	jmp	.LBB168_6
.LBB168_1:                              # %.split
	leaq	.L.str.34.146(%rip), %rdx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	jne	.LBB168_5
.LBB168_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB168_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.19.131(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.36.148(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	-48(%rbp), %rdx                 # 8-byte Reload
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	testq	%r13, %r13
	je	.LBB168_7
# %bb.8:
	subq	%r13, %rax
	incq	%rax
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r13, %rsi
	jmp	.LBB168_9
.LBB168_7:
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB168_9:
	callq	halide_error@PLT
	movq	%r13, %rdi
	callq	free@PLT
	movl	$-10, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end168:
	.size	halide_error_param_too_large_i64, .Lfunc_end168-halide_error_param_too_large_i64
                                        # -- End function
	.section	.text.halide_error_param_too_large_u64,"ax",@progbits
	.weak	halide_error_param_too_large_u64 # -- Begin function halide_error_param_too_large_u64
	.p2align	4, 0x90
	.type	halide_error_param_too_large_u64,@function
halide_error_param_too_large_u64:       # @halide_error_param_too_large_u64
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LBB169_1
# %bb.2:                                # %.split2
	leaq	1023(%r13), %rbx
	movb	$0, 1023(%r13)
	leaq	.L.str.34.146(%rip), %rdx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	je	.LBB169_4
.LBB169_5:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	jmp	.LBB169_6
.LBB169_1:                              # %.split
	leaq	.L.str.34.146(%rip), %rdx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	jne	.LBB169_5
.LBB169_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB169_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.19.131(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movl	$1, %ecx
	callq	halide_uint64_to_string@PLT
	leaq	.L.str.36.148(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	-48(%rbp), %rdx                 # 8-byte Reload
	movl	$1, %ecx
	callq	halide_uint64_to_string@PLT
	testq	%r13, %r13
	je	.LBB169_7
# %bb.8:
	subq	%r13, %rax
	incq	%rax
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r13, %rsi
	jmp	.LBB169_9
.LBB169_7:
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB169_9:
	callq	halide_error@PLT
	movq	%r13, %rdi
	callq	free@PLT
	movl	$-10, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end169:
	.size	halide_error_param_too_large_u64, .Lfunc_end169-halide_error_param_too_large_u64
                                        # -- End function
	.section	.text.halide_error_param_too_large_f64,"ax",@progbits
	.weak	halide_error_param_too_large_f64 # -- Begin function halide_error_param_too_large_f64
	.p2align	4, 0x90
	.type	halide_error_param_too_large_f64,@function
halide_error_param_too_large_f64:       # @halide_error_param_too_large_f64
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	vmovsd	%xmm1, -48(%rbp)                # 8-byte Spill
	vmovsd	%xmm0, -40(%rbp)                # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB170_1
# %bb.2:                                # %.split2
	leaq	1023(%r15), %rbx
	movb	$0, 1023(%r15)
	leaq	.L.str.34.146(%rip), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	je	.LBB170_4
.LBB170_5:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	jmp	.LBB170_6
.LBB170_1:                              # %.split
	leaq	.L.str.34.146(%rip), %rdx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	jne	.LBB170_5
.LBB170_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB170_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.19.131(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	vmovsd	-40(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$1, %edx
	callq	halide_double_to_string@PLT
	leaq	.L.str.36.148(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	vmovsd	-48(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$1, %edx
	callq	halide_double_to_string@PLT
	testq	%r15, %r15
	je	.LBB170_7
# %bb.8:
	subq	%r15, %rax
	incq	%rax
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r15, %rsi
	jmp	.LBB170_9
.LBB170_7:
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB170_9:
	callq	halide_error@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movl	$-10, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end170:
	.size	halide_error_param_too_large_f64, .Lfunc_end170-halide_error_param_too_large_f64
                                        # -- End function
	.section	.text.halide_error_out_of_memory,"ax",@progbits
	.weak	halide_error_out_of_memory      # -- Begin function halide_error_out_of_memory
	.p2align	4, 0x90
	.type	halide_error_out_of_memory,@function
halide_error_out_of_memory:             # @halide_error_out_of_memory
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	.L.str.37(%rip), %rsi
	callq	halide_error@PLT
	movl	$-11, %eax
	popq	%rbp
	retq
.Lfunc_end171:
	.size	halide_error_out_of_memory, .Lfunc_end171-halide_error_out_of_memory
                                        # -- End function
	.section	.text.halide_error_buffer_argument_is_null,"ax",@progbits
	.weak	halide_error_buffer_argument_is_null # -- Begin function halide_error_buffer_argument_is_null
	.p2align	4, 0x90
	.type	halide_error_buffer_argument_is_null,@function
halide_error_buffer_argument_is_null:   # @halide_error_buffer_argument_is_null
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB172_1
# %bb.2:                                # %.split2
	leaq	1023(%rbx), %r15
	movb	$0, 1023(%rbx)
	leaq	.L.str.38(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	je	.LBB172_4
.LBB172_5:
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	jmp	.LBB172_6
.LBB172_1:                              # %.split
	leaq	.L.str.38(%rip), %rdx
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	jne	.LBB172_5
.LBB172_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
.LBB172_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.39(%rip), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	testq	%rbx, %rbx
	je	.LBB172_7
# %bb.8:
	subq	%rbx, %rax
	incq	%rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB172_9
.LBB172_7:
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB172_9:
	callq	halide_error@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	movl	$-12, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end172:
	.size	halide_error_buffer_argument_is_null, .Lfunc_end172-halide_error_buffer_argument_is_null
                                        # -- End function
	.section	.text.halide_error_debug_to_file_failed,"ax",@progbits
	.weak	halide_error_debug_to_file_failed # -- Begin function halide_error_debug_to_file_failed
	.p2align	4, 0x90
	.type	halide_error_debug_to_file_failed,@function
halide_error_debug_to_file_failed:      # @halide_error_debug_to_file_failed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%ecx, -44(%rbp)                 # 4-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.LBB173_1
# %bb.2:                                # %.split2
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
	leaq	.L.str.40(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	je	.LBB173_4
.LBB173_5:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	jmp	.LBB173_6
.LBB173_1:                              # %.split
	leaq	.L.str.40(%rip), %rdx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	jne	.LBB173_5
.LBB173_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB173_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.41(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r13, %r13
	je	.LBB173_7
# %bb.8:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	jmp	.LBB173_9
.LBB173_7:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB173_9:
	callq	halide_string_to_string@PLT
	leaq	.L.str.42.149(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	-44(%rbp), %rdx                 # 4-byte Folded Reload
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	testq	%r12, %r12
	je	.LBB173_10
# %bb.11:
	subq	%r12, %rax
	incq	%rax
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	jmp	.LBB173_12
.LBB173_10:
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB173_12:
	callq	halide_error@PLT
	movq	%r12, %rdi
	callq	free@PLT
	movl	$-13, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end173:
	.size	halide_error_debug_to_file_failed, .Lfunc_end173-halide_error_debug_to_file_failed
                                        # -- End function
	.section	.text.halide_error_unaligned_host_ptr,"ax",@progbits
	.weak	halide_error_unaligned_host_ptr # -- Begin function halide_error_unaligned_host_ptr
	.p2align	4, 0x90
	.type	halide_error_unaligned_host_ptr,@function
halide_error_unaligned_host_ptr:        # @halide_error_unaligned_host_ptr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r15d
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.LBB174_1
# %bb.2:                                # %.split2
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
	leaq	.L.str.43(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r13, %r13
	je	.LBB174_4
.LBB174_5:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	jmp	.LBB174_6
.LBB174_1:                              # %.split
	leaq	.L.str.43(%rip), %rdx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r13, %r13
	jne	.LBB174_5
.LBB174_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB174_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.44(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r15d, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.45(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	je	.LBB174_7
# %bb.8:
	subq	%r12, %rax
	incq	%rax
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	jmp	.LBB174_9
.LBB174_7:
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB174_9:
	callq	halide_error@PLT
	movq	%r12, %rdi
	callq	free@PLT
	movl	$-24, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end174:
	.size	halide_error_unaligned_host_ptr, .Lfunc_end174-halide_error_unaligned_host_ptr
                                        # -- End function
	.section	.text.halide_error_device_dirty_with_no_device_support,"ax",@progbits
	.weak	halide_error_device_dirty_with_no_device_support # -- Begin function halide_error_device_dirty_with_no_device_support
	.p2align	4, 0x90
	.type	halide_error_device_dirty_with_no_device_support,@function
halide_error_device_dirty_with_no_device_support: # @halide_error_device_dirty_with_no_device_support
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB175_1
# %bb.2:                                # %.split2
	leaq	1023(%rbx), %r15
	movb	$0, 1023(%rbx)
	leaq	.L.str.46(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	je	.LBB175_4
.LBB175_5:
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	jmp	.LBB175_6
.LBB175_1:                              # %.split
	leaq	.L.str.46(%rip), %rdx
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	jne	.LBB175_5
.LBB175_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
.LBB175_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.47(%rip), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	leaq	.L.str.48(%rip), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	testq	%rbx, %rbx
	je	.LBB175_7
# %bb.8:
	subq	%rbx, %rax
	incq	%rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB175_9
.LBB175_7:
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB175_9:
	callq	halide_error@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	movl	$-44, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end175:
	.size	halide_error_device_dirty_with_no_device_support, .Lfunc_end175-halide_error_device_dirty_with_no_device_support
                                        # -- End function
	.section	.text.halide_error_host_is_null,"ax",@progbits
	.weak	halide_error_host_is_null       # -- Begin function halide_error_host_is_null
	.p2align	4, 0x90
	.type	halide_error_host_is_null,@function
halide_error_host_is_null:              # @halide_error_host_is_null
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB176_1
# %bb.2:                                # %.split2
	leaq	1023(%rbx), %r15
	movb	$0, 1023(%rbx)
	leaq	.L.str.43(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	je	.LBB176_4
.LBB176_5:
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	jmp	.LBB176_6
.LBB176_1:                              # %.split
	leaq	.L.str.43(%rip), %rdx
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	jne	.LBB176_5
.LBB176_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
.LBB176_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.49(%rip), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	testq	%rbx, %rbx
	je	.LBB176_7
# %bb.8:
	subq	%rbx, %rax
	incq	%rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB176_9
.LBB176_7:
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB176_9:
	callq	halide_error@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	movl	$-34, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end176:
	.size	halide_error_host_is_null, .Lfunc_end176-halide_error_host_is_null
                                        # -- End function
	.section	.text.halide_error_bad_fold,"ax",@progbits
	.weak	halide_error_bad_fold           # -- Begin function halide_error_bad_fold
	.p2align	4, 0x90
	.type	halide_error_bad_fold,@function
halide_error_bad_fold:                  # @halide_error_bad_fold
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB177_1
# %bb.2:                                # %.split2
	leaq	1023(%r15), %rbx
	movb	$0, 1023(%r15)
	leaq	.L.str.50(%rip), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r14, %r14
	je	.LBB177_4
.LBB177_5:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	jmp	.LBB177_6
.LBB177_1:                              # %.split
	leaq	.L.str.50(%rip), %rdx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r14, %r14
	jne	.LBB177_5
.LBB177_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB177_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.51(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r13, %r13
	je	.LBB177_7
# %bb.8:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	jmp	.LBB177_9
.LBB177_7:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB177_9:
	callq	halide_string_to_string@PLT
	leaq	.L.str.52(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	je	.LBB177_10
# %bb.11:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	jmp	.LBB177_12
.LBB177_10:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB177_12:
	callq	halide_string_to_string@PLT
	leaq	.L.str.30.142(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	je	.LBB177_13
# %bb.14:
	subq	%r15, %rax
	incq	%rax
	movq	-48(%rbp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%rbx, %rdi
	movq	%r15, %rsi
	jmp	.LBB177_15
.LBB177_13:
	leaq	.L.str.29.165(%rip), %rsi
	movq	-48(%rbp), %rdi                 # 8-byte Reload
.LBB177_15:
	callq	halide_error@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movl	$-25, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end177:
	.size	halide_error_bad_fold, .Lfunc_end177-halide_error_bad_fold
                                        # -- End function
	.section	.text.halide_error_bad_extern_fold,"ax",@progbits
	.weak	halide_error_bad_extern_fold    # -- Begin function halide_error_bad_extern_fold
	.p2align	4, 0x90
	.type	halide_error_bad_extern_fold,@function
halide_error_bad_extern_fold:           # @halide_error_bad_extern_fold
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%r9d, %r12d
                                        # kill: def $r8d killed $r8d def $r8
	movl	%ecx, %r15d
	movq	%rdi, %rbx
	movl	16(%rbp), %eax
	cmpl	%r9d, %ecx
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	jl	.LBB178_2
# %bb.1:
	leal	(%r8,%r15), %ecx
	addl	%r12d, %eax
	cmpl	%eax, %ecx
	jle	.LBB178_11
.LBB178_2:
	movq	%r15, -64(%rbp)                 # 8-byte Spill
	movl	%edx, %r15d
	movq	%r8, -56(%rbp)                  # 8-byte Spill
	movq	%rsi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LBB178_3
# %bb.4:                                # %.split2
	leaq	1023(%r13), %rbx
	movb	$0, 1023(%r13)
	leaq	.L.str.53(%rip), %rdx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	jmp	.LBB178_5
.LBB178_3:                              # %.split
	leaq	.L.str.53(%rip), %rdx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%esi, %esi
.LBB178_5:
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movslq	%r15d, %rdx
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.51(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r14, %r14
	je	.LBB178_6
# %bb.7:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	jmp	.LBB178_8
.LBB178_6:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB178_8:
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	-64(%rbp), %r15                 # 8-byte Reload
	leaq	.L.str.54(%rip), %rdx
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r15d, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.55(%rip), %r14
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	halide_string_to_string@PLT
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	addl	%r15d, %ecx
	decl	%ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.56(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	leaq	.L.str.57.150(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r12d, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	halide_string_to_string@PLT
	movl	16(%rbp), %ecx
	addl	%r12d, %ecx
	decl	%ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.58.151(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r13, %r13
	je	.LBB178_9
# %bb.10:
	subq	%r13, %rax
	incq	%rax
	movq	-48(%rbp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%rbx, %rdi
	jmp	.LBB178_19
.LBB178_11:
	movl	%edx, %r12d
	movl	%ecx, -56(%rbp)                 # 4-byte Spill
	movq	%rsi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LBB178_12
# %bb.13:                               # %.split5
	leaq	1023(%r13), %rbx
	movb	$0, 1023(%r13)
	leaq	.L.str.53(%rip), %rdx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	jmp	.LBB178_14
.LBB178_12:                             # %.split3
	leaq	.L.str.53(%rip), %rdx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%esi, %esi
.LBB178_14:
	callq	halide_string_to_string@PLT
	movslq	%r12d, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.51(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	testq	%r14, %r14
	je	.LBB178_15
# %bb.16:
	movq	%r14, %rdx
	jmp	.LBB178_17
.LBB178_15:
	leaq	.L.str.30.166(%rip), %rdx
.LBB178_17:
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	leaq	.L.str.54(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r15d, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.55(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movl	-56(%rbp), %r12d                # 4-byte Reload
	decl	%r12d
	movslq	%r12d, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.56(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	leaq	.L.str.59.152(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	leaq	.L.str.60.153(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movl	16(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.30.142(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r13, %r13
	je	.LBB178_9
# %bb.18:
	subq	%r13, %rax
	incq	%rax
	movq	-48(%rbp), %r12                 # 8-byte Reload
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r12, %rdi
.LBB178_19:
	movq	%r13, %rsi
	callq	halide_error@PLT
	jmp	.LBB178_20
.LBB178_9:
	leaq	.L.str.29.165(%rip), %rsi
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	callq	halide_error@PLT
	xorl	%r13d, %r13d
.LBB178_20:
	movq	%r13, %rdi
	callq	free@PLT
	movl	$-35, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end178:
	.size	halide_error_bad_extern_fold, .Lfunc_end178-halide_error_bad_extern_fold
                                        # -- End function
	.section	.text.halide_error_fold_factor_too_small,"ax",@progbits
	.weak	halide_error_fold_factor_too_small # -- Begin function halide_error_fold_factor_too_small
	.p2align	4, 0x90
	.type	halide_error_fold_factor_too_small,@function
halide_error_fold_factor_too_small:     # @halide_error_fold_factor_too_small
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%r9d, -44(%rbp)                 # 4-byte Spill
	movq	%r8, -64(%rbp)                  # 8-byte Spill
	movl	%ecx, %r13d
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.LBB179_1
# %bb.2:                                # %.split2
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
	leaq	.L.str.61.154(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	jmp	.LBB179_3
.LBB179_1:                              # %.split
	leaq	.L.str.61.154(%rip), %rdx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%esi, %esi
.LBB179_3:
	callq	halide_string_to_string@PLT
	movslq	%r13d, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.62(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r14, %r14
	je	.LBB179_4
# %bb.5:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	jmp	.LBB179_6
.LBB179_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB179_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.51(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	je	.LBB179_7
# %bb.8:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	jmp	.LBB179_9
.LBB179_7:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
.LBB179_9:
	callq	halide_string_to_string@PLT
	leaq	.L.str.63(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	-64(%rbp), %rdx                 # 8-byte Reload
	testq	%rdx, %rdx
	jne	.LBB179_11
# %bb.10:
	leaq	.L.str.30.166(%rip), %rdx
.LBB179_11:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	leaq	.L.str.32.144(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	-44(%rbp), %rdx                 # 4-byte Folded Reload
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.64.155(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	je	.LBB179_12
# %bb.13:
	subq	%r12, %rax
	incq	%rax
	movq	-56(%rbp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%rbx, %rdi
	movq	%r12, %rsi
	jmp	.LBB179_14
.LBB179_12:
	leaq	.L.str.29.165(%rip), %rsi
	movq	-56(%rbp), %rdi                 # 8-byte Reload
.LBB179_14:
	callq	halide_error@PLT
	movq	%r12, %rdi
	callq	free@PLT
	movl	$-26, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end179:
	.size	halide_error_fold_factor_too_small, .Lfunc_end179-halide_error_fold_factor_too_small
                                        # -- End function
	.section	.text.halide_error_requirement_failed,"ax",@progbits
	.weak	halide_error_requirement_failed # -- Begin function halide_error_requirement_failed
	.p2align	4, 0x90
	.type	halide_error_requirement_failed,@function
halide_error_requirement_failed:        # @halide_error_requirement_failed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB180_1
# %bb.2:                                # %.split2
	leaq	1023(%rbx), %r12
	movb	$0, 1023(%rbx)
	leaq	.L.str.65(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	testq	%r13, %r13
	je	.LBB180_4
.LBB180_5:
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	jmp	.LBB180_6
.LBB180_1:                              # %.split
	leaq	.L.str.65(%rip), %rdx
	xorl	%r12d, %r12d
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r13, %r13
	jne	.LBB180_5
.LBB180_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
.LBB180_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.66(%rip), %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	je	.LBB180_7
# %bb.8:
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	testq	%rbx, %rbx
	je	.LBB180_10
.LBB180_11:
	subq	%rbx, %rax
	incq	%rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB180_12
.LBB180_7:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	testq	%rbx, %rbx
	jne	.LBB180_11
.LBB180_10:
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB180_12:
	callq	halide_error@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	movl	$-27, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end180:
	.size	halide_error_requirement_failed, .Lfunc_end180-halide_error_requirement_failed
                                        # -- End function
	.section	.text.halide_error_specialize_fail,"ax",@progbits
	.weak	halide_error_specialize_fail    # -- Begin function halide_error_specialize_fail
	.p2align	4, 0x90
	.type	halide_error_specialize_fail,@function
halide_error_specialize_fail:           # @halide_error_specialize_fail
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB181_1
# %bb.2:                                # %.split2
	leaq	1023(%rbx), %r12
	movb	$0, 1023(%rbx)
	leaq	.L.str.67(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	je	.LBB181_4
.LBB181_5:
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	testq	%rbx, %rbx
	je	.LBB181_7
.LBB181_8:
	subq	%rbx, %rax
	incq	%rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB181_9
.LBB181_1:                              # %.split
	leaq	.L.str.67(%rip), %rdx
	xorl	%r12d, %r12d
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	jne	.LBB181_5
.LBB181_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	testq	%rbx, %rbx
	jne	.LBB181_8
.LBB181_7:
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB181_9:
	callq	halide_error@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	movl	$-31, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end181:
	.size	halide_error_specialize_fail, .Lfunc_end181-halide_error_specialize_fail
                                        # -- End function
	.section	.text.halide_error_no_device_interface,"ax",@progbits
	.weak	halide_error_no_device_interface # -- Begin function halide_error_no_device_interface
	.p2align	4, 0x90
	.type	halide_error_no_device_interface,@function
halide_error_no_device_interface:       # @halide_error_no_device_interface
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB182_1
# %bb.2:
	leaq	1023(%rbx), %rsi
	movb	$0, 1023(%rbx)
	leaq	.L.str.68(%rip), %rdx
	movq	%rbx, %rdi
	callq	halide_string_to_string@PLT
	subq	%rbx, %rax
	leaq	1(%rax), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB182_3
.LBB182_1:
	leaq	.L.str.68(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB182_3:
	callq	halide_error@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	movl	$-19, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end182:
	.size	halide_error_no_device_interface, .Lfunc_end182-halide_error_no_device_interface
                                        # -- End function
	.section	.text.halide_error_device_interface_no_device,"ax",@progbits
	.weak	halide_error_device_interface_no_device # -- Begin function halide_error_device_interface_no_device
	.p2align	4, 0x90
	.type	halide_error_device_interface_no_device,@function
halide_error_device_interface_no_device: # @halide_error_device_interface_no_device
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB183_1
# %bb.2:
	leaq	1023(%rbx), %rsi
	movb	$0, 1023(%rbx)
	leaq	.L.str.69(%rip), %rdx
	movq	%rbx, %rdi
	callq	halide_string_to_string@PLT
	subq	%rbx, %rax
	leaq	1(%rax), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB183_3
.LBB183_1:
	leaq	.L.str.69(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB183_3:
	callq	halide_error@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	movl	$-36, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end183:
	.size	halide_error_device_interface_no_device, .Lfunc_end183-halide_error_device_interface_no_device
                                        # -- End function
	.section	.text.halide_error_host_and_device_dirty,"ax",@progbits
	.weak	halide_error_host_and_device_dirty # -- Begin function halide_error_host_and_device_dirty
	.p2align	4, 0x90
	.type	halide_error_host_and_device_dirty,@function
halide_error_host_and_device_dirty:     # @halide_error_host_and_device_dirty
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB184_1
# %bb.2:
	leaq	1023(%rbx), %rsi
	movb	$0, 1023(%rbx)
	leaq	.L.str.70(%rip), %rdx
	movq	%rbx, %rdi
	callq	halide_string_to_string@PLT
	subq	%rbx, %rax
	leaq	1(%rax), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB184_3
.LBB184_1:
	leaq	.L.str.70(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB184_3:
	callq	halide_error@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	movl	$-37, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end184:
	.size	halide_error_host_and_device_dirty, .Lfunc_end184-halide_error_host_and_device_dirty
                                        # -- End function
	.section	.text.halide_error_buffer_is_null,"ax",@progbits
	.weak	halide_error_buffer_is_null     # -- Begin function halide_error_buffer_is_null
	.p2align	4, 0x90
	.type	halide_error_buffer_is_null,@function
halide_error_buffer_is_null:            # @halide_error_buffer_is_null
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	$1024, %edi                     # imm = 0x400
	callq	malloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB185_1
# %bb.2:                                # %.split2
	leaq	1023(%rbx), %r15
	movb	$0, 1023(%rbx)
	leaq	.L.str.71(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	je	.LBB185_4
.LBB185_5:
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	jmp	.LBB185_6
.LBB185_1:                              # %.split
	leaq	.L.str.71(%rip), %rdx
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	jne	.LBB185_5
.LBB185_4:
	leaq	.L.str.30.166(%rip), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
.LBB185_6:
	callq	halide_string_to_string@PLT
	leaq	.L.str.72(%rip), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	testq	%rbx, %rbx
	je	.LBB185_7
# %bb.8:
	subq	%rbx, %rax
	incq	%rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB185_9
.LBB185_7:
	leaq	.L.str.29.165(%rip), %rsi
	movq	%r14, %rdi
.LBB185_9:
	callq	halide_error@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	movl	$-38, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end185:
	.size	halide_error_buffer_is_null, .Lfunc_end185-halide_error_buffer_is_null
                                        # -- End function
	.section	.text.halide_profiler_shutdown,"ax",@progbits
	.weak	halide_profiler_shutdown        # -- Begin function halide_profiler_shutdown
	.p2align	4, 0x90
	.type	halide_profiler_shutdown,@function
halide_profiler_shutdown:               # @halide_profiler_shutdown
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	callq	halide_profiler_get_state@PLT
	movq	40(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB186_1
# %bb.2:
	movq	%rax, %rbx
	movl	$-2, 16(%rax)
	callq	halide_join_thread@PLT
	movq	$0, 40(%rbx)
	movl	$-1, 16(%rbx)
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	halide_profiler_report_unlocked@PLT
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	halide_profiler_reset_unlocked@PLT # TAILCALL
.LBB186_1:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end186:
	.size	halide_profiler_shutdown, .Lfunc_end186-halide_profiler_shutdown
                                        # -- End function
	.section	.text.halide_profiler_get_state,"ax",@progbits
	.weak	halide_profiler_get_state       # -- Begin function halide_profiler_get_state
	.p2align	4, 0x90
	.type	halide_profiler_get_state,@function
halide_profiler_get_state:              # @halide_profiler_get_state
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	_ZZ25halide_profiler_get_stateE1s(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end187:
	.size	halide_profiler_get_state, .Lfunc_end187-halide_profiler_get_state
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function halide_profiler_report_unlocked
.LCPI188_0:
	.long	0x49742400                      # float 1.0E+6
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI188_1:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI188_2:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI188_3:
	.quad	0x3ddb7cdfd9d7bdbb              # double 1.0E-10
	.section	.text.halide_profiler_report_unlocked,"ax",@progbits
	.weak	halide_profiler_report_unlocked
	.p2align	4, 0x90
	.type	halide_profiler_report_unlocked,@function
halide_profiler_report_unlocked:        # @halide_profiler_report_unlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1128, %rsp                     # imm = 0x468
	movq	%rsi, %rax
	leaq	-1160(%rbp), %rsi
	movq	%rdi, -56(%rbp)
	movb	$0, -48(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rsi, -72(%rbp)
	leaq	-137(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movb	$0, -137(%rbp)
	movq	24(%rax), %r12
	testq	%r12, %r12
	je	.LBB188_1
# %bb.9:
	movq	%rdi, -112(%rbp)                # 8-byte Spill
	leaq	.L.str.20.180(%rip), %r14
	jmp	.LBB188_10
	.p2align	4, 0x90
.LBB188_81:                             # %.loopexit31
                                        #   in Loop: Header=BB188_10 Depth=1
	movq	64(%r12), %r12
	testq	%r12, %r12
	je	.LBB188_2
.LBB188_10:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB188_28 Depth 2
                                        #     Child Loop BB188_31 Depth 2
                                        #       Child Loop BB188_38 Depth 3
                                        #       Child Loop BB188_46 Depth 3
                                        #       Child Loop BB188_55 Depth 3
                                        #       Child Loop BB188_61 Depth 3
                                        #       Child Loop BB188_65 Depth 3
                                        #       Child Loop BB188_67 Depth 3
	movq	(%r12), %rax
	testq	%rax, %rax
	js	.LBB188_11
# %bb.12:                               #   in Loop: Header=BB188_10 Depth=1
	vcvtsi2ss	%rax, %xmm4, %xmm0
	vdivss	.LCPI188_0(%rip), %xmm0, %xmm0
	cmpl	$0, 80(%r12)
	jne	.LBB188_14
	jmp	.LBB188_81
	.p2align	4, 0x90
.LBB188_11:                             #   in Loop: Header=BB188_10 Depth=1
	movq	%rax, %rcx
	shrq	%rcx
	andl	$1, %eax
	orq	%rcx, %rax
	vcvtsi2ss	%rax, %xmm4, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	vdivss	.LCPI188_0(%rip), %xmm0, %xmm0
	cmpl	$0, 80(%r12)
	je	.LBB188_81
.LBB188_14:                             #   in Loop: Header=BB188_10 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	testq	%rax, %rax
	je	.LBB188_15
# %bb.16:                               #   in Loop: Header=BB188_10 Depth=1
	movb	$0, (%rax)
	movq	-72(%rbp), %rdi
	jmp	.LBB188_17
	.p2align	4, 0x90
.LBB188_15:                             #   in Loop: Header=BB188_10 Depth=1
	xorl	%edi, %edi
.LBB188_17:                             #   in Loop: Header=BB188_10 Depth=1
	movq	32(%r12), %r13
	movq	40(%r12), %rbx
	movq	48(%r12), %rdx
	movq	-64(%rbp), %rsi
	testq	%rdx, %rdx
	vmovss	%xmm0, -88(%rbp)                # 4-byte Spill
	jne	.LBB188_19
# %bb.18:                               #   in Loop: Header=BB188_10 Depth=1
	leaq	.L.str.30.166(%rip), %rdx
.LBB188_19:                             #   in Loop: Header=BB188_10 Depth=1
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	leaq	.L.str.7.167(%rip), %rdx
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	movq	%rdx, %r15
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	leaq	.L.str.8.168(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	vmovss	-88(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	halide_double_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	leaq	.L.str.9.169(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	leaq	.L.str.10.170(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movslq	84(%r12), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	leaq	.L.str.11.171(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movslq	80(%r12), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	leaq	.L.str.12.172(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	vcvtsi2ssl	80(%r12), %xmm3, %xmm0
	vmovss	-88(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vdivss	%xmm0, %xmm1, %xmm0
	movq	-64(%rbp), %rsi
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	halide_double_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	leaq	.L.str.13.173(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	cmpq	%rbx, %r13
	je	.LBB188_21
# %bb.20:                               #   in Loop: Header=BB188_10 Depth=1
	vmovq	%r13, %xmm0
	vmovdqa	.LCPI188_1(%rip), %xmm2         # xmm2 = [1127219200,1160773632,0,0]
	vpunpckldq	%xmm2, %xmm0, %xmm0     # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	vmovapd	.LCPI188_2(%rip), %xmm3         # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	vsubpd	%xmm3, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovq	%rbx, %xmm1
	vpunpckldq	%xmm2, %xmm1, %xmm1     # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	vsubpd	%xmm3, %xmm1, %xmm1
	vpermilpd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0]
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	.LCPI188_3(%rip), %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -88(%rbp)                # 4-byte Spill
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	leaq	.L.str.14.174(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	vmovss	-88(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	halide_double_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
.LBB188_21:                             #   in Loop: Header=BB188_10 Depth=1
	movq	%rbx, -120(%rbp)                # 8-byte Spill
	movq	%r13, -128(%rbp)                # 8-byte Spill
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	leaq	.L.str.15.175(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movslq	88(%r12), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	leaq	.L.str.16.176(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	16(%r12), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, %ecx
	callq	halide_uint64_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	leaq	.L.str.17.177(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rsi
	leaq	.L.str.29.165(%rip), %rcx
	testq	%rsi, %rsi
	je	.LBB188_23
# %bb.22:                               #   in Loop: Header=BB188_10 Depth=1
	movq	-56(%rbp), %rdi
	subq	%rsi, %rax
	incq	%rax
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	-80(%rbp), %rcx
.LBB188_23:                             #   in Loop: Header=BB188_10 Depth=1
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	%rcx, %rsi
	callq	halide_print@PLT
	cmpq	$0, (%r12)
	jne	.LBB188_29
# %bb.24:                               #   in Loop: Header=BB188_10 Depth=1
	cmpq	$0, 24(%r12)
	je	.LBB188_25
.LBB188_29:                             # %.loopexit32
                                        #   in Loop: Header=BB188_10 Depth=1
	cmpl	$0, 72(%r12)
	jle	.LBB188_81
# %bb.30:                               #   in Loop: Header=BB188_10 Depth=1
	xorl	%ecx, %ecx
	movq	%r12, -96(%rbp)                 # 8-byte Spill
	jmp	.LBB188_31
	.p2align	4, 0x90
.LBB188_79:                             #   in Loop: Header=BB188_31 Depth=2
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	%rcx, %rsi
	callq	halide_print@PLT
	movq	-136(%rbp), %rcx                # 8-byte Reload
.LBB188_80:                             #   in Loop: Header=BB188_31 Depth=2
	incq	%rcx
	movslq	72(%r12), %rax
	cmpq	%rax, %rcx
	jge	.LBB188_81
.LBB188_31:                             #   Parent Loop BB188_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB188_38 Depth 3
                                        #       Child Loop BB188_46 Depth 3
                                        #       Child Loop BB188_55 Depth 3
                                        #       Child Loop BB188_61 Depth 3
                                        #       Child Loop BB188_65 Depth 3
                                        #       Child Loop BB188_67 Depth 3
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	testq	%rax, %rax
	je	.LBB188_33
# %bb.32:                               #   in Loop: Header=BB188_31 Depth=2
	movb	$0, (%rax)
.LBB188_33:                             #   in Loop: Header=BB188_31 Depth=2
	movq	56(%r12), %rax
	leaq	(%rcx,%rcx,8), %r15
	leaq	(%rax,%r15,8), %r13
	testq	%rcx, %rcx
	jne	.LBB188_35
# %bb.34:                               #   in Loop: Header=BB188_31 Depth=2
	cmpq	$0, (%r13)
	je	.LBB188_80
.LBB188_35:                             #   in Loop: Header=BB188_31 Depth=2
	movq	%rcx, -136(%rbp)                # 8-byte Spill
	movq	%r12, %rbx
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	leaq	.L.str.18.178(%rip), %rdx
	movq	%rax, %r12
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	%r12, -88(%rbp)                 # 8-byte Spill
	movq	56(%r12,%r15,8), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	testq	%rdx, %rdx
	jne	.LBB188_37
# %bb.36:                               #   in Loop: Header=BB188_31 Depth=2
	leaq	.L.str.30.166(%rip), %rdx
.LBB188_37:                             #   in Loop: Header=BB188_31 Depth=2
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	leaq	.L.str.19.179(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	%rax, %rcx
	subq	-80(%rbp), %rcx
	cmpq	$24, %rcx
	ja	.LBB188_39
	.p2align	4, 0x90
.LBB188_38:                             # %.preheader29
                                        #   Parent Loop BB188_10 Depth=1
                                        #     Parent Loop BB188_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movq	%r14, %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	%rax, %rcx
	subq	-80(%rbp), %rcx
	cmpq	$25, %rcx
	jb	.LBB188_38
.LBB188_39:                             # %.loopexit30
                                        #   in Loop: Header=BB188_31 Depth=2
	movq	(%r13), %rcx
	testq	%rcx, %rcx
	js	.LBB188_40
# %bb.41:                               # %.loopexit30
                                        #   in Loop: Header=BB188_31 Depth=2
	vcvtsi2ss	%rcx, %xmm4, %xmm0
	jmp	.LBB188_42
	.p2align	4, 0x90
.LBB188_40:                             #   in Loop: Header=BB188_31 Depth=2
	movq	%rcx, %rdx
	shrq	%rdx
	andl	$1, %ecx
	orq	%rdx, %rcx
	vcvtsi2ss	%rcx, %xmm4, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
.LBB188_42:                             # %.loopexit30
                                        #   in Loop: Header=BB188_31 Depth=2
	vcvtsi2ssl	80(%rbx), %xmm4, %xmm1
	vmulss	.LCPI188_0(%rip), %xmm1, %xmm1
	vdivss	%xmm1, %xmm0, %xmm0
	movq	-64(%rbp), %rsi
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	halide_double_to_string@PLT
	movq	%rax, -72(%rbp)
	testq	%rax, %rax
	je	.LBB188_43
# %bb.44:                               #   in Loop: Header=BB188_31 Depth=2
	addq	$-3, %rax
	movq	-80(%rbp), %rcx
	cmpq	%rcx, %rax
	cmovbq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movb	$0, (%rax)
	movq	-72(%rbp), %rdi
	jmp	.LBB188_45
	.p2align	4, 0x90
.LBB188_43:                             #   in Loop: Header=BB188_31 Depth=2
	xorl	%edi, %edi
.LBB188_45:                             #   in Loop: Header=BB188_31 Depth=2
	movq	-64(%rbp), %rsi
	leaq	.L.str.21.181(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rax, -72(%rbp)
	subq	-80(%rbp), %rax
	cmpq	$34, %rax
	ja	.LBB188_47
	.p2align	4, 0x90
.LBB188_46:                             # %.preheader27
                                        #   Parent Loop BB188_10 Depth=1
                                        #     Parent Loop BB188_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-64(%rbp), %rsi
	movq	%r14, %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rax, -72(%rbp)
	subq	-80(%rbp), %rax
	cmpq	$35, %rax
	jb	.LBB188_46
.LBB188_47:                             # %.loopexit28
                                        #   in Loop: Header=BB188_31 Depth=2
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB188_48
# %bb.49:                               #   in Loop: Header=BB188_31 Depth=2
	imulq	$100, (%r13), %rax
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	je	.LBB188_50
# %bb.51:                               #   in Loop: Header=BB188_31 Depth=2
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, %r12
	jmp	.LBB188_52
	.p2align	4, 0x90
.LBB188_48:                             #   in Loop: Header=BB188_31 Depth=2
	xorl	%r12d, %r12d
	jmp	.LBB188_52
	.p2align	4, 0x90
.LBB188_50:                             #   in Loop: Header=BB188_31 Depth=2
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, %r12d
.LBB188_52:                             #   in Loop: Header=BB188_31 Depth=2
	movq	-64(%rbp), %rsi
	leaq	.L.str.22.182(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	movslq	%r12d, %rdx
	movq	%rax, %rdi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	leaq	.L.str.23.183(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	%rax, %rcx
	subq	-80(%rbp), %rcx
	cmpq	$42, %rcx
	ja	.LBB188_53
# %bb.54:                               # %.preheader25.preheader
                                        #   in Loop: Header=BB188_31 Depth=2
	movq	-96(%rbp), %r12                 # 8-byte Reload
	.p2align	4, 0x90
.LBB188_55:                             # %.preheader25
                                        #   Parent Loop BB188_10 Depth=1
                                        #     Parent Loop BB188_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movq	%r14, %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	%rax, %rcx
	subq	-80(%rbp), %rcx
	cmpq	$43, %rcx
	jb	.LBB188_55
# %bb.56:                               # %.loopexit26
                                        #   in Loop: Header=BB188_31 Depth=2
	movl	$58, %ebx
	movq	-120(%rbp), %rcx                # 8-byte Reload
	cmpq	%rcx, -128(%rbp)                # 8-byte Folded Reload
	jne	.LBB188_57
	jmp	.LBB188_62
	.p2align	4, 0x90
.LBB188_53:                             #   in Loop: Header=BB188_31 Depth=2
	movq	-96(%rbp), %r12                 # 8-byte Reload
	movl	$58, %ebx
	movq	-120(%rbp), %rcx                # 8-byte Reload
	cmpq	%rcx, -128(%rbp)                # 8-byte Folded Reload
	je	.LBB188_62
.LBB188_57:                             #   in Loop: Header=BB188_31 Depth=2
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	vmovsd	40(%rcx,%r15,8), %xmm0          # xmm0 = mem[0],zero
	vmovapd	.LCPI188_1(%rip), %xmm2         # xmm2 = [1127219200,1160773632,0,0]
	vunpcklps	%xmm2, %xmm0, %xmm0     # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	vmovapd	.LCPI188_2(%rip), %xmm3         # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	vsubpd	%xmm3, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	48(%rcx,%r15,8), %xmm1          # xmm1 = mem[0],zero
	vunpcklps	%xmm2, %xmm1, %xmm1     # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	vsubpd	%xmm3, %xmm1, %xmm1
	vpermilpd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0]
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	.LCPI188_3(%rip), %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -100(%rbp)               # 4-byte Spill
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	leaq	.L.str.24.184(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	vmovss	-100(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	halide_double_to_string@PLT
	movq	%rax, %rcx
	movq	%rax, -72(%rbp)
	testq	%rax, %rax
	je	.LBB188_58
# %bb.59:                               #   in Loop: Header=BB188_31 Depth=2
	addq	$-3, %rcx
	movq	-80(%rbp), %rax
	cmpq	%rax, %rcx
	cmovbq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	movb	$0, (%rcx)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	subq	-80(%rbp), %rcx
	movl	$73, %ebx
	cmpq	$57, %rcx
	ja	.LBB188_62
	.p2align	4, 0x90
.LBB188_61:                             # %.preheader23
                                        #   Parent Loop BB188_10 Depth=1
                                        #     Parent Loop BB188_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movq	%r14, %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	%rax, %rcx
	subq	-80(%rbp), %rcx
	cmpq	$58, %rcx
	jb	.LBB188_61
.LBB188_62:                             #   in Loop: Header=BB188_31 Depth=2
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	cmpq	$0, 16(%rcx,%r15,8)
	je	.LBB188_75
# %bb.63:                               #   in Loop: Header=BB188_31 Depth=2
	leaq	(%rcx,%r15,8), %r12
	addq	$16, %r12
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	leaq	.L.str.25.185(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	(%r12), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, %ecx
	callq	halide_uint64_to_string@PLT
	.p2align	4, 0x90
.LBB188_65:                             # %.preheader21
                                        #   Parent Loop BB188_10 Depth=1
                                        #     Parent Loop BB188_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, -72(%rbp)
	movq	%rax, %rcx
	subq	-80(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	cmpq	%rbx, %rcx
	jae	.LBB188_66
# %bb.64:                               # %.preheader21
                                        #   in Loop: Header=BB188_65 Depth=3
	movq	%r14, %rdx
	callq	halide_string_to_string@PLT
	jmp	.LBB188_65
	.p2align	4, 0x90
.LBB188_66:                             # %.loopexit22
                                        #   in Loop: Header=BB188_31 Depth=2
	leaq	.L.str.26.186(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%r15,8), %r12
	addq	$64, %r12
	movslq	64(%rcx,%r15,8), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	movq	%rax, %rdi
	movq	%rax, -72(%rbp)
	addq	$15, %rbx
	subq	-80(%rbp), %rax
	cmpq	%rbx, %rax
	jae	.LBB188_69
	.p2align	4, 0x90
.LBB188_67:                             # %.preheader
                                        #   Parent Loop BB188_10 Depth=1
                                        #     Parent Loop BB188_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-64(%rbp), %rsi
	movq	%r14, %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rax, -72(%rbp)
	subq	-80(%rbp), %rax
	cmpq	%rbx, %rax
	jb	.LBB188_67
.LBB188_69:                             # %.loopexit
                                        #   in Loop: Header=BB188_31 Depth=2
	movslq	(%r12), %rcx
	testq	%rcx, %rcx
	je	.LBB188_70
# %bb.71:                               #   in Loop: Header=BB188_31 Depth=2
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movq	24(%rax,%r15,8), %rax
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	je	.LBB188_72
# %bb.73:                               #   in Loop: Header=BB188_31 Depth=2
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, %rbx
	jmp	.LBB188_74
	.p2align	4, 0x90
.LBB188_70:                             #   in Loop: Header=BB188_31 Depth=2
	xorl	%ebx, %ebx
	jmp	.LBB188_74
.LBB188_58:                             #   in Loop: Header=BB188_31 Depth=2
	xorl	%eax, %eax
	subq	-80(%rbp), %rcx
	movl	$73, %ebx
	cmpq	$57, %rcx
	jbe	.LBB188_61
	jmp	.LBB188_62
.LBB188_72:                             #   in Loop: Header=BB188_31 Depth=2
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, %ebx
.LBB188_74:                             #   in Loop: Header=BB188_31 Depth=2
	movq	-96(%rbp), %r12                 # 8-byte Reload
	movq	-64(%rbp), %rsi
	leaq	.L.str.27.187(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	movslq	%ebx, %rdx
	movq	%rax, %rdi
	movl	$1, %ecx
	callq	halide_int64_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rcx                 # 8-byte Reload
.LBB188_75:                             #   in Loop: Header=BB188_31 Depth=2
	cmpq	$0, 32(%rcx,%r15,8)
	je	.LBB188_77
# %bb.76:                               #   in Loop: Header=BB188_31 Depth=2
	leaq	(%rcx,%r15,8), %rbx
	addq	$32, %rbx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	leaq	.L.str.28.188(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	(%rbx), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, %ecx
	callq	halide_uint64_to_string@PLT
	movq	%rax, -72(%rbp)
.LBB188_77:                             #   in Loop: Header=BB188_31 Depth=2
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	leaq	.L.str.7.167(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rsi
	leaq	.L.str.29.165(%rip), %rcx
	testq	%rsi, %rsi
	je	.LBB188_79
# %bb.78:                               #   in Loop: Header=BB188_31 Depth=2
	movq	-56(%rbp), %rdi
	subq	%rsi, %rax
	incq	%rax
	movq	%rax, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	-80(%rbp), %rcx
	jmp	.LBB188_79
.LBB188_25:                             #   in Loop: Header=BB188_10 Depth=1
	movl	72(%r12), %ecx
	testl	%ecx, %ecx
	jle	.LBB188_81
# %bb.26:                               #   in Loop: Header=BB188_10 Depth=1
	movq	56(%r12), %rax
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,8), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB188_28:                             #   Parent Loop BB188_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, 32(%rax,%rdx)
	jne	.LBB188_29
# %bb.27:                               #   in Loop: Header=BB188_28 Depth=2
	addq	$72, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB188_28
	jmp	.LBB188_81
.LBB188_2:
	movq	-80(%rbp), %rsi
	movq	-56(%rbp), %rdi
	testq	%rsi, %rsi
	je	.LBB188_82
# %bb.3:                                # %._crit_edge
	movq	-72(%rbp), %rdx
	jmp	.LBB188_4
.LBB188_1:
	movq	%rsi, %rdx
.LBB188_4:                              # %._crit_edge48
	subq	%rsi, %rdx
	incq	%rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	cmpb	$0, -48(%rbp)
	jne	.LBB188_6
	jmp	.LBB188_8
.LBB188_82:
	leaq	.L.str.29.165(%rip), %rsi
	callq	halide_error@PLT
	cmpb	$0, -48(%rbp)
	je	.LBB188_8
.LBB188_6:
	movq	-80(%rbp), %rdi
	leaq	-47(%rbp), %rax
	cmpq	%rax, %rdi
	je	.LBB188_8
# %bb.7:
	callq	free@PLT
.LBB188_8:
	addq	$1128, %rsp                     # imm = 0x468
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end188:
	.size	halide_profiler_report_unlocked, .Lfunc_end188-halide_profiler_report_unlocked
                                        # -- End function
	.section	.text.halide_profiler_reset_unlocked,"ax",@progbits
	.weak	halide_profiler_reset_unlocked  # -- Begin function halide_profiler_reset_unlocked
	.p2align	4, 0x90
	.type	halide_profiler_reset_unlocked,@function
halide_profiler_reset_unlocked:         # @halide_profiler_reset_unlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	24(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB189_3
	.p2align	4, 0x90
.LBB189_1:                              # =>This Inner Loop Header: Depth=1
	movq	64(%rbx), %rax
	movq	%rax, 24(%r14)
	movq	56(%rbx), %rdi
	callq	free@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	movq	24(%r14), %rbx
	testq	%rbx, %rbx
	jne	.LBB189_1
.LBB189_3:                              # %.loopexit
	movl	$0, 12(%r14)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end189:
	.size	halide_profiler_reset_unlocked, .Lfunc_end189-halide_profiler_reset_unlocked
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy # -- Begin function _ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy,@function
_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy: # @_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r12
	movl	%esi, %r14d
	movq	%rdi, %r13
	callq	halide_profiler_get_state@PLT
	movq	%rax, %r15
	movq	24(%rax), %rbx
	jmp	.LBB190_1
	.p2align	4, 0x90
.LBB190_4:                              #   in Loop: Header=BB190_1 Depth=1
	movq	64(%rbx), %rbx
.LBB190_1:                              # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB190_5
# %bb.2:                                # %.preheader
                                        #   in Loop: Header=BB190_1 Depth=1
	cmpq	%r13, 48(%rbx)
	jne	.LBB190_4
# %bb.3:                                #   in Loop: Header=BB190_1 Depth=1
	cmpl	%r14d, 72(%rbx)
	jne	.LBB190_4
	jmp	.LBB190_17
.LBB190_5:                              # %.loopexit5
	movl	$96, %edi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB190_16
# %bb.6:
	movq	%rax, %rbx
	movq	24(%r15), %rax
	movq	%rax, 64(%rbx)
	movq	%r13, 48(%rbx)
	movl	12(%r15), %eax
	movl	%eax, 76(%rbx)
	movl	%r14d, 72(%rbx)
	movq	$0, 80(%rbx)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%rbx)
	movl	$0, 88(%rbx)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 32(%rbx)
	movslq	%r14d, %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,8), %rdi
	vzeroupper
	callq	malloc@PLT
	movq	%rax, 56(%rbx)
	testq	%rax, %rax
	je	.LBB190_15
# %bb.7:
	testl	%r14d, %r14d
	jle	.LBB190_12
# %bb.8:
	movl	%r14d, %r8d
	cmpl	$1, %r14d
	jne	.LBB190_13
# %bb.9:
	xorl	%edx, %edx
	jmp	.LBB190_10
.LBB190_15:
	movq	%rbx, %rdi
	callq	free@PLT
.LBB190_16:                             # %.loopexit4
	xorl	%ebx, %ebx
	jmp	.LBB190_17
.LBB190_13:                             # %.new
	movl	%r8d, %esi
	andl	$-2, %esi
	leaq	136(%rax), %rdi
	xorl	%edx, %edx
	vxorps	%xmm0, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	.p2align	4, 0x90
.LBB190_14:                             # =>This Inner Loop Header: Depth=1
	movq	$0, -136(%rdi)
	movq	(%r12,%rdx,8), %rcx
	movq	%rcx, -80(%rdi)
	movl	$0, -72(%rdi)
	vmovups	%ymm0, -128(%rdi)
	vmovups	%xmm1, -96(%rdi)
	movq	$0, -64(%rdi)
	movq	8(%r12,%rdx,8), %rcx
	movq	%rcx, -8(%rdi)
	movl	$0, (%rdi)
	vmovups	%ymm0, -56(%rdi)
	vmovups	%xmm1, -24(%rdi)
	addq	$2, %rdx
	addq	$144, %rdi
	cmpq	%rdx, %rsi
	jne	.LBB190_14
.LBB190_10:                             # %.loopexit.loopexit.unr-lcssa
	testb	$1, %r8b
	je	.LBB190_12
# %bb.11:                               # %.epil.preheader
	leaq	(%rdx,%rdx,8), %rcx
	movq	$0, (%rax,%rcx,8)
	movq	(%r12,%rdx,8), %rdx
	movq	%rdx, 56(%rax,%rcx,8)
	movl	$0, 64(%rax,%rcx,8)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 8(%rax,%rcx,8)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 40(%rax,%rcx,8)
.LBB190_12:                             # %.loopexit
	addl	%r14d, 12(%r15)
	movq	%rbx, 24(%r15)
.LBB190_17:                             # %.loopexit4
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
.Lfunc_end190:
	.size	_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy, .Lfunc_end190-_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function _ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi
.LCPI191_0:
	.zero	8
	.quad	1                               # 0x1
	.section	.text._ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi,@function
_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi: # @_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	24(%rdi), %r8
	testq	%r8, %r8
	je	.LBB191_8
# %bb.1:                                # %.preheader.preheader
	xorl	%r10d, %r10d
	movq	%r8, %rax
	jmp	.LBB191_3
	.p2align	4, 0x90
.LBB191_2:                              #   in Loop: Header=BB191_3 Depth=1
	movq	64(%r11), %rax
	movq	%r11, %r10
	testq	%rax, %rax
	je	.LBB191_8
.LBB191_3:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %r11
	movslq	76(%rax), %r9
	cmpl	%esi, %r9d
	jg	.LBB191_2
# %bb.4:                                #   in Loop: Header=BB191_3 Depth=1
	movl	72(%r11), %eax
	addl	%r9d, %eax
	cmpl	%esi, %eax
	jle	.LBB191_2
# %bb.5:
	testq	%r10, %r10
	je	.LBB191_7
# %bb.6:
	movq	64(%r11), %rax
	movq	%rax, 64(%r10)
	movq	%r8, 64(%r11)
	movq	%r11, 24(%rdi)
.LBB191_7:
	movslq	%esi, %rax
	leaq	(%rax,%rax,8), %rax
	shlq	$3, %rax
	addq	56(%r11), %rax
	negq	%r9
	leaq	(%r9,%r9,8), %rsi
	addq	%rdx, (%rax,%rsi,8)
	movslq	%ecx, %rcx
	vmovdqa	.LCPI191_0(%rip), %xmm0         # xmm0 = <u,1>
	vpinsrq	$0, %rcx, %xmm0, %xmm0
	vpaddq	40(%rax,%rsi,8), %xmm0, %xmm1
	vmovdqu	%xmm1, 40(%rax,%rsi,8)
	addq	%rdx, (%r11)
	incl	84(%r11)
	vpaddq	32(%r11), %xmm0, %xmm0
	vmovdqu	%xmm0, 32(%r11)
.LBB191_8:                              # %.loopexit
	popq	%rbp
	retq
.Lfunc_end191:
	.size	_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi, .Lfunc_end191-_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi
                                        # -- End function
	.section	.text._ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv # -- Begin function _ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv,@function
_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv: # @_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	callq	halide_profiler_get_state@PLT
	movq	%rax, %r13
	movq	%rax, %rdi
	callq	halide_mutex_lock@PLT
	cmpl	$-2, 16(%r13)
	jne	.LBB192_1
.LBB192_11:                             # %.loopexit
	movq	%r13, %rdi
	callq	halide_mutex_unlock@PLT
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB192_1:
	leaq	-48(%rbp), %r14
	leaq	-44(%rbp), %r15
	jmp	.LBB192_2
	.p2align	4, 0x90
.LBB192_10:                             #   in Loop: Header=BB192_2 Depth=1
	cmpl	$-2, 16(%r13)
	je	.LBB192_11
.LBB192_2:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB192_3 Depth 2
	xorl	%edi, %edi
	callq	halide_current_time_ns@PLT
	movq	%rax, %r12
	jmp	.LBB192_3
	.p2align	4, 0x90
.LBB192_9:                              #   in Loop: Header=BB192_3 Depth=2
	movl	8(%r13), %r12d
	movq	%r13, %rdi
	callq	halide_mutex_unlock@PLT
	xorl	%edi, %edi
	movl	%r12d, %esi
	callq	halide_sleep_ms@PLT
	movq	%r13, %rdi
	callq	halide_mutex_lock@PLT
	movq	%rbx, %r12
.LBB192_3:                              #   Parent Loop BB192_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	32(%r13), %rax
	testq	%rax, %rax
	je	.LBB192_5
# %bb.4:                                #   in Loop: Header=BB192_3 Depth=2
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*%rax
	jmp	.LBB192_6
	.p2align	4, 0x90
.LBB192_5:                              #   in Loop: Header=BB192_3 Depth=2
	movl	16(%r13), %eax
	movl	%eax, -48(%rbp)
	movl	20(%r13), %eax
	movl	%eax, -44(%rbp)
.LBB192_6:                              #   in Loop: Header=BB192_3 Depth=2
	xorl	%edi, %edi
	callq	halide_current_time_ns@PLT
	movl	-48(%rbp), %esi
	cmpl	$-2, %esi
	je	.LBB192_10
# %bb.7:                                #   in Loop: Header=BB192_3 Depth=2
	movq	%rax, %rbx
	testl	%esi, %esi
	js	.LBB192_9
# %bb.8:                                #   in Loop: Header=BB192_3 Depth=2
	movq	%rbx, %rdx
	subq	%r12, %rdx
	movl	-44(%rbp), %ecx
	movq	%r13, %rdi
	callq	_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi@PLT
	jmp	.LBB192_9
.Lfunc_end192:
	.size	_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv, .Lfunc_end192-_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv
                                        # -- End function
	.section	.text.halide_profiler_get_pipeline_state,"ax",@progbits
	.weak	halide_profiler_get_pipeline_state # -- Begin function halide_profiler_get_pipeline_state
	.p2align	4, 0x90
	.type	halide_profiler_get_pipeline_state,@function
halide_profiler_get_pipeline_state:     # @halide_profiler_get_pipeline_state
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	callq	halide_profiler_get_state@PLT
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	halide_mutex_lock@PLT
	movq	24(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB193_4
	.p2align	4, 0x90
.LBB193_2:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r15, 48(%rbx)
	je	.LBB193_5
# %bb.3:                                #   in Loop: Header=BB193_2 Depth=1
	movq	64(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB193_2
.LBB193_4:
	xorl	%ebx, %ebx
.LBB193_5:                              # %.loopexit
	movq	%r14, %rdi
	callq	halide_mutex_unlock@PLT
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end193:
	.size	halide_profiler_get_pipeline_state, .Lfunc_end193-halide_profiler_get_pipeline_state
                                        # -- End function
	.section	.text.halide_profiler_pipeline_start,"ax",@progbits
	.weak	halide_profiler_pipeline_start  # -- Begin function halide_profiler_pipeline_start
	.p2align	4, 0x90
	.type	halide_profiler_pipeline_start,@function
halide_profiler_pipeline_start:         # @halide_profiler_pipeline_start
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r15
	movl	%edx, %r12d
	movq	%rsi, %r13
	movq	%rdi, %r14
	callq	halide_profiler_get_state@PLT
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	halide_mutex_lock@PLT
	cmpq	$0, 40(%rbx)
	jne	.LBB194_2
# %bb.1:
	movq	%r14, %rdi
	callq	halide_start_clock@PLT
	movq	_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv@GOTPCREL(%rip), %rdi
	xorl	%esi, %esi
	callq	halide_spawn_thread@PLT
	movq	%rax, 40(%rbx)
.LBB194_2:
	movq	%r13, %rdi
	movl	%r12d, %esi
	movq	%r15, %rdx
	callq	_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy@PLT
	testq	%rax, %rax
	je	.LBB194_3
# %bb.4:
	incl	80(%rax)
	movl	76(%rax), %r14d
	jmp	.LBB194_5
.LBB194_3:
	movq	%r14, %rdi
	callq	halide_error_out_of_memory@PLT
	movl	%eax, %r14d
.LBB194_5:
	movq	%rbx, %rdi
	callq	halide_mutex_unlock@PLT
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end194:
	.size	halide_profiler_pipeline_start, .Lfunc_end194-halide_profiler_pipeline_start
                                        # -- End function
	.section	.text.halide_profiler_stack_peak_update,"ax",@progbits
	.weak	halide_profiler_stack_peak_update # -- Begin function halide_profiler_stack_peak_update
	.p2align	4, 0x90
	.type	halide_profiler_stack_peak_update,@function
halide_profiler_stack_peak_update:      # @halide_profiler_stack_peak_update
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rsi, %rbx
	testq	%rsi, %rsi
	je	.LBB195_1
# %bb.2:
	movl	72(%rbx), %eax
	testl	%eax, %eax
	jg	.LBB195_3
	jmp	.LBB195_10
.LBB195_1:
	leaq	.L.str.189(%rip), %rsi
	callq	halide_print@PLT
	callq	abort@PLT
	movl	72(%rbx), %eax
	testl	%eax, %eax
	jle	.LBB195_10
.LBB195_3:
	xorl	%edx, %edx
	jmp	.LBB195_4
	.p2align	4, 0x90
.LBB195_8:                              #   in Loop: Header=BB195_4 Depth=1
	movl	72(%rbx), %eax
.LBB195_9:                              #   in Loop: Header=BB195_4 Depth=1
	incq	%rdx
	movslq	%eax, %rcx
	cmpq	%rcx, %rdx
	jge	.LBB195_10
.LBB195_4:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB195_6 Depth 2
	movq	(%r14,%rdx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB195_9
# %bb.5:                                #   in Loop: Header=BB195_4 Depth=1
	movq	56(%rbx), %rax
	leaq	(%rdx,%rdx,8), %rcx
	leaq	(%rax,%rcx,8), %rdi
	addq	$32, %rdi
	movq	32(%rax,%rcx,8), %rcx
	.p2align	4, 0x90
.LBB195_6:                              #   Parent Loop BB195_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rsi, %rcx
	jae	.LBB195_8
# %bb.7:                                #   in Loop: Header=BB195_6 Depth=2
	movq	%rcx, %rax
	lock		cmpxchgq	%rsi, (%rdi)
	cmpq	%rax, %rcx
	movq	%rax, %rcx
	jne	.LBB195_6
	jmp	.LBB195_8
.LBB195_10:                             # %.loopexit
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end195:
	.size	halide_profiler_stack_peak_update, .Lfunc_end195-halide_profiler_stack_peak_update
                                        # -- End function
	.section	.text.halide_profiler_memory_allocate,"ax",@progbits
	.weak	halide_profiler_memory_allocate # -- Begin function halide_profiler_memory_allocate
	.p2align	4, 0x90
	.type	halide_profiler_memory_allocate,@function
halide_profiler_memory_allocate:        # @halide_profiler_memory_allocate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	testq	%rcx, %rcx
	je	.LBB196_13
# %bb.1:
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %r12
	testq	%rsi, %rsi
	je	.LBB196_2
# %bb.3:
	testl	%r15d, %r15d
	js	.LBB196_4
.LBB196_5:
	cmpl	%r15d, 72(%rbx)
	jg	.LBB196_7
.LBB196_6:
	leaq	.L.str.3.192(%rip), %rsi
	movq	%r12, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB196_7:
	movq	56(%rbx), %rdx
	lock		incl	88(%rbx)
	lock		addq	%r14, 24(%rbx)
	movq	%r14, %rsi
	lock		xaddq	%rsi, 8(%rbx)
	movslq	%r15d, %rdi
	addq	%r14, %rsi
	movq	16(%rbx), %rcx
	.p2align	4, 0x90
.LBB196_8:                              # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rcx
	jae	.LBB196_10
# %bb.9:                                #   in Loop: Header=BB196_8 Depth=1
	movq	%rcx, %rax
	lock		cmpxchgq	%rsi, 16(%rbx)
	cmpq	%rax, %rcx
	movq	%rax, %rcx
	jne	.LBB196_8
.LBB196_10:
	leaq	(%rdi,%rdi,8), %rax
	lock		incl	64(%rdx,%rax,8)
	lock		addq	%r14, 24(%rdx,%rax,8)
	movq	%r14, %rsi
	lock		xaddq	%rsi, 8(%rdx,%rax,8)
	addq	%r14, %rsi
	leaq	(%rdx,%rax,8), %rdi
	addq	$16, %rdi
	movq	16(%rdx,%rax,8), %rcx
	.p2align	4, 0x90
.LBB196_11:                             # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rcx
	jae	.LBB196_13
# %bb.12:                               #   in Loop: Header=BB196_11 Depth=1
	movq	%rcx, %rax
	lock		cmpxchgq	%rsi, (%rdi)
	cmpq	%rax, %rcx
	movq	%rax, %rcx
	jne	.LBB196_11
.LBB196_13:                             # %.loopexit
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB196_2:
	leaq	.L.str.1.190(%rip), %rsi
	movq	%r12, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
	testl	%r15d, %r15d
	jns	.LBB196_5
.LBB196_4:
	leaq	.L.str.2.191(%rip), %rsi
	movq	%r12, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
	cmpl	%r15d, 72(%rbx)
	jle	.LBB196_6
	jmp	.LBB196_7
.Lfunc_end196:
	.size	halide_profiler_memory_allocate, .Lfunc_end196-halide_profiler_memory_allocate
                                        # -- End function
	.section	.text.halide_profiler_memory_free,"ax",@progbits
	.weak	halide_profiler_memory_free     # -- Begin function halide_profiler_memory_free
	.p2align	4, 0x90
	.type	halide_profiler_memory_free,@function
halide_profiler_memory_free:            # @halide_profiler_memory_free
# %bb.0:
	testq	%rcx, %rcx
	je	.LBB197_8
# %bb.1:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %r12
	testq	%rsi, %rsi
	je	.LBB197_2
# %bb.3:
	testl	%r15d, %r15d
	js	.LBB197_4
.LBB197_5:
	cmpl	%r15d, 72(%rbx)
	jg	.LBB197_7
.LBB197_6:
	leaq	.L.str.6.195(%rip), %rsi
	movq	%r12, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB197_7:
	movq	56(%rbx), %rax
	movslq	%r15d, %rcx
	lock		subq	%r14, 8(%rbx)
	leaq	(%rcx,%rcx,8), %rcx
	lock		subq	%r14, 8(%rax,%rcx,8)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
.LBB197_8:
	retq
.LBB197_2:
	leaq	.L.str.4.193(%rip), %rsi
	movq	%r12, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
	testl	%r15d, %r15d
	jns	.LBB197_5
.LBB197_4:
	leaq	.L.str.5.194(%rip), %rsi
	movq	%r12, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
	cmpl	%r15d, 72(%rbx)
	jle	.LBB197_6
	jmp	.LBB197_7
.Lfunc_end197:
	.size	halide_profiler_memory_free, .Lfunc_end197-halide_profiler_memory_free
                                        # -- End function
	.section	.text.halide_profiler_report,"ax",@progbits
	.weak	halide_profiler_report          # -- Begin function halide_profiler_report
	.p2align	4, 0x90
	.type	halide_profiler_report,@function
halide_profiler_report:                 # @halide_profiler_report
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	callq	halide_profiler_get_state@PLT
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	halide_mutex_lock@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	halide_profiler_report_unlocked@PLT
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	halide_mutex_unlock@PLT         # TAILCALL
.Lfunc_end198:
	.size	halide_profiler_report, .Lfunc_end198-halide_profiler_report
                                        # -- End function
	.section	.text.halide_profiler_reset,"ax",@progbits
	.weak	halide_profiler_reset           # -- Begin function halide_profiler_reset
	.p2align	4, 0x90
	.type	halide_profiler_reset,@function
halide_profiler_reset:                  # @halide_profiler_reset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	callq	halide_profiler_get_state@PLT
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	halide_mutex_lock@PLT
	movq	%rbx, %rdi
	callq	halide_profiler_reset_unlocked@PLT
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	halide_mutex_unlock@PLT         # TAILCALL
.Lfunc_end199:
	.size	halide_profiler_reset, .Lfunc_end199-halide_profiler_reset
                                        # -- End function
	.section	.text.halide_profiler_pipeline_end,"ax",@progbits
	.weak	halide_profiler_pipeline_end    # -- Begin function halide_profiler_pipeline_end
	.p2align	4, 0x90
	.type	halide_profiler_pipeline_end,@function
halide_profiler_pipeline_end:           # @halide_profiler_pipeline_end
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-1, 16(%rsi)
	popq	%rbp
	retq
.Lfunc_end200:
	.size	halide_profiler_pipeline_end, .Lfunc_end200-halide_profiler_pipeline_end
                                        # -- End function
	.section	.text.halide_msan_annotate_memory_is_initialized,"ax",@progbits
	.weak	halide_msan_annotate_memory_is_initialized # -- Begin function halide_msan_annotate_memory_is_initialized
	.p2align	4, 0x90
	.type	halide_msan_annotate_memory_is_initialized,@function
halide_msan_annotate_memory_is_initialized: # @halide_msan_annotate_memory_is_initialized
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end201:
	.size	halide_msan_annotate_memory_is_initialized, .Lfunc_end201-halide_msan_annotate_memory_is_initialized
                                        # -- End function
	.section	.text.halide_msan_check_memory_is_initialized,"ax",@progbits
	.weak	halide_msan_check_memory_is_initialized # -- Begin function halide_msan_check_memory_is_initialized
	.p2align	4, 0x90
	.type	halide_msan_check_memory_is_initialized,@function
halide_msan_check_memory_is_initialized: # @halide_msan_check_memory_is_initialized
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end202:
	.size	halide_msan_check_memory_is_initialized, .Lfunc_end202-halide_msan_check_memory_is_initialized
                                        # -- End function
	.section	.text.halide_msan_check_buffer_is_initialized,"ax",@progbits
	.weak	halide_msan_check_buffer_is_initialized # -- Begin function halide_msan_check_buffer_is_initialized
	.p2align	4, 0x90
	.type	halide_msan_check_buffer_is_initialized,@function
halide_msan_check_buffer_is_initialized: # @halide_msan_check_buffer_is_initialized
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end203:
	.size	halide_msan_check_buffer_is_initialized, .Lfunc_end203-halide_msan_check_buffer_is_initialized
                                        # -- End function
	.section	.text.halide_msan_annotate_buffer_is_initialized,"ax",@progbits
	.weak	halide_msan_annotate_buffer_is_initialized # -- Begin function halide_msan_annotate_buffer_is_initialized
	.p2align	4, 0x90
	.type	halide_msan_annotate_buffer_is_initialized,@function
halide_msan_annotate_buffer_is_initialized: # @halide_msan_annotate_buffer_is_initialized
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end204:
	.size	halide_msan_annotate_buffer_is_initialized, .Lfunc_end204-halide_msan_annotate_buffer_is_initialized
                                        # -- End function
	.section	.text.halide_msan_annotate_buffer_is_initialized_as_destructor,"ax",@progbits
	.weak	halide_msan_annotate_buffer_is_initialized_as_destructor # -- Begin function halide_msan_annotate_buffer_is_initialized_as_destructor
	.p2align	4, 0x90
	.type	halide_msan_annotate_buffer_is_initialized_as_destructor,@function
halide_msan_annotate_buffer_is_initialized_as_destructor: # @halide_msan_annotate_buffer_is_initialized_as_destructor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	retq
.Lfunc_end205:
	.size	halide_msan_annotate_buffer_is_initialized_as_destructor, .Lfunc_end205-halide_msan_annotate_buffer_is_initialized_as_destructor
                                        # -- End function
	.section	.text.halide_default_can_use_target_features,"ax",@progbits
	.weak	halide_default_can_use_target_features # -- Begin function halide_default_can_use_target_features
	.p2align	4, 0x90
	.type	halide_default_can_use_target_features,@function
halide_default_can_use_target_features: # @halide_default_can_use_target_features
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movq	%rsi, %r14
	movl	%edi, %ebx
	movq	_ZN6Halide7Runtime8Internal36halide_cpu_features_initialized_lockE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_lock@PLT
	movq	_ZN6Halide7Runtime8Internal31halide_cpu_features_initializedE@GOTPCREL(%rip), %r12
	cmpb	$0, (%r12)
	je	.LBB206_1
# %bb.2:
	movq	_ZN6Halide7Runtime8Internal36halide_cpu_features_initialized_lockE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_unlock@PLT
	cmpl	$2, %ebx
	jne	.LBB206_3
.LBB206_4:
	movq	_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdx
	andq	(%r14), %rdx
	jne	.LBB206_5
	jmp	.LBB206_6
.LBB206_1:
	leaq	-64(%rbp), %r15
	movq	%r15, %rdi
	callq	_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv@PLT
	movq	_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE@GOTPCREL(%rip), %rdi
	movl	$32, %edx
	movq	%r15, %rsi
	callq	memcpy@PLT
	movb	$1, (%r12)
	movq	_ZN6Halide7Runtime8Internal36halide_cpu_features_initialized_lockE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_unlock@PLT
	cmpl	$2, %ebx
	je	.LBB206_4
.LBB206_3:
	leaq	.L.str.200(%rip), %rsi
	xorl	%edi, %edi
	callq	halide_error@PLT
	movq	_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdx
	andq	(%r14), %rdx
	je	.LBB206_6
.LBB206_5:
	movq	16(%rcx), %rsi
	xorl	%eax, %eax
	andnq	%rdx, %rsi, %rdx
	jne	.LBB206_9
.LBB206_6:
	movq	8(%rcx), %rdx
	andq	8(%r14), %rdx
	je	.LBB206_8
# %bb.7:
	movq	24(%rcx), %rcx
	xorl	%eax, %eax
	andnq	%rdx, %rcx, %rcx
	jne	.LBB206_9
.LBB206_8:
	movl	$1, %eax
.LBB206_9:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end206:
	.size	halide_default_can_use_target_features, .Lfunc_end206-halide_default_can_use_target_features
                                        # -- End function
	.section	.text.halide_set_custom_can_use_target_features,"ax",@progbits
	.weak	halide_set_custom_can_use_target_features # -- Begin function halide_set_custom_can_use_target_features
	.p2align	4, 0x90
	.type	halide_set_custom_can_use_target_features,@function
halide_set_custom_can_use_target_features: # @halide_set_custom_can_use_target_features
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end207:
	.size	halide_set_custom_can_use_target_features, .Lfunc_end207-halide_set_custom_can_use_target_features
                                        # -- End function
	.section	.text.halide_can_use_target_features,"ax",@progbits
	.weak	halide_can_use_target_features  # -- Begin function halide_can_use_target_features
	.p2align	4, 0x90
	.type	halide_can_use_target_features,@function
halide_can_use_target_features:         # @halide_can_use_target_features
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                           # TAILCALL
.Lfunc_end208:
	.size	halide_can_use_target_features, .Lfunc_end208-halide_can_use_target_features
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function _ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv
.LCPI209_0:
	.quad	17042430231280                  # 0xf80000002f0
	.quad	0                               # 0x0
	.section	.text._ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv
	.p2align	4, 0x90
	.type	_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv,@function
_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv: # @_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	%rdi, %r8
	vmovaps	.LCPI209_0(%rip), %xmm0         # xmm0 = [17042430231280,0]
	vmovups	%ymm0, (%rdi)
	movq	$1, -56(%rbp)
	#APP

	xchgl	%esi, %ebx
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %ecx
	cpuid
	movl	%eax, -56(%rbp)
	movl	%ebx, -52(%rbp)
	movl	%ecx, -48(%rbp)
	movl	%edx, -44(%rbp)
	xchgl	%esi, %ebx

	#NO_APP
	movl	-48(%rbp), %eax
	movq	%rax, %rcx
	shrq	$15, %rcx
	andl	$16, %ecx
	movq	%rax, %rdx
	shrq	$23, %rdx
	andl	$32, %edx
	orq	%rcx, %rdx
	movq	%rax, %rcx
	shrq	$20, %rcx
	andl	$512, %ecx                      # imm = 0x200
	leaq	(%rdx,%rcx), %rsi
	testl	$4096, %eax                     # imm = 0x1000
	leaq	128(%rcx,%rdx), %rdi
	cmoveq	%rsi, %rdi
	testl	$805834752, %eax                # imm = 0x30081000
	je	.LBB209_2
# %bb.1:
	movq	%rdi, 16(%r8)
.LBB209_2:
	andl	$1879048192, %eax               # imm = 0x70000000
	cmpl	$1879048192, %eax               # imm = 0x70000000
	jne	.LBB209_10
# %bb.3:
	movq	$7, -24(%rbp)
	#APP

	xchgl	%esi, %ebx
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	cpuid
	movl	%eax, -24(%rbp)
	movl	%ebx, -20(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%edx, -12(%rbp)
	xchgl	%esi, %ebx

	#NO_APP
	movl	-20(%rbp), %eax
	testb	$32, %al
	je	.LBB209_5
# %bb.4:
	orq	$64, %rdi
	movq	%rdi, 16(%r8)
.LBB209_5:
	movl	%eax, %ecx
	andl	$268500992, %ecx                # imm = 0x10010000
	cmpl	$268500992, %ecx                # imm = 0x10010000
	jne	.LBB209_10
# %bb.6:
	movl	%eax, %ecx
	andl	$469827584, %ecx                # imm = 0x1C010000
	xorl	%edx, %edx
	cmpl	$469827584, %ecx                # imm = 0x1C010000
	sete	%dl
	shlq	$40, %rdx
	orq	%rdi, %rdx
	movabsq	$549755813888, %rcx             # imm = 0x8000000000
	orq	%rdx, %rcx
	movl	%eax, %esi
	andl	$-805109760, %esi               # imm = 0xD0030000
	movabsq	$2748779069440, %rdi            # imm = 0x28000000000
	orq	%rdx, %rdi
	cmpl	$-805109760, %esi               # imm = 0xD0030000
	cmovneq	%rcx, %rdi
	movq	%rdi, 16(%r8)
	andl	$-803012608, %eax               # imm = 0xD0230000
	cmpl	$-803012608, %eax               # imm = 0xD0230000
	jne	.LBB209_10
# %bb.7:
	movabsq	$4398046511104, %rax            # imm = 0x40000000000
	orq	%rdi, %rax
	movq	%rax, 16(%r8)
	movabsq	$4294967303, %rax               # imm = 0x100000007
	movq	%rax, -40(%rbp)
	#APP

	xchgl	%esi, %ebx
	movl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	cpuid
	movl	%eax, -40(%rbp)
	movl	%ebx, -36(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%edx, -28(%rbp)
	xchgl	%esi, %ebx

	#NO_APP
	testb	$8, -15(%rbp)
	je	.LBB209_10
# %bb.8:
	testb	$32, -40(%rbp)
	je	.LBB209_10
# %bb.9:
	movabsq	$13194139533312, %rax           # imm = 0xC0000000000
	orq	%rax, %rdi
	movq	%rdi, 16(%r8)
.LBB209_10:
	movq	%r8, %rax
	popq	%rbx
	popq	%rbp
	vzeroupper
	retq
.Lfunc_end209:
	.size	_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv, .Lfunc_end209-_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv
                                        # -- End function
	.section	.text.halide_use_jit_module,"ax",@progbits
	.weak	halide_use_jit_module           # -- Begin function halide_use_jit_module
	.p2align	4, 0x90
	.type	halide_use_jit_module,@function
halide_use_jit_module:                  # @halide_use_jit_module
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	retq
.Lfunc_end210:
	.size	halide_use_jit_module, .Lfunc_end210-halide_use_jit_module
                                        # -- End function
	.section	.text.halide_release_jit_module,"ax",@progbits
	.weak	halide_release_jit_module       # -- Begin function halide_release_jit_module
	.p2align	4, 0x90
	.type	halide_release_jit_module,@function
halide_release_jit_module:              # @halide_release_jit_module
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	retq
.Lfunc_end211:
	.size	halide_release_jit_module, .Lfunc_end211-halide_release_jit_module
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function camera_pipe
.LCPI212_0:
	.long	0                               # 0x0
	.long	4                               # 0x4
	.long	1                               # 0x1
	.long	0                               # 0x0
.LCPI212_1:
	.long	0                               # 0x0
	.long	3                               # 0x3
	.long	4                               # 0x4
	.long	0                               # 0x0
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5
.LCPI212_2:
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	65536                           # 0x10000
	.quad	262144                          # 0x40000
.LCPI212_3:
	.quad	32                              # 0x20
	.quad	268435456                       # 0x10000000
	.quad	0                               # 0x0
	.quad	0                               # 0x0
.LCPI212_4:
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	256                             # 0x100
.LCPI212_5:
	.quad	64                              # 0x40
	.quad	128                             # 0x80
	.quad	536870912                       # 0x20000000
	.quad	0                               # 0x0
.LCPI212_6:
	.quad	0                               # 0x0
	.quad	4096                            # 0x1000
	.quad	16384                           # 0x4000
	.quad	0                               # 0x0
.LCPI212_7:
	.quad	134217728                       # 0x8000000
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	16                              # 0x10
.LCPI212_8:
	.quad	2                               # 0x2
	.quad	67108864                        # 0x4000000
	.quad	4                               # 0x4
	.quad	8                               # 0x8
.LCPI212_23:
	.long	24                              # 0x18
	.long	25                              # 0x19
	.long	26                              # 0x1a
	.long	27                              # 0x1b
	.long	28                              # 0x1c
	.long	29                              # 0x1d
	.long	30                              # 0x1e
	.long	31                              # 0x1f
.LCPI212_24:
	.long	16                              # 0x10
	.long	17                              # 0x11
	.long	18                              # 0x12
	.long	19                              # 0x13
	.long	20                              # 0x14
	.long	21                              # 0x15
	.long	22                              # 0x16
	.long	23                              # 0x17
.LCPI212_25:
	.long	8                               # 0x8
	.long	9                               # 0x9
	.long	10                              # 0xa
	.long	11                              # 0xb
	.long	12                              # 0xc
	.long	13                              # 0xd
	.long	14                              # 0xe
	.long	15                              # 0xf
.LCPI212_26:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	4                               # 0x4
	.long	5                               # 0x5
	.long	6                               # 0x6
	.long	7                               # 0x7
.LCPI212_27:
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
.LCPI212_28:
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
.LCPI212_29:
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
.LCPI212_30:
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
.LCPI212_31:
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
.LCPI212_32:
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
.LCPI212_33:
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
.LCPI212_34:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
.LCPI212_64:
	.zero	32,255
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI212_9:
	.long	0x3c23d70a                      # float 0.00999999977
.LCPI212_10:
	.long	0xbf317218                      # float -0.693147182
.LCPI212_11:
	.long	0x3be32166                      # float 0.00693147164
.LCPI212_12:
	.long	0x39a797f3                      # float 3.19659332E-4
.LCPI212_13:
	.long	0x3c0b192a                      # float 0.00848988629
.LCPI212_14:
	.long	0x3e2aae1f                      # float 0.166679844
.LCPI212_15:
	.long	0x3f800000                      # float 1
.LCPI212_16:
	.long	0x3a9c2e66                      # float 0.00119156833
.LCPI212_17:
	.long	0x3d2a66bc                      # float 0.0416018814
.LCPI212_18:
	.long	0x3effffde                      # float 0.499998987
.LCPI212_19:
	.long	0x7f800000                      # float +Inf
.LCPI212_20:
	.long	0x3f000000                      # float 0.5
.LCPI212_21:
	.long	0xc0000000                      # float -2
.LCPI212_22:
	.long	0x40000000                      # float 2
.LCPI212_35:
	.long	2155872255                      # 0x807fffff
.LCPI212_36:
	.long	127                             # 0x7f
.LCPI212_37:
	.long	0xbf800000                      # float -1
.LCPI212_38:
	.long	0x3d5162f5                      # float 0.0511197634
.LCPI212_39:
	.long	0x3e19502f                      # float 0.149719939
.LCPI212_40:
	.long	0x3e4c9a1f                      # float 0.199806675
.LCPI212_41:
	.long	0x3eaaaacd                      # float 0.333334357
.LCPI212_42:
	.long	0xbdf18a20                      # float -0.117939234
.LCPI212_43:
	.long	0xbe2caabc                      # float -0.16862005
.LCPI212_44:
	.long	0xbe7fe8f6                      # float -0.249912113
.LCPI212_45:
	.long	0xbf000012                      # float -0.500001073
.LCPI212_46:
	.long	0x3f317218                      # float 0.693147182
.LCPI212_47:
	.long	0xff800000                      # float -Inf
.LCPI212_48:
	.long	0x3fb8aa3b                      # float 1.44269502
.LCPI212_49:
	.long	4294967169                      # 0xffffff81
.LCPI212_50:
	.long	128                             # 0x80
.LCPI212_51:
	.long	0x80000000                      # float -0
.LCPI212_52:
	.long	0x7fc00000                      # float NaN
.LCPI212_53:
	.long	0x437f0000                      # float 255
.LCPI212_54:
	.long	0x437e8000                      # float 254.5
.LCPI212_55:
	.long	0xbf000000                      # float -0.5
.LCPI212_57:
	.long	32                              # 0x20
.LCPI212_58:
	.long	0x45b835e5                      # float 5894.73681
.LCPI212_59:
	.long	0xbf579436                      # float -0.842105269
.LCPI212_60:
	.long	0x3febca1b                      # float 1.84210527
.LCPI212_61:
	.long	0x43800000                      # float 256
.LCPI212_62:
	.long	0x42000000                      # float 32
.LCPI212_63:
	.long	0x00000000                      # float 0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI212_56:
	.quad	32                              # 0x20
	.section	.text.camera_pipe,"ax",@progbits
	.globl	camera_pipe
	.p2align	4, 0x90
	.type	camera_pipe,@function
camera_pipe:                            # @camera_pipe
# %bb.0:                                # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$3680, %rsp                     # imm = 0xE60
	movl	%r8d, 1152(%rsp)                # 4-byte Spill
	movl	%ecx, 1216(%rsp)                # 4-byte Spill
	vmovss	%xmm3, 156(%rsp)                # 4-byte Spill
	vmovss	%xmm2, 1472(%rsp)               # 4-byte Spill
	vmovss	%xmm1, 1120(%rsp)               # 4-byte Spill
	vmovss	%xmm0, 152(%rsp)                # 4-byte Spill
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movabsq	$-9223372036854775808, %rdi     # imm = 0x8000000000000000
	xorl	%eax, %eax
	testq	%r9, %r9
	sete	%al
	xorl	%ecx, %ecx
	testq	%rdx, %rdx
	sete	%cl
	xorl	%edx, %edx
	testq	%rsi, %rsi
	sete	%dl
	leaq	8(%rdi), %rsi
	testq	%rbx, %rbx
	cmovneq	%rdi, %rsi
	leaq	(%rsi,%rdx,4), %rdx
	leaq	(%rdx,%rcx,2), %rcx
	orq	%rax, %rcx
	xorl	%eax, %eax
	tzcntq	%rcx, %rax
	cmpl	$3, %eax
	jbe	.LBB212_75
# %bb.1:                                # %no_errors_bb
	movq	%r9, %r14
	movq	16(%rbx), %rax
	movq	%rax, 248(%rsp)                 # 8-byte Spill
	leaq	32(%rbx), %rsi
	leaq	12(%rsp), %rdi
	movl	$4, %edx
	callq	memcpy@PLT
	movl	12(%rsp), %eax
	movl	%eax, 160(%rsp)                 # 4-byte Spill
	movq	24(%rbx), %rax
	movq	%rax, 1088(%rsp)                # 8-byte Spill
	movl	36(%rbx), %eax
	movl	%eax, 704(%rsp)                 # 4-byte Spill
	movq	40(%rbx), %rax
	movl	(%rax), %r12d
	movl	4(%rax), %ecx
	movq	%rcx, 352(%rsp)                 # 8-byte Spill
	movl	8(%rax), %ecx
	movl	%ecx, 672(%rsp)                 # 4-byte Spill
	movl	16(%rax), %ecx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movl	20(%rax), %ecx
	movq	%rcx, 320(%rsp)                 # 8-byte Spill
	movl	24(%rax), %eax
	movl	%eax, 60(%rsp)                  # 4-byte Spill
	movq	16(%r13), %rax
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	leaq	32(%r13), %rsi
	leaq	12(%rsp), %rdi
	movl	$4, %edx
	callq	memcpy@PLT
	movl	12(%rsp), %eax
	movl	%eax, 640(%rsp)                 # 4-byte Spill
	movq	24(%r13), %rax
	movq	%rax, 464(%rsp)                 # 8-byte Spill
	movl	36(%r13), %eax
	movl	%eax, 608(%rsp)                 # 4-byte Spill
	movq	40(%r13), %rax
	movl	(%rax), %ecx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	movl	4(%rax), %ecx
	movq	%rcx, 288(%rsp)                 # 8-byte Spill
	movl	8(%rax), %ecx
	movl	%ecx, 576(%rsp)                 # 4-byte Spill
	movl	16(%rax), %ecx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movl	20(%rax), %ecx
	movq	%rcx, 256(%rsp)                 # 8-byte Spill
	movslq	24(%rax), %rax
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	movq	16(%r15), %rax
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	leaq	32(%r15), %rsi
	leaq	12(%rsp), %rdi
	movl	$4, %edx
	callq	memcpy@PLT
	movl	12(%rsp), %eax
	movl	%eax, 544(%rsp)                 # 4-byte Spill
	movq	24(%r15), %rax
	movq	%rax, 1440(%rsp)                # 8-byte Spill
	movl	36(%r15), %eax
	movl	%eax, 512(%rsp)                 # 4-byte Spill
	movq	40(%r15), %rax
	movl	(%rax), %ecx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	movl	4(%rax), %ecx
	movq	%rcx, 416(%rsp)                 # 8-byte Spill
	movl	8(%rax), %ecx
	movl	%ecx, 1056(%rsp)                # 4-byte Spill
	movl	16(%rax), %ecx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movl	20(%rax), %ecx
	movq	%rcx, 384(%rsp)                 # 8-byte Spill
	movslq	24(%rax), %rax
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	movq	16(%r14), %rax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	leaq	32(%r14), %rsi
	leaq	12(%rsp), %rdi
	movl	$4, %edx
	callq	memcpy@PLT
	movl	12(%rsp), %eax
	movl	%eax, 1024(%rsp)                # 4-byte Spill
	movq	24(%r14), %rax
	movq	%rax, 1408(%rsp)                # 8-byte Spill
	movl	36(%r14), %eax
	movl	%eax, 992(%rsp)                 # 4-byte Spill
	movq	40(%r14), %rax
	movl	(%rax), %ecx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movl	4(%rax), %r8d
	movl	8(%rax), %ecx
	movl	%ecx, 928(%rsp)                 # 4-byte Spill
	movl	16(%rax), %r11d
	movl	20(%rax), %edi
	movl	24(%rax), %r9d
	movl	32(%rax), %ecx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movl	36(%rax), %ecx
	movq	%rcx, 960(%rsp)                 # 8-byte Spill
	movl	40(%rax), %r10d
	cmpq	$0, 16(%rbx)
	movq	%rdi, %rax
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	jne	.LBB212_3
# %bb.2:                                # %_halide_buffer_is_bounds_query.exit
	cmpq	$0, (%rbx)
	je	.LBB212_6
.LBB212_3:                              # %after_bb
	cmpq	$0, 16(%r13)
	jne	.LBB212_7
.LBB212_4:                              # %_halide_buffer_is_bounds_query.exit96
	cmpq	$0, (%r13)
	jne	.LBB212_7
# %bb.5:                                # %then_bb5
	movq	40(%r13), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r13)
	movq	$0, 16(%r13)
	movabsq	$8590008322, %rcx               # imm = 0x200012002
	movq	%rcx, 32(%r13)
	vmovaps	.LCPI212_0(%rip), %xmm0         # xmm0 = [0,4,1,0]
	vmovups	%xmm0, (%rax)
	movq	40(%r13), %rax
	vmovaps	.LCPI212_1(%rip), %xmm0         # xmm0 = [0,3,4,0]
	vmovups	%xmm0, 16(%rax)
	movq	$0, 24(%r13)
	jmp	.LBB212_7
.LBB212_6:                              # %then_bb
	movq	40(%rbx), %rax
	movl	%r8d, %ecx
	andl	$-32, %ecx
	cmpl	$25, %ecx
	movl	$24, %edx
	movl	$24, %esi
	cmovll	%ecx, %esi
	addl	$-14, %esi
	cmpl	$23, %ecx
	cmovlel	%edx, %ecx
	addl	$12, %ecx
	movl	%edi, %edx
	andl	$-32, %edx
	orl	$12, %edx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	movabsq	$8590004225, %rdi               # imm = 0x200011001
	movq	%rdi, 32(%rbx)
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movl	%esi, (%rax)
	movl	%ecx, 4(%rax)
	movq	$1, 8(%rax)
	movq	40(%rbx), %rax
	movl	$6, 16(%rax)
	movl	%edx, 20(%rax)
	movl	%ecx, 24(%rax)
	movl	$0, 28(%rax)
	movq	$0, 24(%rbx)
	cmpq	$0, 16(%r13)
	je	.LBB212_4
.LBB212_7:                              # %after_bb4
	cmpq	$0, 16(%r15)
	jne	.LBB212_10
# %bb.8:                                # %_halide_buffer_is_bounds_query.exit97
	cmpq	$0, (%r15)
	jne	.LBB212_10
# %bb.9:                                # %then_bb8
	movq	40(%r15), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r15)
	movq	$0, 16(%r15)
	movabsq	$8590008322, %rcx               # imm = 0x200012002
	movq	%rcx, 32(%r15)
	vmovaps	.LCPI212_0(%rip), %xmm0         # xmm0 = [0,4,1,0]
	vmovups	%xmm0, (%rax)
	movq	40(%r15), %rax
	vmovaps	.LCPI212_1(%rip), %xmm0         # xmm0 = [0,3,4,0]
	vmovups	%xmm0, 16(%rax)
	movq	$0, 24(%r15)
.LBB212_10:                             # %after_bb7
	movl	%r8d, %eax
	sarl	$5, %eax
	movl	%eax, 52(%rsp)                  # 4-byte Spill
	movl	%edi, %eax
	sarl	$5, %eax
	movl	%eax, 56(%rsp)                  # 4-byte Spill
	cmpq	$0, 16(%r14)
	je	.LBB212_12
.LBB212_11:
	xorl	%ecx, %ecx
	cmpq	$0, 16(%r15)
	je	.LBB212_73
.LBB212_14:
	xorl	%edx, %edx
	movl	160(%rsp), %r15d                # 4-byte Reload
	cmpq	$0, 16(%rbx)
	je	.LBB212_74
.LBB212_15:
	xorl	%esi, %esi
	xorl	%eax, %eax
	cmpq	$0, 16(%r13)
	movl	$0, %edi
	jne	.LBB212_17
.LBB212_16:
	cmpq	$0, (%r13)
	sete	%dil
.LBB212_17:                             # %_halide_buffer_is_bounds_query.exit106
	orb	%dil, %sil
	orb	%sil, %dl
	orb	%dl, %cl
	jne	.LBB212_70
# %bb.18:                               # %then_bb14
	movl	%r10d, 44(%rsp)                 # 4-byte Spill
	movl	%r9d, 48(%rsp)                  # 4-byte Spill
	movq	%rbx, 880(%rsp)                 # 8-byte Spill
	movq	%r14, 888(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	cmpl	$69633, %r15d                   # imm = 0x11001
	setne	%al
	movq	%rax, 1984(%rsp)                # 8-byte Spill
	xorl	%eax, %eax
	cmpl	$2, 704(%rsp)                   # 4-byte Folded Reload
	sete	%al
	movl	%eax, 1920(%rsp)                # 4-byte Spill
	xorl	%eax, %eax
	cmpl	$73730, 640(%rsp)               # 4-byte Folded Reload
                                        # imm = 0x12002
	sete	%al
	movl	%eax, 1952(%rsp)                # 4-byte Spill
	xorl	%eax, %eax
	cmpl	$2, 608(%rsp)                   # 4-byte Folded Reload
	sete	%al
	movl	%eax, 896(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	cmpl	$73730, 544(%rsp)               # 4-byte Folded Reload
                                        # imm = 0x12002
	sete	%al
	movl	%eax, 1856(%rsp)                # 4-byte Spill
	xorl	%r15d, %r15d
	cmpl	$2, 512(%rsp)                   # 4-byte Folded Reload
	sete	%r15b
	xorl	%eax, %eax
	cmpl	$67585, 1024(%rsp)              # 4-byte Folded Reload
                                        # imm = 0x10801
	sete	%al
	movl	%eax, 1792(%rsp)                # 4-byte Spill
	xorl	%eax, %eax
	cmpl	$3, 992(%rsp)                   # 4-byte Folded Reload
	sete	%al
	movl	%eax, 1184(%rsp)                # 4-byte Spill
	movl	%r8d, %ecx
	andl	$-32, %ecx
	cmpl	$25, %ecx
	movl	$24, %edx
	cmovll	%ecx, %edx
	leal	14(%r12), %eax
	movl	%edx, 40(%rsp)                  # 4-byte Spill
	cmpl	%edx, %eax
	setg	%al
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	leal	22(%rcx), %ecx
	movq	%r12, 200(%rsp)                 # 8-byte Spill
	movq	352(%rsp), %rdx                 # 8-byte Reload
	leal	(%rdx,%r12), %esi
	movl	%esi, 1632(%rsp)                # 4-byte Spill
	cmpl	%esi, %ecx
	setg	%cl
	orb	%al, %cl
	movb	%cl, 20(%rsp)                   # 1-byte Spill
	movq	%rdx, %rcx
	shrq	$31, %rcx
	movq	%rcx, %rax
	movq	%rcx, 2016(%rsp)                # 8-byte Spill
	shlq	$9, %rcx
	movq	%rcx, 1888(%rsp)                # 8-byte Spill
	movq	128(%rsp), %rdx                 # 8-byte Reload
	cmpl	$6, %edx
	setg	%al
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movl	%edi, %ecx
	andl	$-32, %ecx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	addl	$18, %ecx
	movq	320(%rsp), %r12                 # 8-byte Reload
	addl	%r12d, %edx
	movl	%edx, 36(%rsp)                  # 4-byte Spill
	cmpl	%edx, %ecx
	setg	%cl
	orb	%al, %cl
	movzbl	%cl, %eax
	shlq	$10, %rax
	movq	%rax, 1824(%rsp)                # 8-byte Spill
	shrq	$20, %r12
	andl	$2048, %r12d                    # imm = 0x800
	movq	120(%rsp), %rcx                 # 8-byte Reload
	testl	%ecx, %ecx
	setg	%al
	movq	288(%rsp), %rdx                 # 8-byte Reload
	addl	%edx, %ecx
	movl	%ecx, 1600(%rsp)                # 4-byte Spill
	cmpl	$4, %ecx
	setl	%cl
	orb	%al, %cl
	movb	%cl, 1728(%rsp)                 # 1-byte Spill
	movq	%rdx, %rax
	shrq	$31, %rax
	movq	%rax, 800(%rsp)                 # 8-byte Spill
	shlq	$13, %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movq	112(%rsp), %rcx                 # 8-byte Reload
	testl	%ecx, %ecx
	setg	%al
	movq	256(%rsp), %r14                 # 8-byte Reload
	addl	%r14d, %ecx
	movl	%ecx, 1568(%rsp)                # 4-byte Spill
	cmpl	$3, %ecx
	setl	%cl
	orb	%al, %cl
	movb	%cl, 1696(%rsp)                 # 1-byte Spill
	shrq	$16, %r14
	andl	$32768, %r14d                   # imm = 0x8000
	movq	104(%rsp), %rcx                 # 8-byte Reload
	testl	%ecx, %ecx
	setg	%al
	movq	416(%rsp), %rsi                 # 8-byte Reload
	addl	%esi, %ecx
	movl	%ecx, 1536(%rsp)                # 4-byte Spill
	cmpl	$4, %ecx
	movq	%r11, %rdx
	setl	%r11b
	orb	%al, %r11b
	movq	%rsi, %rax
	shrq	$31, %rax
	movq	%rax, 768(%rsp)                 # 8-byte Spill
	shlq	$17, %rax
	movq	%rax, 1760(%rsp)                # 8-byte Spill
	movq	96(%rsp), %rcx                  # 8-byte Reload
	testl	%ecx, %ecx
	setg	%al
	movq	384(%rsp), %r9                  # 8-byte Reload
	addl	%r9d, %ecx
	movl	%ecx, 1504(%rsp)                # 4-byte Spill
	cmpl	$3, %ecx
	setl	%r10b
	orb	%al, %r10b
	shrq	$12, %r9
	andl	$524288, %r9d                   # imm = 0x80000
	xorl	%eax, %eax
	movq	80(%rsp), %rcx                  # 8-byte Reload
	testl	%ecx, %ecx
	setg	%al
	movl	%r8d, %esi
	andl	$31, %esi
	addl	%ecx, %esi
	movl	%esi, 148(%rsp)                 # 4-byte Spill
	movl	%esi, %ebx
	shrl	$31, %ebx
	orq	%rax, %rbx
	shlq	$20, %rbx
	movq	%r8, %rax
	shrq	$31, %rax
	movq	%rax, 736(%rsp)                 # 8-byte Spill
	shlq	$21, %rax
	movq	%rax, 1664(%rsp)                # 8-byte Spill
	xorl	%eax, %eax
	testl	%edx, %edx
	setg	%al
	movl	%edi, %ecx
	andl	$31, %ecx
	movq	%rdx, 192(%rsp)                 # 8-byte Spill
	addl	%edx, %ecx
	movq	%r8, 480(%rsp)                  # 8-byte Spill
	movl	%ecx, 144(%rsp)                 # 4-byte Spill
	movl	%ecx, %r8d
	shrl	$31, %r8d
	orq	%rax, %r8
	vmovd	%r15d, %xmm0
	shlq	$22, %r8
	shrq	$8, %rdi
	andl	$8388608, %edi                  # imm = 0x800000
	movq	72(%rsp), %rcx                  # 8-byte Reload
	testl	%ecx, %ecx
	setg	%al
	movq	960(%rsp), %r13                 # 8-byte Reload
	addl	%r13d, %ecx
	movl	%ecx, 32(%rsp)                  # 4-byte Spill
	cmpl	$3, %ecx
	setl	%cl
	orb	%al, %cl
	movzbl	%cl, %r15d
	shlq	$24, %r15
	movq	%r13, %rsi
	shrq	$6, %rsi
	andl	$33554432, %esi                 # imm = 0x2000000
	xorl	%edx, %edx
	cmpl	$1, 672(%rsp)                   # 4-byte Folded Reload
	sete	%dl
	xorl	%ecx, %ecx
	cmpl	$1, 576(%rsp)                   # 4-byte Folded Reload
	sete	%cl
	xorl	%eax, %eax
	cmpl	$1, 1056(%rsp)                  # 4-byte Folded Reload
	sete	%al
	vpinsrb	$4, %eax, %xmm0, %xmm0
	movzbl	%r11b, %eax
	vpinsrb	$8, %eax, %xmm0, %xmm0
	movzbl	%r10b, %eax
	vpinsrb	$12, %eax, %xmm0, %xmm0
	vmovd	1792(%rsp), %xmm1               # 4-byte Folded Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vpinsrb	$4, 1184(%rsp), %xmm1, %xmm1    # 4-byte Folded Reload
	xorl	%eax, %eax
	cmpl	$1, 928(%rsp)                   # 4-byte Folded Reload
	sete	%al
	vpinsrb	$8, %eax, %xmm1, %xmm1
	movzbl	20(%rsp), %eax                  # 1-byte Folded Reload
	vpinsrb	$12, %eax, %xmm1, %xmm1
	vmovd	%ecx, %xmm2
	movzbl	1728(%rsp), %eax                # 1-byte Folded Reload
	vpinsrb	$4, %eax, %xmm2, %xmm2
	movzbl	1696(%rsp), %eax                # 1-byte Folded Reload
	vpinsrb	$8, %eax, %xmm2, %xmm2
	vpinsrb	$12, 1856(%rsp), %xmm2, %xmm2   # 4-byte Folded Reload
	vmovd	1920(%rsp), %xmm3               # 4-byte Folded Reload
                                        # xmm3 = mem[0],zero,zero,zero
	vpinsrb	$4, %edx, %xmm3, %xmm3
	vpinsrb	$8, 1952(%rsp), %xmm3, %xmm3    # 4-byte Folded Reload
	vpinsrb	$12, 896(%rsp), %xmm3, %xmm3    # 4-byte Folded Reload
	orq	1824(%rsp), %r15                # 8-byte Folded Reload
	orq	1984(%rsp), %r15                # 8-byte Folded Reload
	orq	1888(%rsp), %r15                # 8-byte Folded Reload
	orq	%r12, %r15
	orq	136(%rsp), %r15                 # 8-byte Folded Reload
	orq	%r14, %r15
	orq	1760(%rsp), %r15                # 8-byte Folded Reload
	orq	%r9, %r15
	orq	1664(%rsp), %r15                # 8-byte Folded Reload
	orq	%rbx, %r15
	vpslld	$31, %xmm0, %xmm0
	vpmovsxdq	%xmm0, %ymm0
	vmovapd	.LCPI212_3(%rip), %ymm4         # ymm4 = [32,268435456,0,0]
	vblendvpd	%ymm0, .LCPI212_2(%rip), %ymm4, %ymm0
	orq	%rdi, %r15
	orq	%r8, %r15
	vpslld	$31, %xmm1, %xmm1
	vpmovsxdq	%xmm1, %ymm1
	vmovapd	.LCPI212_5(%rip), %ymm4         # ymm4 = [64,128,536870912,0]
	vblendvpd	%ymm1, .LCPI212_4(%rip), %ymm4, %ymm1
	orq	%rsi, %r15
	vpslld	$31, %xmm2, %xmm2
	vpmovsxdq	%xmm2, %ymm2
	vmovapd	.LCPI212_7(%rip), %ymm4         # ymm4 = [134217728,0,0,16]
	vblendvpd	%ymm2, .LCPI212_6(%rip), %ymm4, %ymm2
	vorpd	%ymm1, %ymm2, %ymm1
	vorpd	%ymm1, %ymm0, %ymm0
	vpslld	$31, %xmm3, %xmm1
	vpsrad	$31, %xmm1, %xmm1
	vpmovsxdq	%xmm1, %ymm1
	vpandn	.LCPI212_8(%rip), %ymm1, %ymm1
	vpor	%ymm0, %ymm1, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vpshufd	$78, %xmm0, %xmm1               # xmm1 = xmm0[2,3,0,1]
	vpor	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rax
	orq	%rax, %r15
	movabsq	$-9223372036854775808, %rsi     # imm = 0x8000000000000000
	orq	%rsi, %r15
	xorl	%eax, %eax
	tzcntq	%r15, %rax
	cmpl	$29, %eax
	jbe	.LBB212_81
# %bb.19:                               # %no_errors_bb16
	movslq	352(%rsp), %rdx                 # 4-byte Folded Reload
	movslq	320(%rsp), %rsi                 # 4-byte Folded Reload
	movslq	288(%rsp), %rcx                 # 4-byte Folded Reload
	movslq	256(%rsp), %rdi                 # 4-byte Folded Reload
	movslq	416(%rsp), %rbx                 # 4-byte Folded Reload
	movslq	384(%rsp), %r8                  # 4-byte Folded Reload
	movslq	%r13d, %r10
	movq	%rdi, %rax
	movq	%rcx, 672(%rsp)                 # 8-byte Spill
	imulq	%rcx, %rax
	movq	%r8, %r11
	movq	%rbx, 608(%rsp)                 # 8-byte Spill
	imulq	%rbx, %r11
	movslq	480(%rsp), %rcx                 # 4-byte Folded Reload
	movslq	24(%rsp), %r9                   # 4-byte Folded Reload
	movq	%r9, %rbx
	movq	%rcx, 512(%rsp)                 # 8-byte Spill
	imulq	%rcx, %rbx
	movq	%rbx, %r14
	imulq	%r10, %r14
	movslq	60(%rsp), %rcx                  # 4-byte Folded Reload
	imulq	%rsi, %rcx
	movq	%rdx, 384(%rsp)                 # 8-byte Spill
	imulq	%rdx, %rsi
	movq	%rcx, %rdx
	negq	%rdx
	cmovlq	%rcx, %rdx
	xorl	%ecx, %ecx
	movq	%rdx, 640(%rsp)                 # 8-byte Spill
	cmpq	$2147483647, %rdx               # imm = 0x7FFFFFFF
	seta	%cl
	addq	%rcx, %rcx
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	movq	%rsi, 704(%rsp)                 # 8-byte Spill
	cmpq	$2147483647, %rsi               # imm = 0x7FFFFFFF
	movl	$0, %ecx
	setg	%cl
	shlq	$2, %rcx
	movq	%rcx, 352(%rsp)                 # 8-byte Spill
	movq	800(%rsp), %rcx                 # 8-byte Reload
	shll	$3, %ecx
	movq	%rcx, 800(%rsp)                 # 8-byte Spill
	imulq	216(%rsp), %rdi                 # 8-byte Folded Reload
	movq	%rdi, %rcx
	negq	%rcx
	cmovlq	%rdi, %rcx
	movq	%rcx, 992(%rsp)                 # 8-byte Spill
	cmpq	$2147483647, %rcx               # imm = 0x7FFFFFFF
	movl	$0, %ecx
	seta	%cl
	shlq	$4, %rcx
	movq	%rcx, 320(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rax, 576(%rsp)                 # 8-byte Spill
	cmpq	$2147483647, %rax               # imm = 0x7FFFFFFF
	setg	%cl
	shlq	$5, %rcx
	movq	%rcx, 288(%rsp)                 # 8-byte Spill
	movq	768(%rsp), %rax                 # 8-byte Reload
	shll	$6, %eax
	movq	%rax, 768(%rsp)                 # 8-byte Spill
	imulq	208(%rsp), %r8                  # 8-byte Folded Reload
	movq	%r8, %rax
	negq	%rax
	cmovlq	%r8, %rax
	movq	%rax, 960(%rsp)                 # 8-byte Spill
	cmpq	$2147483647, %rax               # imm = 0x7FFFFFFF
	movl	$0, %eax
	seta	%al
	shlq	$7, %rax
	movq	%rax, 256(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%r11, 544(%rsp)                 # 8-byte Spill
	cmpq	$2147483647, %r11               # imm = 0x7FFFFFFF
	setg	%al
	movslq	48(%rsp), %rdx                  # 4-byte Folded Reload
	imulq	%r9, %rdx
	shlq	$8, %rax
	movq	%rax, 416(%rsp)                 # 8-byte Spill
	movq	736(%rsp), %rax                 # 8-byte Reload
	shll	$9, %eax
	movq	%rax, 736(%rsp)                 # 8-byte Spill
	movq	%rdx, %rax
	negq	%rax
	cmovlq	%rdx, %rax
	xorl	%r9d, %r9d
	movq	%rax, 928(%rsp)                 # 8-byte Spill
	cmpq	$2147483647, %rax               # imm = 0x7FFFFFFF
	seta	%r9b
	shlq	$10, %r9
	xorl	%r13d, %r13d
	movq	%rbx, 1056(%rsp)                # 8-byte Spill
	cmpq	$2147483647, %rbx               # imm = 0x7FFFFFFF
	setg	%r13b
	movslq	44(%rsp), %r11                  # 4-byte Folded Reload
	imulq	%r10, %r11
	shlq	$11, %r13
	movq	%r11, %r8
	negq	%r8
	cmovlq	%r11, %r8
	xorl	%r10d, %r10d
	cmpq	$2147483647, %r8                # imm = 0x7FFFFFFF
	seta	%r10b
	shlq	$12, %r10
	xorl	%r11d, %r11d
	movq	%r14, 1024(%rsp)                # 8-byte Spill
	cmpq	$2147483647, %r14               # imm = 0x7FFFFFFF
	setg	%r11b
	shlq	$13, %r11
	movq	1088(%rsp), %rsi                # 8-byte Reload
	andl	$2, %esi
	shlq	$13, %rsi
	movq	464(%rsp), %rdx                 # 8-byte Reload
	andl	$2, %edx
	shlq	$14, %rdx
	movq	1440(%rsp), %rcx                # 8-byte Reload
	andl	$2, %ecx
	shlq	$15, %rcx
	movq	1408(%rsp), %rdi                # 8-byte Reload
	andl	$2, %edi
	shlq	$16, %rdi
	xorl	%r12d, %r12d
	cmpq	$0, 232(%rsp)                   # 8-byte Folded Reload
	sete	%r12b
	shlq	$19, %r12
	xorl	%r15d, %r15d
	cmpq	$0, 224(%rsp)                   # 8-byte Folded Reload
	sete	%r15b
	shlq	$20, %r15
	xorl	%r14d, %r14d
	cmpq	$0, 240(%rsp)                   # 8-byte Folded Reload
	sete	%r14b
	shlq	$21, %r14
	cmpq	$0, 248(%rsp)                   # 8-byte Folded Reload
	movabsq	$-9223372036854775808, %rbx     # imm = 0x8000000000000000
	leaq	262144(%rbx), %rax
	cmovneq	%rbx, %rax
	orq	%rsi, %rax
	movl	2016(%rsp), %esi                # 4-byte Reload
	orq	%rsi, %rax
	orq	%r12, %rax
	orq	352(%rsp), %rax                 # 8-byte Folded Reload
	orq	%rdx, %rax
	orq	800(%rsp), %rax                 # 8-byte Folded Reload
	orq	288(%rsp), %rax                 # 8-byte Folded Reload
	orq	160(%rsp), %rax                 # 8-byte Folded Reload
	orq	320(%rsp), %r15                 # 8-byte Folded Reload
	orq	%rax, %r15
	orq	768(%rsp), %rcx                 # 8-byte Folded Reload
	orq	416(%rsp), %rcx                 # 8-byte Folded Reload
	orq	%r14, %rcx
	orq	256(%rsp), %rcx                 # 8-byte Folded Reload
	orq	%rdi, %rcx
	orq	%r15, %rcx
	orq	736(%rsp), %r13                 # 8-byte Folded Reload
	orq	%r9, %r13
	orq	%r11, %r13
	orq	%r10, %r13
	orq	%rcx, %r13
	xorl	%eax, %eax
	tzcntq	%r13, %rax
	cmpl	$21, %eax
	vmovss	1472(%rsp), %xmm2               # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	jbe	.LBB212_83
# %bb.20:                               # %"produce curve"
	vmulss	.LCPI212_9(%rip), %xmm2, %xmm0
	vroundss	$9, %xmm0, %xmm0, %xmm1
	vcvttss2si	%xmm1, %eax
	vmovss	.LCPI212_15(%rip), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cmpl	$128, %eax
	movq	200(%rsp), %r10                 # 8-byte Reload
	movq	192(%rsp), %r9                  # 8-byte Reload
	jl	.LBB212_22
# %bb.21:                               # %"produce curve"
	vmovss	.LCPI212_19(%rip), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	480(%rsp), %rsi                 # 8-byte Reload
	cmpl	$-127, %eax
	jle	.LBB212_23
	jmp	.LBB212_24
.LBB212_12:                             # %_halide_buffer_is_bounds_query.exit100
	cmpq	$0, (%r14)
	je	.LBB212_71
.LBB212_13:                             # %after_bb10.thread
	cmpq	$0, (%r14)
	sete	%cl
	cmpq	$0, 16(%r15)
	jne	.LBB212_14
.LBB212_73:
	cmpq	$0, (%r15)
	sete	%dl
	movl	160(%rsp), %r15d                # 4-byte Reload
	cmpq	$0, 16(%rbx)
	jne	.LBB212_15
.LBB212_74:
	cmpq	$0, (%rbx)
	sete	%sil
	xorl	%eax, %eax
	cmpq	$0, 16(%r13)
	movl	$0, %edi
	jne	.LBB212_17
	jmp	.LBB212_16
.LBB212_22:
	vmulss	.LCPI212_10(%rip), %xmm1, %xmm1
	vfmadd231ss	.LCPI212_11(%rip), %xmm2, %xmm1 # xmm1 = (xmm2 * mem) + xmm1
	vmulss	%xmm1, %xmm1, %xmm2
	movl	%eax, %ecx
	shll	$23, %ecx
	addl	$1065353216, %ecx               # imm = 0x3F800000
	vmovss	.LCPI212_12(%rip), %xmm3        # xmm3 = mem[0],zero,zero,zero
	vfmadd213ss	.LCPI212_13(%rip), %xmm2, %xmm3 # xmm3 = (xmm2 * xmm3) + mem
	vfmadd213ss	.LCPI212_14(%rip), %xmm2, %xmm3 # xmm3 = (xmm2 * xmm3) + mem
	vfmadd213ss	%xmm0, %xmm2, %xmm3     # xmm3 = (xmm2 * xmm3) + xmm0
	vmovss	.LCPI212_16(%rip), %xmm4        # xmm4 = mem[0],zero,zero,zero
	vfmadd213ss	.LCPI212_17(%rip), %xmm2, %xmm4 # xmm4 = (xmm2 * xmm4) + mem
	vfmadd213ss	.LCPI212_18(%rip), %xmm2, %xmm4 # xmm4 = (xmm2 * xmm4) + mem
	vfmadd213ss	%xmm0, %xmm2, %xmm4     # xmm4 = (xmm2 * xmm4) + xmm0
	vfmadd231ss	%xmm3, %xmm1, %xmm4     # xmm4 = (xmm1 * xmm3) + xmm4
	vmovd	%ecx, %xmm1
	vmulss	%xmm1, %xmm4, %xmm1
	movq	480(%rsp), %rsi                 # 8-byte Reload
	cmpl	$-127, %eax
	jg	.LBB212_24
.LBB212_23:                             # %"produce curve"
	vxorps	%xmm1, %xmm1, %xmm1
.LBB212_24:                             # %"produce curve"
	vdivss	1120(%rsp), %xmm0, %xmm5        # 4-byte Folded Reload
	vroundss	$9, %xmm5, %xmm5, %xmm2
	vmulss	.LCPI212_20(%rip), %xmm2, %xmm0
	vroundss	$9, %xmm0, %xmm0, %xmm3
	vmovss	.LCPI212_21(%rip), %xmm0        # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm2, 136(%rsp)                # 4-byte Spill
	vfmadd213ss	%xmm2, %xmm0, %xmm3     # xmm3 = (xmm0 * xmm3) + xmm2
	vmovss	%xmm3, 20(%rsp)                 # 4-byte Spill
	movslq	1152(%rsp), %rax                # 4-byte Folded Reload
	movslq	1216(%rsp), %rcx                # 4-byte Folded Reload
	vfmadd231ss	.LCPI212_22(%rip), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovq	%rax, %xmm2
                                        # kill: def $eax killed $eax killed $rax
	subl	%ecx, %eax
	vcvtsi2ss	%eax, %xmm6, %xmm3
	vmovd	%ecx, %xmm4
	vpbroadcastd	%xmm4, %ymm4
	vmovdqa	%ymm4, 1760(%rsp)               # 32-byte Spill
	vbroadcastss	%xmm3, %ymm3
	vmovaps	%ymm3, 1728(%rsp)               # 32-byte Spill
	vmovaps	%xmm5, 464(%rsp)                # 16-byte Spill
	vbroadcastss	%xmm5, %ymm3
	vmovaps	%ymm3, 1408(%rsp)               # 32-byte Spill
	vmovq	%rcx, %xmm3
	vpbroadcastq	%xmm3, %ymm3
	vmovdqa	%ymm3, 1696(%rsp)               # 32-byte Spill
	vpbroadcastq	%xmm2, %ymm2
	vmovdqa	%ymm2, 1664(%rsp)               # 32-byte Spill
	vbroadcastss	%xmm0, %ymm0
	vmovaps	%ymm0, 1632(%rsp)               # 32-byte Spill
	vbroadcastss	%xmm1, %ymm0
	vmovaps	%ymm0, 1600(%rsp)               # 32-byte Spill
	vmovdqa	.LCPI212_23(%rip), %ymm2        # ymm2 = [24,25,26,27,28,29,30,31]
	vmovdqa	.LCPI212_24(%rip), %ymm10       # ymm10 = [16,17,18,19,20,21,22,23]
	vmovdqa	.LCPI212_25(%rip), %ymm1        # ymm1 = [8,9,10,11,12,13,14,15]
	vmovdqa	.LCPI212_26(%rip), %ymm0        # ymm0 = [0,1,2,3,4,5,6,7]
	vmovaps	.LCPI212_27(%rip), %ymm3        # ymm3 = [28,29,30,31]
	vmovaps	%ymm3, 416(%rsp)                # 32-byte Spill
	vmovaps	.LCPI212_28(%rip), %ymm3        # ymm3 = [24,25,26,27]
	vmovaps	%ymm3, 384(%rsp)                # 32-byte Spill
	xorl	%eax, %eax
	vmovaps	.LCPI212_29(%rip), %ymm3        # ymm3 = [20,21,22,23]
	vmovaps	%ymm3, 320(%rsp)                # 32-byte Spill
	vmovaps	.LCPI212_30(%rip), %ymm3        # ymm3 = [16,17,18,19]
	vmovaps	%ymm3, 256(%rsp)                # 32-byte Spill
	vmovaps	.LCPI212_31(%rip), %ymm3        # ymm3 = [12,13,14,15]
	vmovaps	%ymm3, 800(%rsp)                # 32-byte Spill
	vmovaps	.LCPI212_32(%rip), %ymm3        # ymm3 = [8,9,10,11]
	vmovaps	%ymm3, 160(%rsp)                # 32-byte Spill
	vmovaps	.LCPI212_33(%rip), %ymm3        # ymm3 = [4,5,6,7]
	vmovaps	%ymm3, 352(%rsp)                # 32-byte Spill
	vmovaps	.LCPI212_34(%rip), %ymm3        # ymm3 = [0,1,2,3]
	vmovaps	%ymm3, 288(%rsp)                # 32-byte Spill
	vpxor	%xmm4, %xmm4, %xmm4
	vbroadcastss	.LCPI212_35(%rip), %ymm3 # ymm3 = [2155872255,2155872255,2155872255,2155872255,2155872255,2155872255,2155872255,2155872255]
	vmovaps	%ymm3, 704(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI212_36(%rip), %ymm3 # ymm3 = [127,127,127,127,127,127,127,127]
	vmovaps	%ymm3, 768(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI212_37(%rip), %ymm3 # ymm3 = [-1.0E+0,-1.0E+0,-1.0E+0,-1.0E+0,-1.0E+0,-1.0E+0,-1.0E+0,-1.0E+0]
	vmovaps	%ymm3, 672(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI212_38(%rip), %ymm3 # ymm3 = [5.11197634E-2,5.11197634E-2,5.11197634E-2,5.11197634E-2,5.11197634E-2,5.11197634E-2,5.11197634E-2,5.11197634E-2]
	vmovaps	%ymm3, 1568(%rsp)               # 32-byte Spill
	vbroadcastss	.LCPI212_39(%rip), %ymm3 # ymm3 = [1.49719939E-1,1.49719939E-1,1.49719939E-1,1.49719939E-1,1.49719939E-1,1.49719939E-1,1.49719939E-1,1.49719939E-1]
	vmovaps	%ymm3, 1536(%rsp)               # 32-byte Spill
	vbroadcastss	.LCPI212_40(%rip), %ymm3 # ymm3 = [1.99806675E-1,1.99806675E-1,1.99806675E-1,1.99806675E-1,1.99806675E-1,1.99806675E-1,1.99806675E-1,1.99806675E-1]
	vmovaps	%ymm3, 1504(%rsp)               # 32-byte Spill
	vbroadcastss	.LCPI212_41(%rip), %ymm3 # ymm3 = [3.33334357E-1,3.33334357E-1,3.33334357E-1,3.33334357E-1,3.33334357E-1,3.33334357E-1,3.33334357E-1,3.33334357E-1]
	vmovaps	%ymm3, 2592(%rsp)               # 32-byte Spill
	vbroadcastss	.LCPI212_42(%rip), %ymm3 # ymm3 = [-1.17939234E-1,-1.17939234E-1,-1.17939234E-1,-1.17939234E-1,-1.17939234E-1,-1.17939234E-1,-1.17939234E-1,-1.17939234E-1]
	vmovaps	%ymm3, 2560(%rsp)               # 32-byte Spill
	vbroadcastss	.LCPI212_43(%rip), %ymm3 # ymm3 = [-1.6862005E-1,-1.6862005E-1,-1.6862005E-1,-1.6862005E-1,-1.6862005E-1,-1.6862005E-1,-1.6862005E-1,-1.6862005E-1]
	vmovaps	%ymm3, 640(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI212_44(%rip), %ymm3 # ymm3 = [-2.49912113E-1,-2.49912113E-1,-2.49912113E-1,-2.49912113E-1,-2.49912113E-1,-2.49912113E-1,-2.49912113E-1,-2.49912113E-1]
	vmovaps	%ymm3, 2528(%rsp)               # 32-byte Spill
	vbroadcastss	.LCPI212_45(%rip), %ymm3 # ymm3 = [-5.00001073E-1,-5.00001073E-1,-5.00001073E-1,-5.00001073E-1,-5.00001073E-1,-5.00001073E-1,-5.00001073E-1,-5.00001073E-1]
	vmovaps	%ymm3, 2496(%rsp)               # 32-byte Spill
	vbroadcastss	.LCPI212_46(%rip), %ymm3 # ymm3 = [6.93147182E-1,6.93147182E-1,6.93147182E-1,6.93147182E-1,6.93147182E-1,6.93147182E-1,6.93147182E-1,6.93147182E-1]
	vmovaps	%ymm3, 2464(%rsp)               # 32-byte Spill
	vbroadcastss	.LCPI212_47(%rip), %ymm3 # ymm3 = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]
	vmovaps	%ymm3, 608(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI212_48(%rip), %ymm3 # ymm3 = [1.44269502E+0,1.44269502E+0,1.44269502E+0,1.44269502E+0,1.44269502E+0,1.44269502E+0,1.44269502E+0,1.44269502E+0]
	vmovaps	%ymm3, 2432(%rsp)               # 32-byte Spill
	vbroadcastss	.LCPI212_49(%rip), %ymm3 # ymm3 = [4294967169,4294967169,4294967169,4294967169,4294967169,4294967169,4294967169,4294967169]
	vmovaps	%ymm3, 576(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI212_50(%rip), %ymm3 # ymm3 = [128,128,128,128,128,128,128,128]
	vmovaps	%ymm3, 2400(%rsp)               # 32-byte Spill
	vbroadcastss	.LCPI212_12(%rip), %ymm3 # ymm3 = [3.19659332E-4,3.19659332E-4,3.19659332E-4,3.19659332E-4,3.19659332E-4,3.19659332E-4,3.19659332E-4,3.19659332E-4]
	vmovaps	%ymm3, 736(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI212_13(%rip), %ymm3 # ymm3 = [8.48988629E-3,8.48988629E-3,8.48988629E-3,8.48988629E-3,8.48988629E-3,8.48988629E-3,8.48988629E-3,8.48988629E-3]
	vmovaps	%ymm3, 2368(%rsp)               # 32-byte Spill
	vbroadcastss	.LCPI212_14(%rip), %ymm3 # ymm3 = [1.66679844E-1,1.66679844E-1,1.66679844E-1,1.66679844E-1,1.66679844E-1,1.66679844E-1,1.66679844E-1,1.66679844E-1]
	vmovaps	%ymm3, 480(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI212_16(%rip), %ymm3 # ymm3 = [1.19156833E-3,1.19156833E-3,1.19156833E-3,1.19156833E-3,1.19156833E-3,1.19156833E-3,1.19156833E-3,1.19156833E-3]
	vmovaps	%ymm3, 2336(%rsp)               # 32-byte Spill
	vbroadcastss	.LCPI212_17(%rip), %ymm3 # ymm3 = [4.16018814E-2,4.16018814E-2,4.16018814E-2,4.16018814E-2,4.16018814E-2,4.16018814E-2,4.16018814E-2,4.16018814E-2]
	vmovaps	%ymm3, 1216(%rsp)               # 32-byte Spill
	vbroadcastss	.LCPI212_18(%rip), %ymm3 # ymm3 = [4.99998987E-1,4.99998987E-1,4.99998987E-1,4.99998987E-1,4.99998987E-1,4.99998987E-1,4.99998987E-1,4.99998987E-1]
	vmovaps	%ymm3, 544(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI212_15(%rip), %ymm3 # ymm3 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	vmovaps	%ymm3, 2304(%rsp)               # 32-byte Spill
	vbroadcastss	.LCPI212_19(%rip), %ymm3 # ymm3 = [+Inf,+Inf,+Inf,+Inf,+Inf,+Inf,+Inf,+Inf]
	vmovaps	%ymm3, 512(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI212_51(%rip), %ymm3 # ymm3 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vmovaps	%ymm3, 2272(%rsp)               # 32-byte Spill
	vbroadcastss	.LCPI212_20(%rip), %ymm3 # ymm3 = [5.0E-1,5.0E-1,5.0E-1,5.0E-1,5.0E-1,5.0E-1,5.0E-1,5.0E-1]
	vmovaps	%ymm3, 2240(%rsp)               # 32-byte Spill
	vbroadcastss	.LCPI212_22(%rip), %ymm3 # ymm3 = [2.0E+0,2.0E+0,2.0E+0,2.0E+0,2.0E+0,2.0E+0,2.0E+0,2.0E+0]
	vmovaps	%ymm3, 2208(%rsp)               # 32-byte Spill
	vbroadcastss	.LCPI212_53(%rip), %ymm3 # ymm3 = [2.55E+2,2.55E+2,2.55E+2,2.55E+2,2.55E+2,2.55E+2,2.55E+2,2.55E+2]
	vmovaps	%ymm3, 2176(%rsp)               # 32-byte Spill
	vbroadcastss	.LCPI212_54(%rip), %ymm3 # ymm3 = [2.545E+2,2.545E+2,2.545E+2,2.545E+2,2.545E+2,2.545E+2,2.545E+2,2.545E+2]
	vmovaps	%ymm3, 2144(%rsp)               # 32-byte Spill
	vbroadcastss	.LCPI212_55(%rip), %ymm3 # ymm3 = [-5.0E-1,-5.0E-1,-5.0E-1,-5.0E-1,-5.0E-1,-5.0E-1,-5.0E-1,-5.0E-1]
	vmovaps	%ymm3, 2112(%rsp)               # 32-byte Spill
	vbroadcastsd	.LCPI212_56(%rip), %ymm3 # ymm3 = [32,32,32,32]
	vmovaps	%ymm3, 2080(%rsp)               # 32-byte Spill
	vpbroadcastd	.LCPI212_57(%rip), %ymm3 # ymm3 = [32,32,32,32,32,32,32,32]
	vmovdqa	%ymm3, 2048(%rsp)               # 32-byte Spill
	jmp	.LBB212_26
	.p2align	4, 0x90
.LBB212_25:                             # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vblendvps	%ymm12, %ymm2, %ymm1, %ymm2
	vblendvps	%ymm9, %ymm14, %ymm6, %ymm9
	vblendvps	%ymm11, %ymm3, %ymm5, %ymm3
	vblendvps	%ymm10, %ymm8, %ymm4, %ymm8
	vmovdqa	1696(%rsp), %ymm6               # 32-byte Reload
	vmovdqa	288(%rsp), %ymm1                # 32-byte Reload
	vpcmpgtq	%ymm6, %ymm1, %ymm0
	vmovdqa	%ymm1, %ymm11
	vmovdqa	%ymm1, 288(%rsp)                # 32-byte Spill
	vmovdqa	256(%rsp), %ymm4                # 32-byte Reload
	vpcmpgtq	%ymm6, %ymm4, %ymm1
	vmovdqa	%ymm4, %ymm10
	vmovdqa	%ymm4, 256(%rsp)                # 32-byte Spill
	vperm2i128	$49, %ymm1, %ymm0, %ymm4 # ymm4 = ymm0[2,3],ymm1[2,3]
	vinserti128	$1, %xmm1, %ymm0, %ymm0
	vpackssdw	%ymm4, %ymm0, %ymm0
	vmovdqa	352(%rsp), %ymm4                # 32-byte Reload
	vpcmpgtq	%ymm6, %ymm4, %ymm1
	vmovdqa	%ymm4, %ymm12
	vmovdqa	%ymm4, 352(%rsp)                # 32-byte Spill
	vmovdqa	320(%rsp), %ymm4                # 32-byte Reload
	vpcmpgtq	%ymm6, %ymm4, %ymm4
	vperm2i128	$49, %ymm4, %ymm1, %ymm5 # ymm5 = ymm1[2,3],ymm4[2,3]
	vinserti128	$1, %xmm4, %ymm1, %ymm1
	vpackssdw	%ymm5, %ymm1, %ymm1
	vpackssdw	%ymm1, %ymm0, %ymm0
	vmovdqa	160(%rsp), %ymm1                # 32-byte Reload
	vpcmpgtq	%ymm6, %ymm1, %ymm1
	vmovdqa	384(%rsp), %ymm4                # 32-byte Reload
	vpcmpgtq	%ymm6, %ymm4, %ymm4
	vperm2i128	$49, %ymm4, %ymm1, %ymm5 # ymm5 = ymm1[2,3],ymm4[2,3]
	vinserti128	$1, %xmm4, %ymm1, %ymm1
	vpackssdw	%ymm5, %ymm1, %ymm1
	vmovdqa	800(%rsp), %ymm4                # 32-byte Reload
	vpcmpgtq	%ymm6, %ymm4, %ymm4
	vmovdqa	416(%rsp), %ymm5                # 32-byte Reload
	vpcmpgtq	%ymm6, %ymm5, %ymm5
	vperm2i128	$49, %ymm5, %ymm4, %ymm6 # ymm6 = ymm4[2,3],ymm5[2,3]
	vinserti128	$1, %xmm5, %ymm4, %ymm4
	vpackssdw	%ymm6, %ymm4, %ymm4
	vpackssdw	%ymm4, %ymm1, %ymm1
	vpacksswb	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 1152(%rsp)               # 32-byte Spill
	vmovdqa	1664(%rsp), %ymm15              # 32-byte Reload
	vpcmpgtq	%ymm15, %ymm11, %ymm1
	vpcmpgtq	%ymm15, %ymm10, %ymm4
	vperm2i128	$49, %ymm4, %ymm1, %ymm5 # ymm5 = ymm1[2,3],ymm4[2,3]
	vinserti128	$1, %xmm4, %ymm1, %ymm1
	vpackssdw	%ymm5, %ymm1, %ymm1
	vpcmpgtq	%ymm15, %ymm12, %ymm4
	vsubps	%ymm2, %ymm7, %ymm5
	vsubps	%ymm9, %ymm7, %ymm6
	vsubps	%ymm3, %ymm7, %ymm10
	vsubps	%ymm8, %ymm7, %ymm11
	vmovaps	%ymm11, %ymm12
	vmovaps	1632(%rsp), %ymm13              # 32-byte Reload
	vmovaps	1600(%rsp), %ymm14              # 32-byte Reload
	vfnmadd213ps	%ymm14, %ymm13, %ymm12  # ymm12 = -(ymm13 * ymm12) + ymm14
	vmovaps	2208(%rsp), %ymm0               # 32-byte Reload
	vsubps	%ymm0, %ymm12, %ymm12
	vfmadd213ps	%ymm7, %ymm11, %ymm12   # ymm12 = (ymm11 * ymm12) + ymm7
	vmovaps	%ymm10, %ymm11
	vfnmadd213ps	%ymm14, %ymm13, %ymm11  # ymm11 = -(ymm13 * ymm11) + ymm14
	vsubps	%ymm0, %ymm11, %ymm11
	vfmadd213ps	%ymm7, %ymm10, %ymm11   # ymm11 = (ymm10 * ymm11) + ymm7
	vmovaps	%ymm6, %ymm10
	vfnmadd213ps	%ymm14, %ymm13, %ymm10  # ymm10 = -(ymm13 * ymm10) + ymm14
	vsubps	%ymm0, %ymm10, %ymm10
	vfmadd213ps	%ymm7, %ymm6, %ymm10    # ymm10 = (ymm6 * ymm10) + ymm7
	vmovaps	%ymm5, %ymm6
	vfnmadd213ps	%ymm14, %ymm13, %ymm6   # ymm6 = -(ymm13 * ymm6) + ymm14
	vsubps	%ymm0, %ymm6, %ymm6
	vfmadd213ps	%ymm7, %ymm5, %ymm6     # ymm6 = (ymm5 * ymm6) + ymm7
	vmovdqa	320(%rsp), %ymm5                # 32-byte Reload
	vpcmpgtq	%ymm15, %ymm5, %ymm5
	vperm2i128	$49, %ymm5, %ymm4, %ymm7 # ymm7 = ymm4[2,3],ymm5[2,3]
	vinserti128	$1, %xmm5, %ymm4, %ymm4
	vpackssdw	%ymm7, %ymm4, %ymm4
	vpackssdw	%ymm4, %ymm1, %ymm1
	vmovdqa	%ymm1, 1120(%rsp)               # 32-byte Spill
	vmovaps	%ymm8, %ymm4
	vfmsub213ps	%ymm14, %ymm13, %ymm4   # ymm4 = (ymm13 * ymm4) - ymm14
	vaddps	%ymm0, %ymm4, %ymm4
	vmulps	%ymm4, %ymm8, %ymm4
	vmovaps	2240(%rsp), %ymm1               # 32-byte Reload
	vcmpltps	%ymm8, %ymm1, %ymm5
	vblendvps	%ymm5, %ymm12, %ymm4, %ymm4
	vmovdqa	160(%rsp), %ymm5                # 32-byte Reload
	vpcmpgtq	%ymm15, %ymm5, %ymm5
	vmovaps	%ymm3, %ymm7
	vfmsub213ps	%ymm14, %ymm13, %ymm7   # ymm7 = (ymm13 * ymm7) - ymm14
	vaddps	%ymm0, %ymm7, %ymm7
	vmulps	%ymm7, %ymm3, %ymm7
	vcmpltps	%ymm3, %ymm1, %ymm3
	vblendvps	%ymm3, %ymm11, %ymm7, %ymm3
	vmovdqa	384(%rsp), %ymm12               # 32-byte Reload
	vpcmpgtq	%ymm15, %ymm12, %ymm7
	vperm2i128	$49, %ymm7, %ymm5, %ymm8 # ymm8 = ymm5[2,3],ymm7[2,3]
	vinserti128	$1, %xmm7, %ymm5, %ymm5
	vpackssdw	%ymm8, %ymm5, %ymm5
	vmovaps	%ymm9, %ymm7
	vfmsub213ps	%ymm14, %ymm13, %ymm7   # ymm7 = (ymm13 * ymm7) - ymm14
	vaddps	%ymm0, %ymm7, %ymm7
	vmulps	%ymm7, %ymm9, %ymm7
	vcmpltps	%ymm9, %ymm1, %ymm8
	vblendvps	%ymm8, %ymm10, %ymm7, %ymm11
	vmovdqa	800(%rsp), %ymm7                # 32-byte Reload
	vpcmpgtq	%ymm15, %ymm7, %ymm8
	vmovaps	%ymm2, %ymm9
	vfmsub213ps	%ymm14, %ymm13, %ymm9   # ymm9 = (ymm13 * ymm9) - ymm14
	vaddps	%ymm0, %ymm9, %ymm9
	vmulps	%ymm2, %ymm9, %ymm9
	vcmpltps	%ymm2, %ymm1, %ymm2
	vblendvps	%ymm2, %ymm6, %ymm9, %ymm2
	vmovdqa	416(%rsp), %ymm10               # 32-byte Reload
	vpcmpgtq	%ymm15, %ymm10, %ymm6
	vperm2i128	$49, %ymm6, %ymm8, %ymm9 # ymm9 = ymm8[2,3],ymm6[2,3]
	vinserti128	$1, %xmm6, %ymm8, %ymm6
	vpackssdw	%ymm9, %ymm6, %ymm6
	vpackssdw	%ymm6, %ymm5, %ymm5
	vmovdqa	1120(%rsp), %ymm0               # 32-byte Reload
	vpacksswb	%ymm5, %ymm0, %ymm0
	vmovaps	2176(%rsp), %ymm6               # 32-byte Reload
	vmulps	%ymm6, %ymm4, %ymm4
	vmulps	%ymm6, %ymm3, %ymm3
	vmovaps	2144(%rsp), %ymm8               # 32-byte Reload
	vminps	%ymm8, %ymm3, %ymm3
	vminps	%ymm8, %ymm4, %ymm4
	vmovaps	2112(%rsp), %ymm9               # 32-byte Reload
	vmaxps	%ymm9, %ymm4, %ymm4
	vmaxps	%ymm9, %ymm3, %ymm3
	vaddps	%ymm1, %ymm3, %ymm3
	vaddps	%ymm1, %ymm4, %ymm4
	vcvttps2dq	%ymm4, %ymm4
	vextracti128	$1, %ymm4, %xmm5
	vpackssdw	%xmm5, %xmm4, %xmm4
	vcvttps2dq	%ymm3, %ymm3
	vextracti128	$1, %ymm3, %xmm5
	vpackssdw	%xmm5, %xmm3, %xmm3
	vmulps	%ymm6, %ymm11, %ymm5
	vmulps	%ymm6, %ymm2, %ymm2
	vminps	%ymm8, %ymm2, %ymm2
	vminps	%ymm8, %ymm5, %ymm5
	vmaxps	%ymm9, %ymm5, %ymm5
	vmaxps	%ymm9, %ymm2, %ymm2
	vaddps	%ymm1, %ymm2, %ymm2
	vaddps	%ymm1, %ymm5, %ymm5
	vinserti128	$1, %xmm3, %ymm4, %ymm3
	vcvttps2dq	%ymm5, %ymm4
	vextracti128	$1, %ymm4, %xmm5
	vpackssdw	%xmm5, %xmm4, %xmm4
	vcvttps2dq	%ymm2, %ymm2
	vextracti128	$1, %ymm2, %xmm5
	vpackssdw	%xmm5, %xmm2, %xmm2
	vinserti128	$1, %xmm2, %ymm4, %ymm2
	vpackuswb	%ymm2, %ymm3, %ymm2
	vpblendvb	%ymm0, .LCPI212_64(%rip), %ymm2, %ymm1
	vpxor	%xmm4, %xmm4, %xmm4
	vmovdqa	1152(%rsp), %ymm0               # 32-byte Reload
	vpblendvb	%ymm0, %ymm1, %ymm4, %ymm0
	vmovdqa	%ymm0, 2624(%rsp,%rax)
	addq	$32, %rax
	vmovdqa	2080(%rsp), %ymm0               # 32-byte Reload
	vmovdqa	288(%rsp), %ymm1                # 32-byte Reload
	vpaddq	%ymm0, %ymm1, %ymm1
	vmovdqa	%ymm1, 288(%rsp)                # 32-byte Spill
	vmovdqa	352(%rsp), %ymm1                # 32-byte Reload
	vpaddq	%ymm0, %ymm1, %ymm1
	vmovdqa	%ymm1, 352(%rsp)                # 32-byte Spill
	vmovdqa	160(%rsp), %ymm1                # 32-byte Reload
	vpaddq	%ymm0, %ymm1, %ymm1
	vmovdqa	%ymm1, 160(%rsp)                # 32-byte Spill
	vpaddq	%ymm0, %ymm7, %ymm7
	vmovdqa	%ymm7, 800(%rsp)                # 32-byte Spill
	vmovdqa	256(%rsp), %ymm1                # 32-byte Reload
	vpaddq	%ymm0, %ymm1, %ymm1
	vmovdqa	%ymm1, 256(%rsp)                # 32-byte Spill
	vmovdqa	320(%rsp), %ymm1                # 32-byte Reload
	vpaddq	%ymm0, %ymm1, %ymm1
	vmovdqa	%ymm1, 320(%rsp)                # 32-byte Spill
	vmovdqa	%ymm12, %ymm1
	vpaddq	%ymm0, %ymm12, %ymm1
	vmovdqa	%ymm1, 384(%rsp)                # 32-byte Spill
	vmovdqa	%ymm10, %ymm1
	vpaddq	%ymm0, %ymm10, %ymm1
	vmovdqa	%ymm1, 416(%rsp)                # 32-byte Spill
	vmovdqa	960(%rsp), %ymm0                # 32-byte Reload
	vmovdqa	2048(%rsp), %ymm3               # 32-byte Reload
	vpaddd	%ymm3, %ymm0, %ymm0
	vmovdqa	992(%rsp), %ymm1                # 32-byte Reload
	vpaddd	%ymm3, %ymm1, %ymm1
	vmovdqa	1024(%rsp), %ymm10              # 32-byte Reload
	vpaddd	%ymm3, %ymm10, %ymm10
	vmovdqa	1056(%rsp), %ymm2               # 32-byte Reload
	vpaddd	%ymm3, %ymm2, %ymm2
	cmpq	$1024, %rax                     # imm = 0x400
	je	.LBB212_63
.LBB212_26:                             # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vmovdqa	1760(%rsp), %ymm6               # 32-byte Reload
	vmovdqa	%ymm0, 960(%rsp)                # 32-byte Spill
	vpsubd	%ymm6, %ymm0, %ymm0
	vmovdqa	%ymm1, 992(%rsp)                # 32-byte Spill
	vpsubd	%ymm6, %ymm1, %ymm1
	vmovdqa	%ymm2, 1056(%rsp)               # 32-byte Spill
	vpsubd	%ymm6, %ymm2, %ymm2
	vcvtdq2ps	%ymm0, %ymm0
	vmovaps	1728(%rsp), %ymm9               # 32-byte Reload
	vdivps	%ymm9, %ymm0, %ymm0
	vcvtdq2ps	%ymm1, %ymm1
	vdivps	%ymm9, %ymm1, %ymm1
	vcvtdq2ps	%ymm2, %ymm2
	vdivps	%ymm9, %ymm2, %ymm2
	vbroadcastss	.LCPI212_15(%rip), %ymm14 # ymm14 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	vminps	%ymm14, %ymm2, %ymm2
	vminps	%ymm14, %ymm1, %ymm1
	vminps	%ymm14, %ymm0, %ymm0
	vmovaps	%ymm0, 1984(%rsp)               # 32-byte Spill
	vmaxps	%ymm4, %ymm0, %ymm0
	vmovaps	%ymm1, 2016(%rsp)               # 32-byte Spill
	vmaxps	%ymm4, %ymm1, %ymm1
	vmovaps	%ymm2, 928(%rsp)                # 32-byte Spill
	vmaxps	%ymm4, %ymm2, %ymm2
	vcmpeqps	%ymm4, %ymm2, %ymm3
	vmovaps	%ymm3, 1152(%rsp)               # 32-byte Spill
	vxorps	%xmm5, %xmm5, %xmm5
	vcmpeqps	%ymm5, %ymm1, %ymm4
	vmovaps	%ymm4, 1120(%rsp)               # 32-byte Spill
	vcmpeqps	%ymm5, %ymm0, %ymm5
	vmovaps	%ymm5, 1472(%rsp)               # 32-byte Spill
	vblendvps	%ymm5, %ymm14, %ymm0, %ymm0
	vmovaps	%ymm0, 1088(%rsp)               # 32-byte Spill
	vblendvps	%ymm4, %ymm14, %ymm1, %ymm4
	vmovaps	%ymm4, 1920(%rsp)               # 32-byte Spill
	vblendvps	%ymm3, %ymm14, %ymm2, %ymm0
	vmovaps	%ymm0, 896(%rsp)                # 32-byte Spill
	vmovaps	704(%rsp), %ymm2                # 32-byte Reload
	vandps	%ymm2, %ymm0, %ymm1
	vandps	%ymm2, %ymm4, %ymm2
	vpsrad	$22, %ymm2, %ymm0
	vpsrad	$22, %ymm1, %ymm4
	vmovdqa	768(%rsp), %ymm5                # 32-byte Reload
	vpsubd	%ymm4, %ymm5, %ymm3
	vmovdqa	%ymm3, 1888(%rsp)               # 32-byte Spill
	vpsubd	%ymm0, %ymm5, %ymm0
	vmovdqa	%ymm0, 1856(%rsp)               # 32-byte Spill
	vpslld	$23, %ymm0, %ymm4
	vpslld	$23, %ymm3, %ymm5
	vpor	%ymm1, %ymm5, %ymm5
	vpor	%ymm2, %ymm4, %ymm1
	vmovaps	672(%rsp), %ymm0                # 32-byte Reload
	vaddps	%ymm0, %ymm1, %ymm1
	vaddps	%ymm0, %ymm5, %ymm2
	vmulps	%ymm2, %ymm2, %ymm4
	vmovaps	1568(%rsp), %ymm12              # 32-byte Reload
	vmovaps	%ymm12, %ymm5
	vmovaps	1536(%rsp), %ymm3               # 32-byte Reload
	vfmadd213ps	%ymm3, %ymm4, %ymm5     # ymm5 = (ymm4 * ymm5) + ymm3
	vmovaps	1504(%rsp), %ymm8               # 32-byte Reload
	vfmadd213ps	%ymm8, %ymm4, %ymm5     # ymm5 = (ymm4 * ymm5) + ymm8
	vmovaps	2592(%rsp), %ymm13              # 32-byte Reload
	vfmadd213ps	%ymm13, %ymm4, %ymm5    # ymm5 = (ymm4 * ymm5) + ymm13
	vfmadd213ps	%ymm14, %ymm4, %ymm5    # ymm5 = (ymm4 * ymm5) + ymm14
	vmulps	%ymm5, %ymm2, %ymm5
	vmovaps	2560(%rsp), %ymm7               # 32-byte Reload
	vmovaps	%ymm7, %ymm0
	vmovaps	640(%rsp), %ymm11               # 32-byte Reload
	vfmadd213ps	%ymm11, %ymm4, %ymm0    # ymm0 = (ymm4 * ymm0) + ymm11
	vmovaps	2528(%rsp), %ymm15              # 32-byte Reload
	vfmadd213ps	%ymm15, %ymm4, %ymm0    # ymm0 = (ymm4 * ymm0) + ymm15
	vmovaps	%ymm0, %ymm2
	vmovaps	2496(%rsp), %ymm0               # 32-byte Reload
	vfmadd213ps	%ymm0, %ymm4, %ymm2     # ymm2 = (ymm4 * ymm2) + ymm0
	vfmadd213ps	%ymm5, %ymm4, %ymm2     # ymm2 = (ymm4 * ymm2) + ymm5
	vmovaps	%ymm2, 1824(%rsp)               # 32-byte Spill
	vmulps	%ymm1, %ymm1, %ymm4
	vmovaps	%ymm12, %ymm5
	vfmadd213ps	%ymm3, %ymm4, %ymm5     # ymm5 = (ymm4 * ymm5) + ymm3
	vfmadd213ps	%ymm8, %ymm4, %ymm5     # ymm5 = (ymm4 * ymm5) + ymm8
	vfmadd213ps	%ymm13, %ymm4, %ymm5    # ymm5 = (ymm4 * ymm5) + ymm13
	vfmadd213ps	%ymm14, %ymm4, %ymm5    # ymm5 = (ymm4 * ymm5) + ymm14
	vmulps	%ymm5, %ymm1, %ymm1
	vmovaps	%ymm7, %ymm2
	vfmadd213ps	%ymm11, %ymm4, %ymm2    # ymm2 = (ymm4 * ymm2) + ymm11
	vfmadd213ps	%ymm15, %ymm4, %ymm2    # ymm2 = (ymm4 * ymm2) + ymm15
	vfmadd213ps	%ymm0, %ymm4, %ymm2     # ymm2 = (ymm4 * ymm2) + ymm0
	vfmadd213ps	%ymm1, %ymm4, %ymm2     # ymm2 = (ymm4 * ymm2) + ymm1
	vmovaps	%ymm2, 1792(%rsp)               # 32-byte Spill
	vmovdqa	704(%rsp), %ymm5                # 32-byte Reload
	vpand	1088(%rsp), %ymm5, %ymm1        # 32-byte Folded Reload
	vpsrad	$22, %ymm1, %ymm4
	vmovdqa	768(%rsp), %ymm2                # 32-byte Reload
	vpsubd	%ymm4, %ymm2, %ymm2
	vmovdqa	%ymm2, 1184(%rsp)               # 32-byte Spill
	vpslld	$23, %ymm2, %ymm4
	vpor	%ymm1, %ymm4, %ymm1
	vmovdqa	%ymm10, 1024(%rsp)              # 32-byte Spill
	vpsubd	%ymm6, %ymm10, %ymm4
	vcvtdq2ps	%ymm4, %ymm4
	vdivps	%ymm9, %ymm4, %ymm4
	vmovaps	672(%rsp), %ymm2                # 32-byte Reload
	vaddps	%ymm2, %ymm1, %ymm1
	vmulps	%ymm1, %ymm1, %ymm6
	vmovaps	%ymm12, %ymm9
	vfmadd213ps	%ymm3, %ymm6, %ymm9     # ymm9 = (ymm6 * ymm9) + ymm3
	vfmadd213ps	%ymm8, %ymm6, %ymm9     # ymm9 = (ymm6 * ymm9) + ymm8
	vfmadd213ps	%ymm13, %ymm6, %ymm9    # ymm9 = (ymm6 * ymm9) + ymm13
	vfmadd213ps	%ymm14, %ymm6, %ymm9    # ymm9 = (ymm6 * ymm9) + ymm14
	vmulps	%ymm1, %ymm9, %ymm1
	vmovaps	%ymm7, %ymm10
	vfmadd213ps	%ymm11, %ymm6, %ymm10   # ymm10 = (ymm6 * ymm10) + ymm11
	vfmadd213ps	%ymm15, %ymm6, %ymm10   # ymm10 = (ymm6 * ymm10) + ymm15
	vfmadd213ps	%ymm0, %ymm6, %ymm10    # ymm10 = (ymm6 * ymm10) + ymm0
	vfmadd213ps	%ymm1, %ymm6, %ymm10    # ymm10 = (ymm6 * ymm10) + ymm1
	vminps	%ymm14, %ymm4, %ymm1
	vmovaps	%ymm1, 1952(%rsp)               # 32-byte Spill
	vxorps	%xmm4, %xmm4, %xmm4
	vmaxps	%ymm4, %ymm1, %ymm1
	vcmpeqps	%ymm4, %ymm1, %ymm4
	vmovaps	%ymm4, 1440(%rsp)               # 32-byte Spill
	vblendvps	%ymm4, %ymm14, %ymm1, %ymm1
	vandps	%ymm5, %ymm1, %ymm6
	vpsrad	$22, %ymm6, %ymm4
	vmovdqa	768(%rsp), %ymm5                # 32-byte Reload
	vpsubd	%ymm4, %ymm5, %ymm4
	vpslld	$23, %ymm4, %ymm11
	vpor	%ymm6, %ymm11, %ymm6
	vaddps	%ymm2, %ymm6, %ymm6
	vmulps	%ymm6, %ymm6, %ymm11
	vfmadd213ps	%ymm3, %ymm11, %ymm12   # ymm12 = (ymm11 * ymm12) + ymm3
	vfmadd213ps	%ymm8, %ymm11, %ymm12   # ymm12 = (ymm11 * ymm12) + ymm8
	vfmadd213ps	%ymm13, %ymm11, %ymm12  # ymm12 = (ymm11 * ymm12) + ymm13
	vfmadd213ps	%ymm14, %ymm11, %ymm12  # ymm12 = (ymm11 * ymm12) + ymm14
	vmulps	%ymm6, %ymm12, %ymm6
	vmovdqa	1088(%rsp), %ymm2               # 32-byte Reload
	vpsrad	$23, %ymm2, %ymm3
	vpsubd	1184(%rsp), %ymm3, %ymm3        # 32-byte Folded Reload
	vcvtdq2ps	%ymm3, %ymm3
	vmovaps	2464(%rsp), %ymm9               # 32-byte Reload
	vfmadd213ps	%ymm10, %ymm9, %ymm3    # ymm3 = (ymm9 * ymm3) + ymm10
	vmovaps	%ymm7, %ymm5
	vfmadd213ps	640(%rsp), %ymm11, %ymm5 # 32-byte Folded Reload
                                        # ymm5 = (ymm11 * ymm5) + mem
	vfmadd213ps	%ymm15, %ymm11, %ymm5   # ymm5 = (ymm11 * ymm5) + ymm15
	vfmadd213ps	%ymm0, %ymm11, %ymm5    # ymm5 = (ymm11 * ymm5) + ymm0
	vmovaps	608(%rsp), %ymm15               # 32-byte Reload
	vmovaps	1472(%rsp), %ymm0               # 32-byte Reload
	vblendvps	%ymm0, %ymm15, %ymm3, %ymm3
	vmovaps	%ymm15, %ymm13
	vfmadd213ps	%ymm6, %ymm11, %ymm5    # ymm5 = (ymm11 * ymm5) + ymm6
	vmulps	1408(%rsp), %ymm3, %ymm10       # 32-byte Folded Reload
	vmovaps	2432(%rsp), %ymm0               # 32-byte Reload
	vmulps	%ymm0, %ymm10, %ymm3
	vmovaps	%ymm0, %ymm7
	vroundps	$9, %ymm3, %ymm6
	vcvttps2dq	%ymm6, %ymm0
	vmovaps	%ymm0, 1088(%rsp)               # 32-byte Spill
	vfnmadd213ps	%ymm10, %ymm9, %ymm6    # ymm6 = -(ymm9 * ymm6) + ymm10
	vmulps	%ymm6, %ymm6, %ymm11
	vmovaps	736(%rsp), %ymm10               # 32-byte Reload
	vmovaps	2368(%rsp), %ymm2               # 32-byte Reload
	vfmadd213ps	%ymm2, %ymm11, %ymm10   # ymm10 = (ymm11 * ymm10) + ymm2
	vfmadd213ps	480(%rsp), %ymm11, %ymm10 # 32-byte Folded Reload
                                        # ymm10 = (ymm11 * ymm10) + mem
	vfmadd213ps	%ymm14, %ymm11, %ymm10  # ymm10 = (ymm11 * ymm10) + ymm14
	vmovaps	2336(%rsp), %ymm8               # 32-byte Reload
	vmovaps	%ymm8, %ymm12
	vfmadd213ps	1216(%rsp), %ymm11, %ymm12 # 32-byte Folded Reload
                                        # ymm12 = (ymm11 * ymm12) + mem
	vmovaps	544(%rsp), %ymm15               # 32-byte Reload
	vfmadd213ps	%ymm15, %ymm11, %ymm12  # ymm12 = (ymm11 * ymm12) + ymm15
	vfmadd213ps	%ymm14, %ymm11, %ymm12  # ymm12 = (ymm11 * ymm12) + ymm14
	vfmadd231ps	%ymm10, %ymm6, %ymm12   # ymm12 = (ymm6 * ymm10) + ymm12
	vpsrad	$23, %ymm1, %ymm1
	vpsubd	%ymm4, %ymm1, %ymm1
	vcvtdq2ps	%ymm1, %ymm1
	vmovaps	%ymm9, %ymm6
	vfmadd213ps	%ymm5, %ymm9, %ymm1     # ymm1 = (ymm9 * ymm1) + ymm5
	vmovaps	1440(%rsp), %ymm0               # 32-byte Reload
	vmovaps	%ymm13, %ymm9
	vblendvps	%ymm0, %ymm13, %ymm1, %ymm1
	vmovaps	1408(%rsp), %ymm11              # 32-byte Reload
	vmulps	%ymm1, %ymm11, %ymm4
	vmovaps	%ymm7, %ymm3
	vmulps	%ymm7, %ymm4, %ymm1
	vroundps	$9, %ymm1, %ymm5
	vcvttps2dq	%ymm5, %ymm0
	vmovaps	%ymm0, 1184(%rsp)               # 32-byte Spill
	vfnmadd213ps	%ymm4, %ymm6, %ymm5     # ymm5 = -(ymm6 * ymm5) + ymm4
	vmovaps	%ymm6, %ymm13
	vmulps	%ymm5, %ymm5, %ymm4
	vmovaps	736(%rsp), %ymm1                # 32-byte Reload
	vmovaps	%ymm1, %ymm6
	vmovaps	%ymm2, %ymm7
	vfmadd213ps	%ymm2, %ymm4, %ymm6     # ymm6 = (ymm4 * ymm6) + ymm2
	vmovaps	480(%rsp), %ymm2                # 32-byte Reload
	vfmadd213ps	%ymm2, %ymm4, %ymm6     # ymm6 = (ymm4 * ymm6) + ymm2
	vfmadd213ps	%ymm14, %ymm4, %ymm6    # ymm6 = (ymm4 * ymm6) + ymm14
	vmovaps	%ymm8, %ymm10
	vfmadd213ps	1216(%rsp), %ymm4, %ymm10 # 32-byte Folded Reload
                                        # ymm10 = (ymm4 * ymm10) + mem
	vfmadd213ps	%ymm15, %ymm4, %ymm10   # ymm10 = (ymm4 * ymm10) + ymm15
	vfmadd213ps	%ymm14, %ymm4, %ymm10   # ymm10 = (ymm4 * ymm10) + ymm14
	vfmadd231ps	%ymm6, %ymm5, %ymm10    # ymm10 = (ymm5 * ymm6) + ymm10
	vmovdqa	1920(%rsp), %ymm0               # 32-byte Reload
	vpsrad	$23, %ymm0, %ymm4
	vpsubd	1856(%rsp), %ymm4, %ymm0        # 32-byte Folded Reload
	vcvtdq2ps	%ymm0, %ymm0
	vfmadd213ps	1792(%rsp), %ymm13, %ymm0 # 32-byte Folded Reload
                                        # ymm0 = (ymm13 * ymm0) + mem
	vmovaps	1120(%rsp), %ymm4               # 32-byte Reload
	vblendvps	%ymm4, %ymm9, %ymm0, %ymm0
	vmulps	%ymm0, %ymm11, %ymm0
	vmulps	%ymm3, %ymm0, %ymm4
	vroundps	$9, %ymm4, %ymm4
	vcvttps2dq	%ymm4, %ymm15
	vfnmadd213ps	%ymm0, %ymm13, %ymm4    # ymm4 = -(ymm13 * ymm4) + ymm0
	vmulps	%ymm4, %ymm4, %ymm0
	vmovaps	%ymm1, %ymm5
	vfmadd213ps	%ymm7, %ymm0, %ymm5     # ymm5 = (ymm0 * ymm5) + ymm7
	vfmadd213ps	%ymm2, %ymm0, %ymm5     # ymm5 = (ymm0 * ymm5) + ymm2
	vfmadd213ps	%ymm14, %ymm0, %ymm5    # ymm5 = (ymm0 * ymm5) + ymm14
	vmovaps	%ymm8, %ymm6
	vmovaps	1216(%rsp), %ymm9               # 32-byte Reload
	vfmadd213ps	%ymm9, %ymm0, %ymm6     # ymm6 = (ymm0 * ymm6) + ymm9
	vmovaps	544(%rsp), %ymm1                # 32-byte Reload
	vfmadd213ps	%ymm1, %ymm0, %ymm6     # ymm6 = (ymm0 * ymm6) + ymm1
	vfmadd213ps	%ymm14, %ymm0, %ymm6    # ymm6 = (ymm0 * ymm6) + ymm14
	vfmadd231ps	%ymm5, %ymm4, %ymm6     # ymm6 = (ymm4 * ymm5) + ymm6
	vmovdqa	896(%rsp), %ymm0                # 32-byte Reload
	vpsrad	$23, %ymm0, %ymm0
	vpsubd	1888(%rsp), %ymm0, %ymm0        # 32-byte Folded Reload
	vcvtdq2ps	%ymm0, %ymm0
	vfmadd213ps	1824(%rsp), %ymm13, %ymm0 # 32-byte Folded Reload
                                        # ymm0 = (ymm13 * ymm0) + mem
	vmovaps	1152(%rsp), %ymm4               # 32-byte Reload
	vblendvps	%ymm4, 608(%rsp), %ymm0, %ymm0 # 32-byte Folded Reload
	vmulps	%ymm0, %ymm11, %ymm0
	vmulps	%ymm3, %ymm0, %ymm2
	vroundps	$9, %ymm2, %ymm2
	vcvttps2dq	%ymm2, %ymm4
	vfnmadd213ps	%ymm0, %ymm13, %ymm2    # ymm2 = -(ymm13 * ymm2) + ymm0
	vmulps	%ymm2, %ymm2, %ymm0
	vmovaps	736(%rsp), %ymm5                # 32-byte Reload
	vfmadd213ps	%ymm7, %ymm0, %ymm5     # ymm5 = (ymm0 * ymm5) + ymm7
	vfmadd213ps	480(%rsp), %ymm0, %ymm5 # 32-byte Folded Reload
                                        # ymm5 = (ymm0 * ymm5) + mem
	vfmadd213ps	%ymm14, %ymm0, %ymm5    # ymm5 = (ymm0 * ymm5) + ymm14
	vfmadd213ps	%ymm9, %ymm0, %ymm8     # ymm8 = (ymm0 * ymm8) + ymm9
	vfmadd213ps	%ymm1, %ymm0, %ymm8     # ymm8 = (ymm0 * ymm8) + ymm1
	vmovaps	%ymm14, 896(%rsp)               # 32-byte Spill
	vfmadd213ps	%ymm14, %ymm0, %ymm8    # ymm8 = (ymm0 * ymm8) + ymm14
	vfmadd231ps	%ymm5, %ymm2, %ymm8     # ymm8 = (ymm2 * ymm5) + ymm8
	vmovdqa	1088(%rsp), %ymm14              # 32-byte Reload
	vpslld	$23, %ymm14, %ymm0
	vmovdqa	2304(%rsp), %ymm3               # 32-byte Reload
	vpaddd	%ymm3, %ymm0, %ymm0
	vmulps	%ymm0, %ymm12, %ymm5
	vmovdqa	1184(%rsp), %ymm1               # 32-byte Reload
	vpslld	$23, %ymm1, %ymm0
	vpaddd	%ymm3, %ymm0, %ymm0
	vmulps	%ymm0, %ymm10, %ymm0
	vpslld	$23, %ymm15, %ymm2
	vpaddd	%ymm3, %ymm2, %ymm2
	vmulps	%ymm2, %ymm6, %ymm2
	vmovdqa	2400(%rsp), %ymm9               # 32-byte Reload
	vpcmpgtd	%ymm1, %ymm9, %ymm6
	vmovaps	512(%rsp), %ymm10               # 32-byte Reload
	vblendvps	%ymm6, %ymm0, %ymm10, %ymm6
	vpcmpgtd	%ymm15, %ymm9, %ymm0
	vblendvps	%ymm0, %ymm2, %ymm10, %ymm0
	vpslld	$23, %ymm4, %ymm2
	vpaddd	%ymm3, %ymm2, %ymm2
	vmulps	%ymm2, %ymm8, %ymm2
	vmovdqa	576(%rsp), %ymm7                # 32-byte Reload
	vpcmpgtd	%ymm7, %ymm15, %ymm8
	vpand	%ymm0, %ymm8, %ymm11
	vpcmpgtd	%ymm4, %ymm9, %ymm8
	vblendvps	%ymm8, %ymm2, %ymm10, %ymm2
	vmovss	20(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vucomiss	.LCPI212_63(%rip), %xmm0
	vmovdqa	%ymm14, %ymm0
	vpcmpgtd	%ymm7, %ymm1, %ymm1
	vpcmpgtd	%ymm7, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm2
	vpcmpgtd	%ymm14, %ymm9, %ymm10
	vmovdqa	2272(%rsp), %ymm7               # 32-byte Reload
	vpxor	%ymm7, %ymm2, %ymm4
	jne	.LBB212_29
# %bb.27:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	jp	.LBB212_29
# %bb.28:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	%ymm2, %ymm4
.LBB212_29:                             # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vpcmpgtd	576(%rsp), %ymm0, %ymm8         # 32-byte Folded Reload
	vmovaps	512(%rsp), %ymm0                # 32-byte Reload
	vblendvps	%ymm10, %ymm5, %ymm0, %ymm10
	vpand	%ymm6, %ymm1, %ymm3
	vpxor	%ymm7, %ymm11, %ymm5
	vxorps	%xmm0, %xmm0, %xmm0
	jne	.LBB212_32
# %bb.30:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	jp	.LBB212_32
# %bb.31:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	%ymm11, %ymm5
.LBB212_32:                             # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vpand	%ymm10, %ymm8, %ymm8
	vpxor	%ymm7, %ymm3, %ymm6
	jne	.LBB212_35
# %bb.33:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	jp	.LBB212_35
# %bb.34:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	%ymm3, %ymm6
.LBB212_35:                             # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vpxor	%ymm7, %ymm8, %ymm10
	vmovdqa	%ymm11, %ymm14
	jne	.LBB212_38
# %bb.36:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	896(%rsp), %ymm7                # 32-byte Reload
	jp	.LBB212_39
# %bb.37:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	%ymm8, %ymm10
	jmp	.LBB212_39
	.p2align	4, 0x90
.LBB212_38:                             #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	896(%rsp), %ymm7                # 32-byte Reload
.LBB212_39:                             # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovaps	464(%rsp), %xmm1                # 16-byte Reload
	vucomiss	136(%rsp), %xmm1                # 4-byte Folded Reload
	vpbroadcastd	.LCPI212_52(%rip), %ymm1 # ymm1 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]
	vmovdqa	%ymm1, %ymm11
	jne	.LBB212_42
# %bb.40:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	%ymm1, %ymm11
	jp	.LBB212_42
# %bb.41:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	%ymm10, %ymm11
.LBB212_42:                             # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	%ymm1, %ymm10
	jne	.LBB212_45
# %bb.43:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	%ymm1, %ymm10
	jp	.LBB212_45
# %bb.44:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	%ymm6, %ymm10
.LBB212_45:                             # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	%ymm1, %ymm6
	jne	.LBB212_48
# %bb.46:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	%ymm1, %ymm6
	jp	.LBB212_48
# %bb.47:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	%ymm5, %ymm6
.LBB212_48:                             # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	jne	.LBB212_51
# %bb.49:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	jp	.LBB212_51
# %bb.50:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	%ymm4, %ymm1
.LBB212_51:                             # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovaps	464(%rsp), %xmm4                # 16-byte Reload
	vucomiss	.LCPI212_63(%rip), %xmm4
	vmovdqa	1472(%rsp), %ymm4               # 32-byte Reload
	vpandn	%ymm11, %ymm4, %ymm4
	jne	.LBB212_54
# %bb.52:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	jp	.LBB212_54
# %bb.53:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	%ymm7, %ymm4
.LBB212_54:                             # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	1440(%rsp), %ymm5               # 32-byte Reload
	vpandn	%ymm10, %ymm5, %ymm5
	jne	.LBB212_57
# %bb.55:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	jp	.LBB212_57
# %bb.56:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	%ymm7, %ymm5
.LBB212_57:                             # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	1120(%rsp), %ymm9               # 32-byte Reload
	vpandn	%ymm6, %ymm9, %ymm6
	jne	.LBB212_60
# %bb.58:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	jp	.LBB212_60
# %bb.59:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	%ymm7, %ymm6
.LBB212_60:                             # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vcmpltps	1984(%rsp), %ymm0, %ymm10       # 32-byte Folded Reload
	vcmpltps	1952(%rsp), %ymm0, %ymm11       # 32-byte Folded Reload
	vcmpltps	2016(%rsp), %ymm0, %ymm9        # 32-byte Folded Reload
	vxorps	%xmm0, %xmm0, %xmm0
	vcmpltps	928(%rsp), %ymm0, %ymm12        # 32-byte Folded Reload
	vmovdqa	1152(%rsp), %ymm0               # 32-byte Reload
	vpandn	%ymm1, %ymm0, %ymm1
	jne	.LBB212_25
# %bb.61:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	jp	.LBB212_25
# %bb.62:                               # %vector.body
                                        #   in Loop: Header=BB212_26 Depth=1
	vmovdqa	%ymm7, %ymm1
	jmp	.LBB212_25
.LBB212_63:                             # %"produce f26"
	vmovss	.LCPI212_58(%rip), %xmm0        # xmm0 = mem[0],zero,zero,zero
	vdivss	152(%rsp), %xmm0, %xmm1         # 4-byte Folded Reload
	vaddss	.LCPI212_59(%rip), %xmm1, %xmm0
	vmovss	.LCPI212_60(%rip), %xmm2        # xmm2 = mem[0],zero,zero,zero
	vsubss	%xmm1, %xmm2, %xmm1
	movq	96(%rsp), %r15                  # 8-byte Reload
	movl	%r15d, %eax
	movq	208(%rsp), %r12                 # 8-byte Reload
	imull	%r12d, %eax
	movq	104(%rsp), %r11                 # 8-byte Reload
	addl	%r11d, %eax
	negl	%eax
	movq	112(%rsp), %rdx                 # 8-byte Reload
	movl	%edx, %ecx
	movq	216(%rsp), %r14                 # 8-byte Reload
	imull	%r14d, %ecx
	movq	120(%rsp), %r8                  # 8-byte Reload
	addl	%r8d, %ecx
	negl	%ecx
	movslq	%ecx, %rcx
	cltq
	movq	232(%rsp), %rdi                 # 8-byte Reload
	vmovups	(%rdi,%rcx,4), %xmm2
	movq	224(%rsp), %rbx                 # 8-byte Reload
	vmovups	(%rbx,%rax,4), %xmm3
	movl	$1, %eax
	movl	$1, %ecx
	subl	%r15d, %ecx
	imull	%r12d, %ecx
	subl	%r11d, %ecx
	subl	%edx, %eax
	imull	%r14d, %eax
	subl	%r8d, %eax
	cltq
	movslq	%ecx, %rcx
	vbroadcastss	%xmm1, %ymm4
	vinsertf128	$1, (%rdi,%rax,4), %ymm2, %ymm2
	vbroadcastss	%xmm0, %ymm5
	vinsertf128	$1, (%rbx,%rcx,4), %ymm3, %ymm3
	vmulps	%ymm3, %ymm5, %ymm3
	vfmadd231ps	%ymm2, %ymm4, %ymm3     # ymm3 = (ymm4 * ymm2) + ymm3
	vbroadcastss	.LCPI212_61(%rip), %ymm2 # ymm2 = [2.56E+2,2.56E+2,2.56E+2,2.56E+2,2.56E+2,2.56E+2,2.56E+2,2.56E+2]
	vmulps	%ymm2, %ymm3, %ymm2
	vcvttps2dq	%ymm2, %ymm2
	vextracti128	$1, %ymm2, %xmm3
	vpackssdw	%xmm3, %xmm2, %xmm2
	vmovdqa	%xmm2, 832(%rsp)
	movl	$2, %eax
	movl	$2, %ecx
	subl	%r15d, %ecx
	imull	%r12d, %ecx
	subl	%r11d, %ecx
	subl	%edx, %eax
	imull	%r14d, %eax
	subl	%r8d, %eax
	movslq	%ecx, %rcx
	vmulss	(%rbx,%rcx,4), %xmm0, %xmm2
	cltq
	vfmadd231ss	(%rdi,%rax,4), %xmm1, %xmm2 # xmm2 = (xmm1 * mem) + xmm2
	vmovss	.LCPI212_61(%rip), %xmm3        # xmm3 = mem[0],zero,zero,zero
	vmulss	%xmm3, %xmm2, %xmm2
	vcvttss2si	%xmm2, %edx
	movw	%dx, 848(%rsp)
	vmulss	4(%rbx,%rcx,4), %xmm0, %xmm2
	vfmadd231ss	4(%rdi,%rax,4), %xmm1, %xmm2 # xmm2 = (xmm1 * mem) + xmm2
	vmulss	%xmm3, %xmm2, %xmm2
	vcvttss2si	%xmm2, %edx
	movw	%dx, 850(%rsp)
	vmulss	8(%rbx,%rcx,4), %xmm0, %xmm2
	vfmadd231ss	8(%rdi,%rax,4), %xmm1, %xmm2 # xmm2 = (xmm1 * mem) + xmm2
	vmulss	%xmm3, %xmm2, %xmm2
	vcvttss2si	%xmm2, %edx
	movw	%dx, 852(%rsp)
	vmulss	12(%rbx,%rcx,4), %xmm0, %xmm0
	vfmadd231ss	12(%rdi,%rax,4), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmulss	%xmm3, %xmm0, %xmm0
	vcvttss2si	%xmm0, %eax
	movw	%ax, 854(%rsp)
	vmovss	156(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmulss	.LCPI212_62(%rip), %xmm0, %xmm0
	vminss	.LCPI212_53(%rip), %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vmaxss	%xmm1, %xmm0, %xmm0
	vcvttss2si	%xmm0, %eax
	movb	%al, 19(%rsp)
	testl	%r9d, %r9d
	js	.LBB212_77
# %bb.64:                               # %"produce f26"
	cmpl	$0, 144(%rsp)                   # 4-byte Folded Reload
	jg	.LBB212_77
# %bb.65:                               # %"assert succeeded"
	cmpl	$0, 80(%rsp)                    # 4-byte Folded Reload
	js	.LBB212_78
# %bb.66:                               # %"assert succeeded"
	cmpl	$0, 148(%rsp)                   # 4-byte Folded Reload
	jg	.LBB212_78
# %bb.67:                               # %"assert succeeded71"
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	movl	32(%rsp), %eax                  # 4-byte Reload
	js	.LBB212_80
# %bb.68:                               # %"assert succeeded71"
	cmpl	$4, %eax
	jge	.LBB212_80
# %bb.69:                               # %"consume curve"
	movl	60(%rsp), %r14d                 # 4-byte Reload
	movl	%r14d, %edx
	movq	128(%rsp), %r11                 # 8-byte Reload
	imull	%r11d, %edx
	movl	%esi, %r8d
	sarl	$6, %r8d
	movl	52(%rsp), %r9d                  # 4-byte Reload
	movl	%r9d, %ecx
	shll	$4, %ecx
	movq	64(%rsp), %r13                  # 8-byte Reload
	cmpl	$23, %r13d
	movl	$24, %r15d
	cmovgl	%r13d, %r15d
	movl	%r8d, %edi
	shll	$5, %edi
	orl	$14, %edi
	cmpl	%ecx, %edi
	cmovll	%ecx, %edi
	leal	43(%r15), %r12d
	shrl	$5, %r12d
	andl	$-64, %esi
	orl	$56, %esi
	cmpl	%r13d, %esi
	cmovll	%r13d, %esi
	movl	$14, %eax
	subl	%r11d, %eax
	addl	%r10d, %edx
	imull	%r14d, %eax
	subl	%r10d, %eax
	movq	248(%rsp), %r10                 # 8-byte Reload
	movq	%r10, 1256(%rsp)
	movl	%r14d, 1264(%rsp)
	movl	48(%rsp), %ebx                  # 4-byte Reload
	movl	%ebx, 1268(%rsp)
	movl	44(%rsp), %ebx                  # 4-byte Reload
	movl	%ebx, 1272(%rsp)
	movl	40(%rsp), %ebx                  # 4-byte Reload
	subl	%ebx, %esi
	movl	%esi, 1276(%rsp)
	movl	%edi, 1280(%rsp)
	movl	36(%rsp), %esi                  # 4-byte Reload
	movl	%esi, 1284(%rsp)
	movl	%r12d, 1288(%rsp)
	addl	%ebx, %eax
	movl	%eax, 1292(%rsp)
	movl	%r13d, %eax
	subl	%edx, %eax
	movl	%edx, 1296(%rsp)
	movl	%eax, 1300(%rsp)
	movl	%r9d, 1304(%rsp)
	movl	%r13d, 1308(%rsp)
	movl	%ebx, 1312(%rsp)
	movl	%r8d, 1316(%rsp)
	movl	%ecx, 1320(%rsp)
	movl	%r15d, 1324(%rsp)
	leaq	2624(%rsp), %rax
	movq	%rax, 1328(%rsp)
	movq	$0, 1336(%rsp)
	leaq	832(%rsp), %rax
	movq	%rax, 1344(%rsp)
	movq	$0, 1352(%rsp)
	movq	%r10, 1360(%rsp)
	movq	880(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 1368(%rsp)
	movq	240(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 1376(%rsp)
	movq	888(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 1384(%rsp)
	leaq	19(%rsp), %rax
	movq	%rax, 1392(%rsp)
	movq	$0, 1400(%rsp)
	leaq	camera_pipe.par_for.processed.s0.v1.v3.v4(%rip), %rsi
	leaq	1256(%rsp), %r8
	xorl	%edi, %edi
	xorl	%edx, %edx
	movl	56(%rsp), %ecx                  # 4-byte Reload
	vzeroupper
	callq	halide_do_par_for@PLT
.LBB212_70:                             # %destructor_block
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB212_71:                             # %after_bb10
	movq	40(%r14), %rax
	movl	%r8d, %ecx
	andl	$-32, %ecx
	movl	%edi, %edx
	andl	$-32, %edx
	movl	52(%rsp), %esi                  # 4-byte Reload
	imull	56(%rsp), %esi                  # 4-byte Folded Reload
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r14)
	shll	$10, %esi
	movq	$0, 16(%r14)
	movabsq	$12884969473, %rdi              # imm = 0x300010801
	movq	%rdi, 32(%r14)
	movl	$0, (%rax)
	movl	%ecx, 4(%rax)
	movq	$1, 8(%rax)
	movq	40(%r14), %rax
	movl	$0, 16(%rax)
	movl	%edx, 20(%rax)
	movl	%ecx, 24(%rax)
	movl	$0, 28(%rax)
	movq	40(%r14), %rax
	movabsq	$12884901888, %rcx              # imm = 0x300000000
	movq	%rcx, 32(%rax)
	movl	%esi, 40(%rax)
	movl	$0, 44(%rax)
	movq	$0, 24(%r14)
	cmpq	$0, 16(%r14)
	jne	.LBB212_11
	jmp	.LBB212_13
.LBB212_75:                             # %entry
	leaq	.LJTI212_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB212_76:                             # %assert_failed
	leaq	.Lstr(%rip), %rsi
	jmp	.LBB212_88
.LBB212_77:                             # %"assert failed"
	movq	88(%rsp), %r8                   # 8-byte Reload
	decl	%r8d
	movq	24(%rsp), %rax                  # 8-byte Reload
	addl	%r9d, %eax
	decl	%eax
	movl	%eax, (%rsp)
	leaq	.Lstr.215(%rip), %rsi
	jmp	.LBB212_79
.LBB212_78:                             # %"assert failed70"
	movq	64(%rsp), %r8                   # 8-byte Reload
	decl	%r8d
	movq	80(%rsp), %r9                   # 8-byte Reload
	leal	(%r9,%rsi), %eax
	decl	%eax
	movl	%eax, (%rsp)
	leaq	.Lstr.216(%rip), %rsi
.LBB212_79:                             # %destructor_block
	leaq	.Lstr(%rip), %rdx
	xorl	%edi, %edi
	xorl	%ecx, %ecx
                                        # kill: def $r8d killed $r8d killed $r8
                                        # kill: def $r9d killed $r9d killed $r9
	vzeroupper
	callq	halide_error_explicit_bounds_too_small@PLT
	jmp	.LBB212_70
.LBB212_80:                             # %"assert failed72"
	decl	%eax
	movl	%eax, (%rsp)
	leaq	.Lstr.217(%rip), %rsi
	leaq	.Lstr(%rip), %rdx
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	movl	$2, %r8d
	movq	72(%rsp), %r9                   # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	vzeroupper
	callq	halide_error_explicit_bounds_too_small@PLT
	jmp	.LBB212_70
.LBB212_81:                             # %then_bb14
	movl	1504(%rsp), %r8d                # 4-byte Reload
	movl	1536(%rsp), %esi                # 4-byte Reload
	movl	1568(%rsp), %ebx                # 4-byte Reload
	movl	1600(%rsp), %edi                # 4-byte Reload
	movl	1632(%rsp), %r9d                # 4-byte Reload
	movq	480(%rsp), %rcx                 # 8-byte Reload
	leaq	.LJTI212_1(%rip), %rdx
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmpq	*%rax
.LBB212_82:                             # %assert_failed17
	leaq	.Lstr.206(%rip), %rsi
	xorl	%edi, %edi
	movl	160(%rsp), %edx                 # 4-byte Reload
	movl	$69633, %ecx                    # imm = 0x11001
	vzeroupper
	callq	halide_error_bad_type@PLT
	jmp	.LBB212_70
.LBB212_83:                             # %no_errors_bb16
	movq	%r8, 160(%rsp)                  # 8-byte Spill
	movq	960(%rsp), %rbx                 # 8-byte Reload
	movq	1024(%rsp), %r13                # 8-byte Reload
	movq	1056(%rsp), %r12                # 8-byte Reload
	movq	512(%rsp), %r15                 # 8-byte Reload
	movq	544(%rsp), %r14                 # 8-byte Reload
	movq	576(%rsp), %r11                 # 8-byte Reload
	movq	608(%rsp), %r10                 # 8-byte Reload
	movq	672(%rsp), %r9                  # 8-byte Reload
	movq	704(%rsp), %r8                  # 8-byte Reload
	movq	384(%rsp), %rdx                 # 8-byte Reload
	leaq	.LJTI212_2(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB212_84:                             # %assert_failed48
	leaq	.Lstr.205(%rip), %rsi
	movl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	xorl	%edi, %edi
	vzeroupper
	callq	halide_error_buffer_allocation_too_large@PLT
	jmp	.LBB212_70
.LBB212_85:                             # %assert_failed1
	leaq	.Lstr.203(%rip), %rsi
	jmp	.LBB212_88
.LBB212_86:                             # %assert_failed2
	leaq	.Lstr.204(%rip), %rsi
	jmp	.LBB212_88
.LBB212_87:                             # %assert_failed3
	leaq	.Lstr.205(%rip), %rsi
.LBB212_88:                             # %assert_failed
	xorl	%edi, %edi
	callq	halide_error_buffer_argument_is_null@PLT
	jmp	.LBB212_70
.LBB212_89:                             # %assert_failed49
	leaq	.Lstr.205(%rip), %rsi
	movl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	xorl	%edi, %edi
	movq	640(%rsp), %rdx                 # 8-byte Reload
	vzeroupper
	callq	halide_error_buffer_allocation_too_large@PLT
	jmp	.LBB212_70
.LBB212_90:                             # %assert_failed50
	leaq	.Lstr.205(%rip), %rsi
	movl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	xorl	%edi, %edi
	movq	%r8, %rdx
	vzeroupper
	callq	halide_error_buffer_extents_too_large@PLT
	jmp	.LBB212_70
.LBB212_91:                             # %assert_failed51
	leaq	.Lstr.204(%rip), %rsi
	movl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	xorl	%edi, %edi
	movq	%r9, %rdx
	vzeroupper
	callq	halide_error_buffer_allocation_too_large@PLT
	jmp	.LBB212_70
.LBB212_92:                             # %assert_failed52
	leaq	.Lstr.204(%rip), %rsi
	movl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	xorl	%edi, %edi
	movq	992(%rsp), %rdx                 # 8-byte Reload
	vzeroupper
	callq	halide_error_buffer_allocation_too_large@PLT
	jmp	.LBB212_70
.LBB212_93:                             # %assert_failed53
	leaq	.Lstr.204(%rip), %rsi
	movl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	xorl	%edi, %edi
	movq	%r11, %rdx
	vzeroupper
	callq	halide_error_buffer_extents_too_large@PLT
	jmp	.LBB212_70
.LBB212_94:                             # %assert_failed54
	leaq	.Lstr.203(%rip), %rsi
	movl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	xorl	%edi, %edi
	movq	%r10, %rdx
	vzeroupper
	callq	halide_error_buffer_allocation_too_large@PLT
	jmp	.LBB212_70
.LBB212_95:                             # %assert_failed55
	leaq	.Lstr.203(%rip), %rsi
	movl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	xorl	%edi, %edi
	movq	%rbx, %rdx
	vzeroupper
	callq	halide_error_buffer_allocation_too_large@PLT
	jmp	.LBB212_70
.LBB212_96:                             # %assert_failed56
	leaq	.Lstr.203(%rip), %rsi
	movl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	xorl	%edi, %edi
	movq	%r14, %rdx
	vzeroupper
	callq	halide_error_buffer_extents_too_large@PLT
	jmp	.LBB212_70
.LBB212_97:                             # %assert_failed57
	leaq	.Lstr(%rip), %rsi
	movl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	xorl	%edi, %edi
	movq	%r15, %rdx
	vzeroupper
	callq	halide_error_buffer_allocation_too_large@PLT
	jmp	.LBB212_70
.LBB212_98:                             # %assert_failed58
	leaq	.Lstr(%rip), %rsi
	movl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	xorl	%edi, %edi
	movq	928(%rsp), %rdx                 # 8-byte Reload
	vzeroupper
	callq	halide_error_buffer_allocation_too_large@PLT
	jmp	.LBB212_70
.LBB212_99:                             # %assert_failed59
	leaq	.Lstr(%rip), %rsi
	movl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	xorl	%edi, %edi
	movq	%r12, %rdx
	vzeroupper
	callq	halide_error_buffer_extents_too_large@PLT
	jmp	.LBB212_70
.LBB212_100:                            # %assert_failed60
	leaq	.Lstr(%rip), %rsi
	movl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	xorl	%edi, %edi
	movq	160(%rsp), %rdx                 # 8-byte Reload
	vzeroupper
	callq	halide_error_buffer_allocation_too_large@PLT
	jmp	.LBB212_70
.LBB212_101:                            # %assert_failed61
	leaq	.Lstr(%rip), %rsi
	movl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	xorl	%edi, %edi
	movq	%r13, %rdx
	vzeroupper
	callq	halide_error_buffer_extents_too_large@PLT
	jmp	.LBB212_70
.LBB212_102:                            # %assert_failed62
	leaq	.Lstr.206(%rip), %rsi
	jmp	.LBB212_106
.LBB212_103:                            # %assert_failed63
	leaq	.Lstr.207(%rip), %rsi
	jmp	.LBB212_106
.LBB212_104:                            # %assert_failed64
	leaq	.Lstr.208(%rip), %rsi
	jmp	.LBB212_106
.LBB212_105:                            # %assert_failed65
	leaq	.Lstr.209(%rip), %rsi
.LBB212_106:                            # %assert_failed62
	xorl	%edi, %edi
	vzeroupper
	callq	halide_error_device_dirty_with_no_device_support@PLT
	jmp	.LBB212_70
.LBB212_107:                            # %assert_failed66
	leaq	.Lstr.206(%rip), %rsi
	jmp	.LBB212_111
.LBB212_108:                            # %assert_failed67
	leaq	.Lstr.207(%rip), %rsi
	jmp	.LBB212_111
.LBB212_109:                            # %assert_failed68
	leaq	.Lstr.208(%rip), %rsi
	jmp	.LBB212_111
.LBB212_110:                            # %assert_failed69
	leaq	.Lstr.209(%rip), %rsi
.LBB212_111:                            # %assert_failed66
	xorl	%edi, %edi
	vzeroupper
	callq	halide_error_host_is_null@PLT
	jmp	.LBB212_70
.LBB212_112:                            # %assert_failed18
	leaq	.Lstr.206(%rip), %rsi
	xorl	%edi, %edi
	movl	704(%rsp), %edx                 # 4-byte Reload
	jmp	.LBB212_118
.LBB212_113:                            # %assert_failed19
	leaq	.Lstr.207(%rip), %rsi
	xorl	%edi, %edi
	movl	640(%rsp), %edx                 # 4-byte Reload
	jmp	.LBB212_116
.LBB212_114:                            # %assert_failed20
	leaq	.Lstr.207(%rip), %rsi
	xorl	%edi, %edi
	movl	608(%rsp), %edx                 # 4-byte Reload
	jmp	.LBB212_118
.LBB212_115:                            # %assert_failed21
	leaq	.Lstr.208(%rip), %rsi
	xorl	%edi, %edi
	movl	544(%rsp), %edx                 # 4-byte Reload
.LBB212_116:                            # %assert_failed19
	movl	$73730, %ecx                    # imm = 0x12002
	vzeroupper
	callq	halide_error_bad_type@PLT
	jmp	.LBB212_70
.LBB212_117:                            # %assert_failed22
	leaq	.Lstr.208(%rip), %rsi
	xorl	%edi, %edi
	movl	512(%rsp), %edx                 # 4-byte Reload
.LBB212_118:                            # %assert_failed18
	movl	$2, %ecx
	vzeroupper
	callq	halide_error_bad_dimensions@PLT
	jmp	.LBB212_70
.LBB212_119:                            # %assert_failed23
	leaq	.Lstr.209(%rip), %rsi
	xorl	%edi, %edi
	movl	1024(%rsp), %edx                # 4-byte Reload
	movl	$67585, %ecx                    # imm = 0x10801
	vzeroupper
	callq	halide_error_bad_type@PLT
	jmp	.LBB212_70
.LBB212_120:                            # %assert_failed24
	leaq	.Lstr.209(%rip), %rsi
	xorl	%edi, %edi
	movl	992(%rsp), %edx                 # 4-byte Reload
	movl	$3, %ecx
	vzeroupper
	callq	halide_error_bad_dimensions@PLT
	jmp	.LBB212_70
.LBB212_121:                            # %assert_failed25
	movl	40(%rsp), %ecx                  # 4-byte Reload
	addl	$-14, %ecx
	movq	64(%rsp), %r8                   # 8-byte Reload
	orl	$21, %r8d
	movl	%r9d, %esi
	decl	%esi
	movl	%esi, (%rsp)
	leaq	.Lstr.206(%rip), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
                                        # kill: def $r8d killed $r8d killed $r8
	movq	200(%rsp), %r9                  # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	vzeroupper
	callq	halide_error_access_out_of_bounds@PLT
	jmp	.LBB212_70
.LBB212_122:                            # %assert_failed26
	leaq	.Lstr.206(%rip), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	352(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	vzeroupper
	callq	halide_error_buffer_extents_negative@PLT
	jmp	.LBB212_70
.LBB212_123:                            # %assert_failed27
	movq	88(%rsp), %r8                   # 8-byte Reload
	orl	$17, %r8d
	movl	36(%rsp), %eax                  # 4-byte Reload
	decl	%eax
	movl	%eax, (%rsp)
	leaq	.Lstr.206(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	movl	$6, %ecx
                                        # kill: def $r8d killed $r8d killed $r8
	movq	128(%rsp), %r9                  # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	vzeroupper
	callq	halide_error_access_out_of_bounds@PLT
	jmp	.LBB212_70
.LBB212_124:                            # %assert_failed28
	leaq	.Lstr.206(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	movq	320(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	vzeroupper
	callq	halide_error_buffer_extents_negative@PLT
	jmp	.LBB212_70
.LBB212_125:                            # %assert_failed29
	decl	%edi
	movl	%edi, (%rsp)
	leaq	.Lstr.207(%rip), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$3, %r8d
	movq	120(%rsp), %r9                  # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	vzeroupper
	callq	halide_error_access_out_of_bounds@PLT
	jmp	.LBB212_70
.LBB212_126:                            # %assert_failed30
	leaq	.Lstr.207(%rip), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	288(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	vzeroupper
	callq	halide_error_buffer_extents_negative@PLT
	jmp	.LBB212_70
.LBB212_127:                            # %assert_failed31
	decl	%ebx
	movl	%ebx, (%rsp)
	leaq	.Lstr.207(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	$2, %r8d
	movq	112(%rsp), %r9                  # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	vzeroupper
	callq	halide_error_access_out_of_bounds@PLT
	jmp	.LBB212_70
.LBB212_128:                            # %assert_failed32
	leaq	.Lstr.207(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	movq	256(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	vzeroupper
	callq	halide_error_buffer_extents_negative@PLT
	jmp	.LBB212_70
.LBB212_129:                            # %assert_failed33
	decl	%esi
	movl	%esi, (%rsp)
	leaq	.Lstr.208(%rip), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$3, %r8d
	movq	104(%rsp), %r9                  # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	vzeroupper
	callq	halide_error_access_out_of_bounds@PLT
	jmp	.LBB212_70
.LBB212_130:                            # %assert_failed34
	leaq	.Lstr.208(%rip), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	416(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	vzeroupper
	callq	halide_error_buffer_extents_negative@PLT
	jmp	.LBB212_70
.LBB212_131:                            # %assert_failed35
	decl	%r8d
	movl	%r8d, (%rsp)
	leaq	.Lstr.208(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	$2, %r8d
	movq	96(%rsp), %r9                   # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	vzeroupper
	callq	halide_error_access_out_of_bounds@PLT
	jmp	.LBB212_70
.LBB212_132:                            # %assert_failed36
	leaq	.Lstr.208(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	movq	384(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	vzeroupper
	callq	halide_error_buffer_extents_negative@PLT
	jmp	.LBB212_70
.LBB212_133:                            # %assert_failed37
	movq	64(%rsp), %r8                   # 8-byte Reload
	decl	%r8d
	movq	80(%rsp), %r9                   # 8-byte Reload
	leal	(%r9,%rcx), %eax
	decl	%eax
	movl	%eax, (%rsp)
	leaq	.Lstr.209(%rip), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	jmp	.LBB212_136
.LBB212_134:                            # %assert_failed38
	leaq	.Lstr.209(%rip), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
                                        # kill: def $ecx killed $ecx killed $rcx
	vzeroupper
	callq	halide_error_buffer_extents_negative@PLT
	jmp	.LBB212_70
.LBB212_135:                            # %assert_failed39
	movq	88(%rsp), %r8                   # 8-byte Reload
	decl	%r8d
	movq	192(%rsp), %r9                  # 8-byte Reload
	movq	24(%rsp), %rax                  # 8-byte Reload
	addl	%r9d, %eax
	decl	%eax
	movl	%eax, (%rsp)
	leaq	.Lstr.209(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
.LBB212_136:                            # %assert_failed37
	xorl	%ecx, %ecx
                                        # kill: def $r8d killed $r8d killed $r8
                                        # kill: def $r9d killed $r9d killed $r9
	vzeroupper
	callq	halide_error_access_out_of_bounds@PLT
	jmp	.LBB212_70
.LBB212_137:                            # %assert_failed40
	leaq	.Lstr.209(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	movq	24(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	vzeroupper
	callq	halide_error_buffer_extents_negative@PLT
	jmp	.LBB212_70
.LBB212_138:                            # %assert_failed41
	movl	32(%rsp), %eax                  # 4-byte Reload
	decl	%eax
	movl	%eax, (%rsp)
	leaq	.Lstr.209(%rip), %rsi
	xorl	%edi, %edi
	movl	$2, %edx
	xorl	%ecx, %ecx
	movl	$2, %r8d
	movq	72(%rsp), %r9                   # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	vzeroupper
	callq	halide_error_access_out_of_bounds@PLT
	jmp	.LBB212_70
.LBB212_139:                            # %assert_failed42
	leaq	.Lstr.209(%rip), %rsi
	xorl	%edi, %edi
	movl	$2, %edx
	movq	960(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	vzeroupper
	callq	halide_error_buffer_extents_negative@PLT
	jmp	.LBB212_70
.LBB212_140:                            # %assert_failed43
	leaq	.Lstr.210(%rip), %rsi
	leaq	.Lstr.211(%rip), %rcx
	xorl	%edi, %edi
	movl	672(%rsp), %edx                 # 4-byte Reload
	jmp	.LBB212_144
.LBB212_141:                            # %assert_failed44
	leaq	.Lstr.212(%rip), %rsi
	leaq	.Lstr.211(%rip), %rcx
	xorl	%edi, %edi
	movl	576(%rsp), %edx                 # 4-byte Reload
	jmp	.LBB212_144
.LBB212_142:                            # %assert_failed45
	leaq	.Lstr.213(%rip), %rsi
	leaq	.Lstr.211(%rip), %rcx
	xorl	%edi, %edi
	movl	1056(%rsp), %edx                # 4-byte Reload
	jmp	.LBB212_144
.LBB212_143:                            # %assert_failed46
	leaq	.Lstr.214(%rip), %rsi
	leaq	.Lstr.211(%rip), %rcx
	xorl	%edi, %edi
	movl	928(%rsp), %edx                 # 4-byte Reload
.LBB212_144:                            # %assert_failed43
	movl	$1, %r8d
	vzeroupper
	callq	halide_error_constraint_violated@PLT
	jmp	.LBB212_70
.Lfunc_end212:
	.size	camera_pipe, .Lfunc_end212-camera_pipe
	.section	.rodata.camera_pipe,"a",@progbits
	.p2align	2
.LJTI212_0:
	.long	.LBB212_76-.LJTI212_0
	.long	.LBB212_85-.LJTI212_0
	.long	.LBB212_86-.LJTI212_0
	.long	.LBB212_87-.LJTI212_0
.LJTI212_1:
	.long	.LBB212_82-.LJTI212_1
	.long	.LBB212_112-.LJTI212_1
	.long	.LBB212_113-.LJTI212_1
	.long	.LBB212_114-.LJTI212_1
	.long	.LBB212_115-.LJTI212_1
	.long	.LBB212_117-.LJTI212_1
	.long	.LBB212_119-.LJTI212_1
	.long	.LBB212_120-.LJTI212_1
	.long	.LBB212_121-.LJTI212_1
	.long	.LBB212_122-.LJTI212_1
	.long	.LBB212_123-.LJTI212_1
	.long	.LBB212_124-.LJTI212_1
	.long	.LBB212_125-.LJTI212_1
	.long	.LBB212_126-.LJTI212_1
	.long	.LBB212_127-.LJTI212_1
	.long	.LBB212_128-.LJTI212_1
	.long	.LBB212_129-.LJTI212_1
	.long	.LBB212_130-.LJTI212_1
	.long	.LBB212_131-.LJTI212_1
	.long	.LBB212_132-.LJTI212_1
	.long	.LBB212_133-.LJTI212_1
	.long	.LBB212_134-.LJTI212_1
	.long	.LBB212_135-.LJTI212_1
	.long	.LBB212_137-.LJTI212_1
	.long	.LBB212_138-.LJTI212_1
	.long	.LBB212_139-.LJTI212_1
	.long	.LBB212_140-.LJTI212_1
	.long	.LBB212_141-.LJTI212_1
	.long	.LBB212_142-.LJTI212_1
	.long	.LBB212_143-.LJTI212_1
.LJTI212_2:
	.long	.LBB212_84-.LJTI212_2
	.long	.LBB212_89-.LJTI212_2
	.long	.LBB212_90-.LJTI212_2
	.long	.LBB212_91-.LJTI212_2
	.long	.LBB212_92-.LJTI212_2
	.long	.LBB212_93-.LJTI212_2
	.long	.LBB212_94-.LJTI212_2
	.long	.LBB212_95-.LJTI212_2
	.long	.LBB212_96-.LJTI212_2
	.long	.LBB212_97-.LJTI212_2
	.long	.LBB212_98-.LJTI212_2
	.long	.LBB212_99-.LJTI212_2
	.long	.LBB212_100-.LJTI212_2
	.long	.LBB212_101-.LJTI212_2
	.long	.LBB212_102-.LJTI212_2
	.long	.LBB212_103-.LJTI212_2
	.long	.LBB212_104-.LJTI212_2
	.long	.LBB212_105-.LJTI212_2
	.long	.LBB212_107-.LJTI212_2
	.long	.LBB212_108-.LJTI212_2
	.long	.LBB212_109-.LJTI212_2
	.long	.LBB212_110-.LJTI212_2
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5                               # -- Begin function camera_pipe.par_for.processed.s0.v1.v3.v4
.LCPI213_0:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.byte	16                              # 0x10
	.byte	17                              # 0x11
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.byte	24                              # 0x18
	.byte	25                              # 0x19
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI213_1:
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI213_2:
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI213_3:
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
.LCPI213_4:
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	128                             # 0x80
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
	.byte	128                             # 0x80
.LCPI213_5:
	.short	1023                            # 0x3ff
	.short	1023                            # 0x3ff
	.short	1023                            # 0x3ff
	.short	1023                            # 0x3ff
	.short	1023                            # 0x3ff
	.short	1023                            # 0x3ff
	.short	1023                            # 0x3ff
	.short	1023                            # 0x3ff
	.short	1023                            # 0x3ff
	.short	1023                            # 0x3ff
	.short	1023                            # 0x3ff
	.short	1023                            # 0x3ff
	.short	1023                            # 0x3ff
	.short	1023                            # 0x3ff
	.short	1023                            # 0x3ff
	.short	1023                            # 0x3ff
.LCPI213_7:
	.zero	32,255
	.section	.rodata,"a",@progbits
	.p2align	1
.LCPI213_6:
	.short	255                             # 0xff
	.section	.text.camera_pipe.par_for.processed.s0.v1.v3.v4,"ax",@progbits
	.p2align	4, 0x90
	.type	camera_pipe.par_for.processed.s0.v1.v3.v4,@function
camera_pipe.par_for.processed.s0.v1.v3.v4: # @camera_pipe.par_for.processed.s0.v1.v3.v4
# %bb.0:                                # %entry
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2280, %rsp                     # imm = 0x8E8
	movslq	20(%rdx), %r13
	cmpq	$-33, %r13
	movl	$-32, %ecx
	cmovgl	%r13d, %ecx
	movq	%rdi, %r14
	addl	$32, %ecx
	leaq	(,%rcx,8), %rax
	cmpl	$268435456, %ecx                # imm = 0x10000000
	movq	%rdi, 264(%rsp)                 # 8-byte Spill
	jae	.LBB213_109
# %bb.1:                                # %"assert succeeded"
	movl	%esi, %r12d
	movslq	8(%rdx), %rcx
	movq	%rcx, 712(%rsp)                 # 8-byte Spill
	movslq	12(%rdx), %rcx
	movq	%rcx, 1352(%rsp)                # 8-byte Spill
	movl	16(%rdx), %ecx
	movq	%rcx, 752(%rsp)                 # 8-byte Spill
	movl	28(%rdx), %ecx
	movl	%ecx, 568(%rsp)                 # 4-byte Spill
	movslq	24(%rdx), %rcx
	movq	%rcx, 384(%rsp)                 # 8-byte Spill
	movl	32(%rdx), %ecx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movl	36(%rdx), %ebp
	movslq	40(%rdx), %rcx
	movq	%rcx, 704(%rsp)                 # 8-byte Spill
	movslq	44(%rdx), %rcx
	movq	%rcx, 1256(%rsp)                # 8-byte Spill
	movl	48(%rdx), %ecx
	movq	%rcx, 416(%rsp)                 # 8-byte Spill
	movslq	52(%rdx), %rbx
	movslq	56(%rdx), %rcx
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	movl	60(%rdx), %ecx
	movq	%rcx, 512(%rsp)                 # 8-byte Spill
	movl	64(%rdx), %ecx
	movl	%ecx, 564(%rsp)                 # 4-byte Spill
	movslq	68(%rdx), %rcx
	movq	%rcx, 1248(%rsp)                # 8-byte Spill
	movq	72(%rdx), %r15
	movq	88(%rdx), %rcx
	movq	%rcx, 1048(%rsp)                # 8-byte Spill
	movq	104(%rdx), %rcx
	movq	%rcx, 696(%rsp)                 # 8-byte Spill
	movq	120(%rdx), %rcx
	movq	%rcx, 1344(%rsp)                # 8-byte Spill
	movq	136(%rdx), %rcx
	movq	%rcx, 1336(%rsp)                # 8-byte Spill
	orq	$6, %rax
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	halide_malloc@PLT
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	je	.LBB213_110
# %bb.2:                                # %"assert succeeded3"
	movq	384(%rsp), %rcx                 # 8-byte Reload
	cmpl	$-19, %ecx
	movl	$-19, %eax
	cmovgl	%ecx, %eax
	addl	$19, %eax
	movq	%rax, %rdx
	shlq	$5, %rdx
	cmpl	$67108864, %eax                 # imm = 0x4000000
	jae	.LBB213_112
# %bb.3:                                # %"assert succeeded5"
	movq	%rbp, 440(%rsp)                 # 8-byte Spill
	orq	$6, %rdx
	movq	%r14, %rdi
	movq	%rdx, %rsi
	callq	halide_malloc@PLT
	testq	%rax, %rax
	je	.LBB213_113
# %bb.4:                                # %"assert succeeded7"
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	384(%rsp), %rcx                 # 8-byte Reload
	cmpl	$-18, %ecx
	movl	$-18, %eax
	cmovgl	%ecx, %eax
	addl	$18, %eax
	leaq	(,%rax,8), %rbp
	cmpl	$268435456, %eax                # imm = 0x10000000
	jae	.LBB213_115
# %bb.5:                                # %"assert succeeded9"
	orq	$6, %rbp
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	halide_malloc@PLT
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	je	.LBB213_116
# %bb.6:                                # %"assert succeeded11"
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	halide_malloc@PLT
	movq	%rax, %rcx
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	testq	%rax, %rax
	je	.LBB213_118
# %bb.7:                                # %"assert succeeded15"
	cmpl	$-32, %ebx
	movl	$-32, %eax
	cmovgl	%ebx, %eax
	addl	$32, %eax
	imulq	$102, %rax, %rdx
	movq	%rdx, %rax
	andq	$-2147483648, %rax              # imm = 0x80000000
	jne	.LBB213_119
# %bb.8:                                # %"assert succeeded17"
	movq	%r13, 128(%rsp)                 # 8-byte Spill
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	addq	$3, %rdx
	movq	%r14, %rdi
	movq	%rdx, %rsi
	callq	halide_malloc@PLT
	testq	%rax, %rax
	je	.LBB213_120
# %bb.9:                                # %"assert succeeded19"
	movq	%rax, %r14
	movslq	416(%rsp), %rcx                 # 4-byte Folded Reload
	movl	%r12d, %eax
	shll	$4, %eax
	movq	%rax, 504(%rsp)                 # 8-byte Spill
	shll	$5, %r12d
	movq	80(%rsp), %r10                  # 8-byte Reload
	testl	%r10d, %r10d
	setle	7(%rsp)                         # 1-byte Folded Spill
	movq	%rcx, %r8
	shlq	$5, %r8
	movq	%r14, %rdx
	subq	%r8, %rdx
	movq	%rdx, 744(%rsp)                 # 8-byte Spill
	negq	%r8
	movq	%rcx, 536(%rsp)                 # 8-byte Spill
	imulq	$1056, %rcx, %r9                # imm = 0x420
	imulq	$2144, %rcx, %rbp               # imm = 0x860
	movq	192(%rsp), %rax                 # 8-byte Reload
	addq	%rax, %rax
	movq	16(%rsp), %r13                  # 8-byte Reload
	subq	%rax, %r13
	addq	$2144, %rbp                     # imm = 0x860
	movq	32(%rsp), %rcx                  # 8-byte Reload
	leaq	128(,%rcx,4), %rax
	movq	%rbp, %r11
	subq	%rax, %r11
	addq	$1056, %r9                      # imm = 0x420
	movq	%r9, %rdx
	subq	%rax, %rdx
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	movq	%r8, %rdx
	subq	%rax, %rdx
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	leaq	32(%rcx), %rax
	movq	%rax, 1328(%rsp)                # 8-byte Spill
	leaq	(%rax,%rax,4), %rax
	subq	%rax, %rbp
	subq	%rax, %r9
	subq	%rax, %r8
	movq	712(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%rdx), %rax
	leaq	(%rax,%rax,8), %rax
	movq	%rax, 520(%rsp)                 # 8-byte Spill
	movl	%edx, %eax
	shll	$4, %eax
	movq	%rax, 1232(%rsp)                # 8-byte Spill
	movq	%rdx, %rsi
	shlq	$4, %rsi
	subq	%rdx, %rsi
	subq	%rdx, %rsi
	movq	128(%rsp), %rdi                 # 8-byte Reload
	leal	32(%rdi), %eax
	movl	%eax, 560(%rsp)                 # 4-byte Spill
	leal	(%rdi,%rdi), %eax
	addl	$64, %eax
	movl	%eax, 556(%rsp)                 # 4-byte Spill
	leaq	32(%rdi), %rax
	movq	%rax, 1224(%rsp)                # 8-byte Spill
	leaq	64(%rdi,%rdi), %rax
	movq	%rax, 1216(%rsp)                # 8-byte Spill
	movq	384(%rsp), %rdi                 # 8-byte Reload
	leaq	(,%rdi,4), %rax
	leaq	(%rax,%rax,2), %rax
	movq	%rax, 1088(%rsp)                # 8-byte Spill
	movl	%r10d, %eax
	andl	$7, %eax
	movq	%rax, 272(%rsp)                 # 8-byte Spill
                                        # kill: def $r10d killed $r10d killed $r10 def $r10
	andl	$-8, %r10d
	movq	%r10, 424(%rsp)                 # 8-byte Spill
	leal	-8(%r12), %eax
	imull	%edx, %eax
	movq	440(%rsp), %r10                 # 8-byte Reload
	addl	%r10d, %eax
	movl	%eax, 336(%rsp)                 # 4-byte Spill
	leal	-7(%r12), %ecx
	imull	%edx, %ecx
	leal	-6(%r12), %eax
	imull	%edx, %eax
	addl	%r10d, %eax
	movl	%eax, 332(%rsp)                 # 4-byte Spill
	leal	-5(%r12), %eax
	imull	%edx, %eax
	addl	%r10d, %eax
	movl	%eax, 328(%rsp)                 # 4-byte Spill
	leal	-4(%r12), %eax
	imull	%edx, %eax
	addl	%r10d, %eax
	movl	%eax, 324(%rsp)                 # 4-byte Spill
	leal	-3(%r12), %eax
	imull	%edx, %eax
	addl	%r10d, %eax
	movl	%eax, 320(%rsp)                 # 4-byte Spill
	leal	(%r10,%rcx), %eax
	movl	%eax, 316(%rsp)                 # 4-byte Spill
	movq	416(%rsp), %rax                 # 8-byte Reload
	shlq	$5, %rax
	movq	%rax, 440(%rsp)                 # 8-byte Spill
	movq	704(%rsp), %rax                 # 8-byte Reload
	subl	%eax, %ecx
	movq	%rcx, 528(%rsp)                 # 8-byte Spill
	leal	9(%r12), %ebx
	movq	%r12, 720(%rsp)                 # 8-byte Spill
	imull	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, 348(%rsp)                 # 4-byte Spill
	movq	520(%rsp), %rbx                 # 8-byte Reload
	subq	%rax, %rbx
	movq	%rbx, 1208(%rsp)                # 8-byte Spill
	movslq	504(%rsp), %r10                 # 4-byte Folded Reload
	movq	%r10, %rbx
	movq	%r10, 1200(%rsp)                # 8-byte Spill
	leal	-4(%r10), %ebx
	imull	%edx, %ebx
	addl	%ebx, %ebx
	movl	%ebx, 344(%rsp)                 # 4-byte Spill
	movq	%rsi, 736(%rsp)                 # 8-byte Spill
	subq	%rax, %rsi
	movq	%rsi, 1192(%rsp)                # 8-byte Spill
	leal	8(%r12), %ecx
	imull	%edx, %ecx
	subl	%eax, %ecx
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	movq	512(%rsp), %rax                 # 8-byte Reload
	shlq	$6, %rax
	addq	$64, %rax
	movq	%rax, 1184(%rsp)                # 8-byte Spill
	movq	%rdi, %rax
	shlq	$4, %rax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	addq	%rcx, %rax
	addq	$336, %rax                      # imm = 0x150
	movq	%rax, 1176(%rsp)                # 8-byte Spill
	leaq	80(%r13), %rax
	movq	%rax, 1168(%rsp)                # 8-byte Spill
	addq	$112, %r13
	movq	%r13, 1240(%rsp)                # 8-byte Spill
	movq	88(%rsp), %r13                  # 8-byte Reload
	movq	96(%rsp), %r10                  # 8-byte Reload
	movq	424(%rsp), %r12                 # 8-byte Reload
	movq	416(%rsp), %rax                 # 8-byte Reload
	shlq	$4, %rax
	movq	%rax, 1360(%rsp)                # 8-byte Spill
	addq	%r14, %r11
	movq	%r11, 104(%rsp)                 # 8-byte Spill
	addq	%r14, %r10
	addq	%r14, %r13
	addq	%r14, %rbp
	addq	%r14, %r9
	movq	%r9, 184(%rsp)                  # 8-byte Spill
	addq	%r14, %r8
	leaq	(%rdi,%rdi,2), %rax
	leaq	(%rcx,%rax,8), %rsi
	addq	$488, %rsi                      # imm = 0x1E8
	movq	%rsi, 1160(%rsp)                # 8-byte Spill
	leaq	458(%rcx,%rax,8), %rax
	movq	%rax, 1040(%rsp)                # 8-byte Spill
	leal	19(%rdi), %eax
	movl	%eax, 120(%rsp)                 # 4-byte Spill
	leal	18(%rdi), %eax
	movl	%eax, 312(%rsp)                 # 4-byte Spill
	leaq	38(%rdi,%rdi), %rax
	movq	%rax, 728(%rsp)                 # 8-byte Spill
	leal	(,%rdi,4), %eax
	movq	%rax, 1152(%rsp)                # 8-byte Spill
	leaq	36(%rdi,%rdi), %rax
	movq	%rax, 1032(%rsp)                # 8-byte Spill
	leal	(,%rdi,8), %eax
	movq	%rax, 1024(%rsp)                # 8-byte Spill
	leal	19(%rdi), %eax
	movl	%eax, 552(%rsp)                 # 4-byte Spill
	leal	(,%rdi,4), %eax
	movl	%eax, 548(%rsp)                 # 4-byte Spill
	movq	32(%rsp), %rsi                  # 8-byte Reload
	leaq	(%rsi,%rsi), %rax
	addq	$64, %rax
	movq	%rax, 1144(%rsp)                # 8-byte Spill
	movq	536(%rsp), %r11                 # 8-byte Reload
	imull	$2176, %r11d, %eax              # imm = 0x880
	movq	%rax, 1320(%rsp)                # 8-byte Spill
	addl	%esi, %eax
	movq	%rax, 1312(%rsp)                # 8-byte Spill
	leal	32(%rsi), %eax
	movl	%eax, 572(%rsp)                 # 4-byte Spill
	imull	$1088, %r11d, %eax              # imm = 0x440
	movq	%rax, 1304(%rsp)                # 8-byte Spill
	addl	%esi, %eax
	movq	%rax, 1296(%rsp)                # 8-byte Spill
	leaq	(%rsi,%r14), %rax
	addq	$34, %rax
	movq	%rax, 1288(%rsp)                # 8-byte Spill
	addq	$-30, 744(%rsp)                 # 8-byte Folded Spill
	movq	272(%rsp), %r9                  # 8-byte Reload
	vpxor	%xmm5, %xmm5, %xmm5
	vmovdqa	.LCPI213_0(%rip), %ymm7         # ymm7 = <0,1,4,5,u,u,u,u,8,9,12,13,u,u,u,u,16,17,20,21,u,u,u,u,24,25,28,29,u,u,u,u>
	vmovdqa	.LCPI213_1(%rip), %ymm8         # ymm8 = <u,u,u,u,u,u,u,u,2,3,6,7,10,11,14,15,u,u,u,u,u,u,u,u,18,19,22,23,26,27,30,31>
	vmovdqa	.LCPI213_2(%rip), %ymm9         # ymm9 = <2,3,6,7,10,11,14,15,u,u,u,u,u,u,u,u,18,19,22,23,26,27,30,31,u,u,u,u,u,u,u,u>
	movb	$2, %bl
	movq	504(%rsp), %rax                 # 8-byte Reload
	leal	-2(%rax), %esi
	leal	-1(%rax), %eax
	movl	%eax, 960(%rsp)                 # 4-byte Spill
	movq	752(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rax), %eax
	movq	%rax, 1280(%rsp)                # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	leaq	-1(%rax), %rax
	movq	%rax, 1136(%rsp)                # 8-byte Spill
	movq	696(%rsp), %rdi                 # 8-byte Reload
	leaq	868(%rdi), %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	leal	(%rdx,%rdx), %eax
	movq	%rax, 1128(%rsp)                # 8-byte Spill
	leaq	-28(%rdi), %rax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	leaq	56(%rdi), %rax
	movq	%rax, 1120(%rsp)                # 8-byte Spill
	leaq	60(%rdi), %rax
	movq	%rax, 1112(%rsp)                # 8-byte Spill
	leaq	184(%rcx), %rax
	movq	%rax, 1104(%rsp)                # 8-byte Spill
	leaq	32(%rcx), %rax
	movq	%rax, 1096(%rsp)                # 8-byte Spill
	movq	8(%rsp), %rdx                   # 8-byte Reload
	leaq	32(%rdx), %rax
	movq	%rax, 1080(%rsp)                # 8-byte Spill
	leaq	456(%rcx), %rax
	movq	%rax, 1072(%rsp)                # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	leaq	32(%rax), %rdi
	movq	%rdi, 1064(%rsp)                # 8-byte Spill
	movq	176(%rsp), %rdi                 # 8-byte Reload
	leaq	488(%rcx), %rcx
	movq	%rcx, 1056(%rsp)                # 8-byte Spill
	leaq	2(%rdx), %rcx
	movq	%rcx, 1016(%rsp)                # 8-byte Spill
	addq	$4, %rax
	movq	%rax, 1008(%rsp)                # 8-byte Spill
	movq	%r11, %rcx
	imull	$2144, %ecx, %eax               # imm = 0x860
	movq	%rax, 1272(%rsp)                # 8-byte Spill
	imull	$1056, %ecx, %eax               # imm = 0x420
	movq	%rax, 1264(%rsp)                # 8-byte Spill
	xorl	%r11d, %r11d
	leaq	.Lstr.219(%rip), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	720(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 124(%rsp)                 # 4-byte Spill
	movl	%esi, 116(%rsp)                 # 4-byte Spill
	movl	%esi, 340(%rsp)                 # 4-byte Spill
	jmp	.LBB213_12
	.p2align	4, 0x90
.LBB213_10:                             #   in Loop: Header=BB213_12 Depth=1
	movq	296(%rsp), %r8                  # 8-byte Reload
	movq	184(%rsp), %rax                 # 8-byte Reload
	movq	288(%rsp), %rbp                 # 8-byte Reload
	movq	96(%rsp), %r10                  # 8-byte Reload
	movq	88(%rsp), %r13                  # 8-byte Reload
	movq	272(%rsp), %r9                  # 8-byte Reload
	movq	176(%rsp), %rdi                 # 8-byte Reload
.LBB213_11:                             # %after_bb24
                                        #   in Loop: Header=BB213_12 Depth=1
	incq	%r11
	movq	1128(%rsp), %rsi                # 8-byte Reload
	addl	%esi, 336(%rsp)                 # 4-byte Folded Spill
	addl	%esi, 316(%rsp)                 # 4-byte Folded Spill
	addl	%esi, 332(%rsp)                 # 4-byte Folded Spill
	addl	%esi, 328(%rsp)                 # 4-byte Folded Spill
	addl	%esi, 324(%rsp)                 # 4-byte Folded Spill
	addl	%esi, 320(%rsp)                 # 4-byte Folded Spill
	addl	$2, 124(%rsp)                   # 4-byte Folded Spill
	incb	%bl
	movq	528(%rsp), %rdx                 # 8-byte Reload
	addl	%esi, %edx
	movq	%rdx, 528(%rsp)                 # 8-byte Spill
	addl	%esi, 348(%rsp)                 # 4-byte Folded Spill
	addl	%esi, 344(%rsp)                 # 4-byte Folded Spill
	addq	%rsi, %rdi
	movq	1144(%rsp), %rdx                # 8-byte Reload
	addq	%rdx, %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	addq	%rdx, %r10
	addq	%rdx, %r13
	addq	%rdx, %rbp
	addq	%rdx, %rax
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	addq	%rdx, %r8
	cmpq	$20, %r11
	je	.LBB213_92
.LBB213_12:                             # %"for processed.s0.v1.v3.v3.$n.$n.$n.$n.rebased"
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB213_16 Depth 2
                                        #     Child Loop BB213_19 Depth 2
                                        #     Child Loop BB213_24 Depth 2
                                        #     Child Loop BB213_27 Depth 2
                                        #     Child Loop BB213_32 Depth 2
                                        #     Child Loop BB213_35 Depth 2
                                        #     Child Loop BB213_40 Depth 2
                                        #     Child Loop BB213_43 Depth 2
                                        #     Child Loop BB213_48 Depth 2
                                        #     Child Loop BB213_51 Depth 2
                                        #     Child Loop BB213_56 Depth 2
                                        #     Child Loop BB213_59 Depth 2
                                        #     Child Loop BB213_62 Depth 2
                                        #     Child Loop BB213_66 Depth 2
                                        #     Child Loop BB213_74 Depth 2
                                        #     Child Loop BB213_83 Depth 2
                                        #     Child Loop BB213_86 Depth 2
                                        #       Child Loop BB213_88 Depth 3
	cmpq	$1, %r11
	movl	$1, %eax
	cmovaq	%r11, %rax
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	movb	%bl, 6(%rsp)                    # 1-byte Spill
	movzbl	%bl, %eax
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	movl	%eax, %ecx
	andl	$1, %ecx
	imull	556(%rsp), %ecx                 # 4-byte Folded Reload
	movq	1200(%rsp), %rax                # 8-byte Reload
	leaq	(%r11,%rax), %rsi
	leal	(%rsi,%rsi), %eax
	movq	%rax, 760(%rsp)                 # 8-byte Spill
	leal	(%rsi,%rsi), %edx
	addl	$-6, %edx
	movq	720(%rsp), %rax                 # 8-byte Reload
	cmpl	%eax, %edx
	cmovll	%eax, %edx
	movq	%rdx, 304(%rsp)                 # 8-byte Spill
	movl	%r11d, %eax
	movl	%r11d, 32(%rsp)                 # 4-byte Spill
	movq	%rsi, 384(%rsp)                 # 8-byte Spill
	leal	(%rsi,%rsi), %eax
	addl	$12, %eax
	cmpl	568(%rsp), %eax                 # 4-byte Folded Reload
	setg	%al
	orb	7(%rsp), %al                    # 1-byte Folded Reload
	movq	1136(%rsp), %rbx                # 8-byte Reload
	jne	.LBB213_60
# %bb.13:                               # %"for prefetch_split_input.0.preheader"
                                        #   in Loop: Header=BB213_12 Depth=1
	movslq	336(%rsp), %rax                 # 4-byte Folded Reload
	cmpq	$7, %rbx
	jae	.LBB213_15
# %bb.14:                               #   in Loop: Header=BB213_12 Depth=1
	xorl	%edx, %edx
	jmp	.LBB213_17
	.p2align	4, 0x90
.LBB213_15:                             # %"for prefetch_split_input.0.preheader1"
                                        #   in Loop: Header=BB213_12 Depth=1
	movq	160(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%rax,2), %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB213_16:                             # %"for prefetch_split_input.0"
                                        #   Parent Loop BB213_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	prefetcht0	-896(%rsi)
	prefetcht0	-768(%rsi)
	prefetcht0	-640(%rsi)
	prefetcht0	-512(%rsi)
	prefetcht0	-384(%rsi)
	prefetcht0	-256(%rsi)
	prefetcht0	-128(%rsi)
	prefetcht0	(%rsi)
	addq	$8, %rdx
	addq	$1024, %rsi                     # imm = 0x400
	cmpq	%rdx, %r12
	jne	.LBB213_16
.LBB213_17:                             # %"end for prefetch_split_input.0.unr-lcssa"
                                        #   in Loop: Header=BB213_12 Depth=1
	testq	%r9, %r9
	je	.LBB213_20
# %bb.18:                               # %"for prefetch_split_input.0.epil.preheader"
                                        #   in Loop: Header=BB213_12 Depth=1
	shlq	$6, %rdx
	addq	%rax, %rdx
	movq	168(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rdx,2), %rax
	movq	%r9, %rdx
	.p2align	4, 0x90
.LBB213_19:                             # %"for prefetch_split_input.0.epil"
                                        #   Parent Loop BB213_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	prefetcht0	(%rax)
	subq	$-128, %rax
	decq	%rdx
	jne	.LBB213_19
.LBB213_20:                             # %"end for prefetch_split_input.0"
                                        #   in Loop: Header=BB213_12 Depth=1
	cmpl	$0, 80(%rsp)                    # 4-byte Folded Reload
	jle	.LBB213_60
# %bb.21:                               # %"for prefetch_split_input.0.preheader.1"
                                        #   in Loop: Header=BB213_12 Depth=1
	movslq	316(%rsp), %rax                 # 4-byte Folded Reload
	cmpq	$7, %rbx
	jae	.LBB213_23
# %bb.22:                               #   in Loop: Header=BB213_12 Depth=1
	xorl	%edx, %edx
	jmp	.LBB213_25
	.p2align	4, 0x90
.LBB213_23:                             # %"for prefetch_split_input.0.1.preheader"
                                        #   in Loop: Header=BB213_12 Depth=1
	movq	160(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%rax,2), %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB213_24:                             # %"for prefetch_split_input.0.1"
                                        #   Parent Loop BB213_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	prefetcht0	-896(%rsi)
	prefetcht0	-768(%rsi)
	prefetcht0	-640(%rsi)
	prefetcht0	-512(%rsi)
	prefetcht0	-384(%rsi)
	prefetcht0	-256(%rsi)
	prefetcht0	-128(%rsi)
	prefetcht0	(%rsi)
	addq	$8, %rdx
	addq	$1024, %rsi                     # imm = 0x400
	cmpq	%rdx, %r12
	jne	.LBB213_24
.LBB213_25:                             # %"end for prefetch_split_input.0.1.unr-lcssa"
                                        #   in Loop: Header=BB213_12 Depth=1
	testq	%r9, %r9
	je	.LBB213_28
# %bb.26:                               # %"for prefetch_split_input.0.1.epil.preheader"
                                        #   in Loop: Header=BB213_12 Depth=1
	shlq	$6, %rdx
	addq	%rax, %rdx
	movq	168(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rdx,2), %rax
	movq	%r9, %rdx
	.p2align	4, 0x90
.LBB213_27:                             # %"for prefetch_split_input.0.1.epil"
                                        #   Parent Loop BB213_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	prefetcht0	(%rax)
	subq	$-128, %rax
	decq	%rdx
	jne	.LBB213_27
.LBB213_28:                             # %"end for prefetch_split_input.0.1"
                                        #   in Loop: Header=BB213_12 Depth=1
	cmpl	$0, 80(%rsp)                    # 4-byte Folded Reload
	jle	.LBB213_60
# %bb.29:                               # %"for prefetch_split_input.0.preheader.2"
                                        #   in Loop: Header=BB213_12 Depth=1
	movslq	332(%rsp), %rax                 # 4-byte Folded Reload
	cmpq	$7, %rbx
	jae	.LBB213_31
# %bb.30:                               #   in Loop: Header=BB213_12 Depth=1
	xorl	%edx, %edx
	jmp	.LBB213_33
	.p2align	4, 0x90
.LBB213_31:                             # %"for prefetch_split_input.0.2.preheader"
                                        #   in Loop: Header=BB213_12 Depth=1
	movq	160(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%rax,2), %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB213_32:                             # %"for prefetch_split_input.0.2"
                                        #   Parent Loop BB213_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	prefetcht0	-896(%rsi)
	prefetcht0	-768(%rsi)
	prefetcht0	-640(%rsi)
	prefetcht0	-512(%rsi)
	prefetcht0	-384(%rsi)
	prefetcht0	-256(%rsi)
	prefetcht0	-128(%rsi)
	prefetcht0	(%rsi)
	addq	$8, %rdx
	addq	$1024, %rsi                     # imm = 0x400
	cmpq	%rdx, %r12
	jne	.LBB213_32
.LBB213_33:                             # %"end for prefetch_split_input.0.2.unr-lcssa"
                                        #   in Loop: Header=BB213_12 Depth=1
	testq	%r9, %r9
	je	.LBB213_36
# %bb.34:                               # %"for prefetch_split_input.0.2.epil.preheader"
                                        #   in Loop: Header=BB213_12 Depth=1
	shlq	$6, %rdx
	addq	%rax, %rdx
	movq	168(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rdx,2), %rax
	movq	%r9, %rdx
	.p2align	4, 0x90
.LBB213_35:                             # %"for prefetch_split_input.0.2.epil"
                                        #   Parent Loop BB213_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	prefetcht0	(%rax)
	subq	$-128, %rax
	decq	%rdx
	jne	.LBB213_35
.LBB213_36:                             # %"end for prefetch_split_input.0.2"
                                        #   in Loop: Header=BB213_12 Depth=1
	cmpl	$0, 80(%rsp)                    # 4-byte Folded Reload
	jle	.LBB213_60
# %bb.37:                               # %"for prefetch_split_input.0.preheader.3"
                                        #   in Loop: Header=BB213_12 Depth=1
	movslq	328(%rsp), %rax                 # 4-byte Folded Reload
	cmpq	$7, %rbx
	jae	.LBB213_39
# %bb.38:                               #   in Loop: Header=BB213_12 Depth=1
	xorl	%edx, %edx
	jmp	.LBB213_41
	.p2align	4, 0x90
.LBB213_39:                             # %"for prefetch_split_input.0.3.preheader"
                                        #   in Loop: Header=BB213_12 Depth=1
	movq	160(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%rax,2), %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB213_40:                             # %"for prefetch_split_input.0.3"
                                        #   Parent Loop BB213_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	prefetcht0	-896(%rsi)
	prefetcht0	-768(%rsi)
	prefetcht0	-640(%rsi)
	prefetcht0	-512(%rsi)
	prefetcht0	-384(%rsi)
	prefetcht0	-256(%rsi)
	prefetcht0	-128(%rsi)
	prefetcht0	(%rsi)
	addq	$8, %rdx
	addq	$1024, %rsi                     # imm = 0x400
	cmpq	%rdx, %r12
	jne	.LBB213_40
.LBB213_41:                             # %"end for prefetch_split_input.0.3.unr-lcssa"
                                        #   in Loop: Header=BB213_12 Depth=1
	testq	%r9, %r9
	je	.LBB213_44
# %bb.42:                               # %"for prefetch_split_input.0.3.epil.preheader"
                                        #   in Loop: Header=BB213_12 Depth=1
	shlq	$6, %rdx
	addq	%rax, %rdx
	movq	168(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rdx,2), %rax
	movq	%r9, %rdx
	.p2align	4, 0x90
.LBB213_43:                             # %"for prefetch_split_input.0.3.epil"
                                        #   Parent Loop BB213_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	prefetcht0	(%rax)
	subq	$-128, %rax
	decq	%rdx
	jne	.LBB213_43
.LBB213_44:                             # %"end for prefetch_split_input.0.3"
                                        #   in Loop: Header=BB213_12 Depth=1
	cmpl	$0, 80(%rsp)                    # 4-byte Folded Reload
	jle	.LBB213_60
# %bb.45:                               # %"for prefetch_split_input.0.preheader.4"
                                        #   in Loop: Header=BB213_12 Depth=1
	movslq	324(%rsp), %rax                 # 4-byte Folded Reload
	cmpq	$7, %rbx
	jae	.LBB213_47
# %bb.46:                               #   in Loop: Header=BB213_12 Depth=1
	xorl	%edx, %edx
	jmp	.LBB213_49
	.p2align	4, 0x90
.LBB213_47:                             # %"for prefetch_split_input.0.4.preheader"
                                        #   in Loop: Header=BB213_12 Depth=1
	movq	160(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%rax,2), %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB213_48:                             # %"for prefetch_split_input.0.4"
                                        #   Parent Loop BB213_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	prefetcht0	-896(%rsi)
	prefetcht0	-768(%rsi)
	prefetcht0	-640(%rsi)
	prefetcht0	-512(%rsi)
	prefetcht0	-384(%rsi)
	prefetcht0	-256(%rsi)
	prefetcht0	-128(%rsi)
	prefetcht0	(%rsi)
	addq	$8, %rdx
	addq	$1024, %rsi                     # imm = 0x400
	cmpq	%rdx, %r12
	jne	.LBB213_48
.LBB213_49:                             # %"end for prefetch_split_input.0.4.unr-lcssa"
                                        #   in Loop: Header=BB213_12 Depth=1
	testq	%r9, %r9
	je	.LBB213_52
# %bb.50:                               # %"for prefetch_split_input.0.4.epil.preheader"
                                        #   in Loop: Header=BB213_12 Depth=1
	shlq	$6, %rdx
	addq	%rax, %rdx
	movq	168(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rdx,2), %rax
	movq	%r9, %rdx
	.p2align	4, 0x90
.LBB213_51:                             # %"for prefetch_split_input.0.4.epil"
                                        #   Parent Loop BB213_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	prefetcht0	(%rax)
	subq	$-128, %rax
	decq	%rdx
	jne	.LBB213_51
.LBB213_52:                             # %"end for prefetch_split_input.0.4"
                                        #   in Loop: Header=BB213_12 Depth=1
	cmpl	$0, 80(%rsp)                    # 4-byte Folded Reload
	jle	.LBB213_60
# %bb.53:                               # %"for prefetch_split_input.0.preheader.5"
                                        #   in Loop: Header=BB213_12 Depth=1
	movslq	320(%rsp), %rax                 # 4-byte Folded Reload
	cmpq	$7, %rbx
	jae	.LBB213_55
# %bb.54:                               #   in Loop: Header=BB213_12 Depth=1
	xorl	%edx, %edx
	jmp	.LBB213_57
	.p2align	4, 0x90
.LBB213_55:                             # %"for prefetch_split_input.0.5.preheader"
                                        #   in Loop: Header=BB213_12 Depth=1
	movq	160(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%rax,2), %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB213_56:                             # %"for prefetch_split_input.0.5"
                                        #   Parent Loop BB213_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	prefetcht0	-896(%rsi)
	prefetcht0	-768(%rsi)
	prefetcht0	-640(%rsi)
	prefetcht0	-512(%rsi)
	prefetcht0	-384(%rsi)
	prefetcht0	-256(%rsi)
	prefetcht0	-128(%rsi)
	prefetcht0	(%rsi)
	addq	$8, %rdx
	addq	$1024, %rsi                     # imm = 0x400
	cmpq	%rdx, %r12
	jne	.LBB213_56
.LBB213_57:                             # %after_bb.loopexit.unr-lcssa
                                        #   in Loop: Header=BB213_12 Depth=1
	testq	%r9, %r9
	je	.LBB213_60
# %bb.58:                               # %"for prefetch_split_input.0.5.epil.preheader"
                                        #   in Loop: Header=BB213_12 Depth=1
	shlq	$6, %rdx
	addq	%rax, %rdx
	movq	168(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rdx,2), %rax
	movq	%r9, %rdx
	.p2align	4, 0x90
.LBB213_59:                             # %"for prefetch_split_input.0.5.epil"
                                        #   Parent Loop BB213_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	prefetcht0	(%rax)
	subq	$-128, %rax
	decq	%rdx
	jne	.LBB213_59
.LBB213_60:                             # %after_bb
                                        #   in Loop: Header=BB213_12 Depth=1
	movq	%r11, 432(%rsp)                 # 8-byte Spill
	movq	%r13, 88(%rsp)                  # 8-byte Spill
	movq	%r10, 96(%rsp)                  # 8-byte Spill
	movq	%rbp, 288(%rsp)                 # 8-byte Spill
	movq	%r8, 296(%rsp)                  # 8-byte Spill
	movslq	%ecx, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	384(%rsp), %rax                 # 8-byte Reload
	leaq	-4(%rax), %rcx
	movq	712(%rsp), %rax                 # 8-byte Reload
	imulq	%rax, %rcx
	movq	%rcx, 1472(%rsp)                # 8-byte Spill
	andl	$1, 32(%rsp)                    # 4-byte Folded Spill
	movq	760(%rsp), %rcx                 # 8-byte Reload
	movl	%ecx, %edx
	andl	$2, %edx
	orl	$1, %edx
	movl	%edx, 352(%rsp)                 # 4-byte Spill
	addl	$-7, %ecx
	imull	%eax, %ecx
	movl	%ecx, 1504(%rsp)                # 4-byte Spill
	cmpl	$0, 536(%rsp)                   # 4-byte Folded Reload
	movq	696(%rsp), %rax                 # 8-byte Reload
	movq	440(%rsp), %r13                 # 8-byte Reload
	movq	%rdi, %r12
	jle	.LBB213_63
# %bb.61:                               # %"for f1.s0.v0.v0.preheader"
                                        #   in Loop: Header=BB213_12 Depth=1
	movl	124(%rsp), %edx                 # 4-byte Reload
	andl	$2, %edx
	orl	$1, %edx
	imull	560(%rsp), %edx                 # 4-byte Folded Reload
	movslq	528(%rsp), %rcx                 # 4-byte Folded Reload
	movslq	344(%rsp), %rbp                 # 4-byte Folded Reload
	movslq	%edx, %rdi
	movq	520(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%rcx), %rsi
	addq	736(%rsp), %rcx                 # 8-byte Folded Reload
	movslq	348(%rsp), %r9                  # 4-byte Folded Reload
	movq	1208(%rsp), %rdx                # 8-byte Reload
	leaq	(%rdx,%rbp), %r8
	addq	1192(%rsp), %rbp                # 8-byte Folded Reload
	movq	1168(%rsp), %rdx                # 8-byte Reload
	leaq	(%rdx,%rdi,2), %r10
	movq	128(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rdx,%rdi,2), %rdx
	movq	1120(%rsp), %rdi                # 8-byte Reload
	leaq	(%rdi,%rsi,2), %rsi
	leaq	(%rdi,%rcx,2), %rbx
	movq	1112(%rsp), %rcx                # 8-byte Reload
	leaq	(%rcx,%r9,2), %rcx
	leaq	(%rdi,%r8,2), %r9
	leaq	(%rdi,%rbp,2), %r8
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB213_62:                             # %"for f1.s0.v0.v0"
                                        #   Parent Loop BB213_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%r12,%r11), %ebp
	vmovdqu	-32(%r8,%r11,2), %ymm0
	vpmaxsw	-32(%r9,%r11,2), %ymm0, %ymm0
	vmovdqu	(%r8,%r11,2), %ymm1
	vpmaxsw	(%r9,%r11,2), %ymm1, %ymm1
	movslq	%ebp, %rbp
	vpmaxsw	28(%rax,%rbp,2), %ymm0, %ymm0
	vpmaxsw	60(%rax,%rbp,2), %ymm1, %ymm1
	vpmaxsw	20(%rax,%rbp,2), %ymm0, %ymm0
	vpmaxsw	52(%rax,%rbp,2), %ymm1, %ymm1
	vpminsw	24(%rax,%rbp,2), %ymm0, %ymm0
	vpminsw	56(%rax,%rbp,2), %ymm1, %ymm1
	vpmaxsw	%ymm5, %ymm0, %ymm0
	vpmaxsw	%ymm5, %ymm1, %ymm1
	vmovdqu	%ymm0, -32(%rdx,%r11,2)
	vmovdqu	%ymm1, (%rdx,%r11,2)
	vmovdqu	-32(%rbx,%r11,2), %ymm0
	vmovdqu	(%rbx,%r11,2), %ymm1
	vpmaxsw	-32(%rsi,%r11,2), %ymm0, %ymm0
	vpmaxsw	(%rsi,%r11,2), %ymm1, %ymm1
	vpmaxsw	-32(%rcx,%r11,2), %ymm0, %ymm0
	vpmaxsw	(%rcx,%r11,2), %ymm1, %ymm1
	vpmaxsw	-40(%rcx,%r11,2), %ymm0, %ymm0
	vpmaxsw	-8(%rcx,%r11,2), %ymm1, %ymm1
	vpminsw	-36(%rcx,%r11,2), %ymm0, %ymm0
	vpminsw	-4(%rcx,%r11,2), %ymm1, %ymm1
	vpmaxsw	%ymm5, %ymm0, %ymm0
	vpmaxsw	%ymm5, %ymm1, %ymm1
	vmovdqu	%ymm0, -32(%r10,%r11,2)
	vmovdqu	%ymm1, (%r10,%r11,2)
	addq	$32, %r11
	cmpq	%r11, %r13
	jne	.LBB213_62
.LBB213_63:                             # %"end for f1.s0.v0.v0"
                                        #   in Loop: Header=BB213_12 Depth=1
	movq	%r12, 176(%rsp)                 # 8-byte Spill
	movq	1472(%rsp), %rsi                # 8-byte Reload
	addl	564(%rsp), %esi                 # 4-byte Folded Reload
	addl	%esi, %esi
	subl	704(%rsp), %esi                 # 4-byte Folded Reload
	movslq	%esi, %rdx
	movq	736(%rsp), %r8                  # 8-byte Reload
	leaq	(%r8,%rdx), %rcx
	vmovdqu	-24(%rax,%rcx,2), %ymm0
	vmovdqu	8(%rax,%rcx,2), %ymm1
	movq	520(%rsp), %rbp                 # 8-byte Reload
	addq	%rbp, %rdx
	vpmaxsw	-24(%rax,%rdx,2), %ymm0, %ymm0
	vpmaxsw	8(%rax,%rdx,2), %ymm1, %ymm1
	movq	1232(%rsp), %rbx                # 8-byte Reload
	addl	%ebx, %esi
	movslq	%esi, %rcx
	vpmaxsw	-20(%rax,%rcx,2), %ymm0, %ymm0
	vpmaxsw	12(%rax,%rcx,2), %ymm1, %ymm1
	vpmaxsw	-28(%rax,%rcx,2), %ymm0, %ymm0
	vpmaxsw	4(%rax,%rcx,2), %ymm1, %ymm1
	vpminsw	-24(%rax,%rcx,2), %ymm0, %ymm0
	vpminsw	8(%rax,%rcx,2), %ymm1, %ymm1
	vpmaxsw	%ymm5, %ymm0, %ymm0
	vpmaxsw	%ymm5, %ymm1, %ymm1
	movl	32(%rsp), %ecx                  # 4-byte Reload
	movq	1216(%rsp), %r9                 # 8-byte Reload
	imulq	%r9, %rcx
	movq	1248(%rsp), %rsi                # 8-byte Reload
	addq	%rsi, %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	vmovdqu	%ymm0, -48(%rdx,%rcx,2)
	vmovdqu	%ymm1, -16(%rdx,%rcx,2)
	movslq	1504(%rsp), %rdi                # 4-byte Folded Reload
	addq	1256(%rsp), %rdi                # 8-byte Folded Reload
	leaq	(%r8,%rdi), %rcx
	vmovdqu	-24(%rax,%rcx,2), %ymm0
	vmovdqu	8(%rax,%rcx,2), %ymm1
	leal	(%rdi,%rbx), %ecx
	addq	%rbp, %rdi
	vpmaxsw	-24(%rax,%rdi,2), %ymm0, %ymm0
	vpmaxsw	8(%rax,%rdi,2), %ymm1, %ymm1
	movslq	%ecx, %rcx
	vpmaxsw	-20(%rax,%rcx,2), %ymm0, %ymm0
	vpmaxsw	12(%rax,%rcx,2), %ymm1, %ymm1
	vpmaxsw	-28(%rax,%rcx,2), %ymm0, %ymm0
	vpmaxsw	4(%rax,%rcx,2), %ymm1, %ymm1
	vpminsw	-24(%rax,%rcx,2), %ymm0, %ymm0
	vpminsw	8(%rax,%rcx,2), %ymm1, %ymm1
	vpmaxsw	%ymm5, %ymm0, %ymm0
	vpmaxsw	%ymm5, %ymm1, %ymm1
	movl	352(%rsp), %eax                 # 4-byte Reload
	imulq	1224(%rsp), %rax                # 8-byte Folded Reload
	addq	%rsi, %rax
	vmovdqu	%ymm0, -48(%rdx,%rax,2)
	vmovdqu	%ymm1, -16(%rdx,%rax,2)
	movq	384(%rsp), %rdx                 # 8-byte Reload
	leaq	-2(%rdx), %rcx
	movslq	340(%rsp), %rax                 # 4-byte Folded Reload
	cmpq	%rax, %rcx
	movl	%eax, %edi
	movq	%rcx, 280(%rsp)                 # 8-byte Spill
	cmovgel	%ecx, %edi
	leaq	2(%rdx), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	cmpq	%rax, %rcx
	movq	432(%rsp), %r11                 # 8-byte Reload
	jle	.LBB213_106
# %bb.64:                               # %"assert succeeded21"
                                        #   in Loop: Header=BB213_12 Depth=1
	movq	504(%rsp), %rax                 # 8-byte Reload
	movq	192(%rsp), %rcx                 # 8-byte Reload
	leal	(%rax,%rcx), %r8d
	cmpl	$0, 512(%rsp)                   # 4-byte Folded Reload
	movq	424(%rsp), %r12                 # 8-byte Reload
	movq	1184(%rsp), %r10                # 8-byte Reload
	movq	224(%rsp), %r13                 # 8-byte Reload
	js	.LBB213_67
# %bb.65:                               # %"for deinterleaved.s0.v0.v0.preheader"
                                        #   in Loop: Header=BB213_12 Depth=1
	movl	124(%rsp), %eax                 # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
	movl	%r13d, %ecx
	andl	$3, %ecx
	andl	$1, %eax
	andl	$3, %r13d
	imull	120(%rsp), %ecx                 # 4-byte Folded Reload
	movq	1152(%rsp), %rdx                # 8-byte Reload
	addl	%ecx, %edx
	leaq	(%rax,%rax), %rbx
	incq	%rbx
	imulq	728(%rsp), %r13                 # 8-byte Folded Reload
	movslq	%edx, %rax
	movslq	%ecx, %rcx
	imulq	%r9, %rbx
	movq	1160(%rsp), %rdx                # 8-byte Reload
	addq	%r13, %rdx
	addq	1176(%rsp), %r13                # 8-byte Folded Reload
	movq	1104(%rsp), %rsi                # 8-byte Reload
	leaq	(%rsi,%rax,2), %rax
	movq	1096(%rsp), %rsi                # 8-byte Reload
	leaq	(%rsi,%rcx,2), %rsi
	movq	1240(%rsp), %rcx                # 8-byte Reload
	addq	%rcx, %rbx
	movq	128(%rsp), %rbp                 # 8-byte Reload
	leaq	(%rcx,%rbp,2), %rcx
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB213_66:                             # %"for deinterleaved.s0.v0.v0"
                                        #   Parent Loop BB213_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovdqu	-64(%rcx,%rbp,2), %ymm0
	vmovdqu	-32(%rcx,%rbp,2), %ymm1
	vmovdqu	(%rcx,%rbp,2), %ymm2
	vmovdqu	32(%rcx,%rbp,2), %ymm3
	vpshufb	%ymm7, %ymm1, %ymm4
	vpshufb	%ymm7, %ymm0, %ymm6
	vshufps	$136, %ymm4, %ymm6, %ymm4       # ymm4 = ymm6[0,2],ymm4[0,2],ymm6[4,6],ymm4[4,6]
	vpermpd	$216, %ymm4, %ymm4              # ymm4 = ymm4[0,2,1,3]
	vmovups	%ymm4, -32(%rsi,%rbp)
	vpshufb	%ymm7, %ymm3, %ymm4
	vpshufb	%ymm7, %ymm2, %ymm6
	vshufps	$136, %ymm4, %ymm6, %ymm4       # ymm4 = ymm6[0,2],ymm4[0,2],ymm6[4,6],ymm4[4,6]
	vpermpd	$216, %ymm4, %ymm4              # ymm4 = ymm4[0,2,1,3]
	vmovups	%ymm4, (%rsi,%rbp)
	vpshufb	%ymm8, %ymm1, %ymm1
	vpshufb	%ymm9, %ymm0, %ymm0
	vpblendd	$204, %ymm1, %ymm0, %ymm0       # ymm0 = ymm0[0,1],ymm1[2,3],ymm0[4,5],ymm1[6,7]
	vpermq	$216, %ymm0, %ymm0              # ymm0 = ymm0[0,2,1,3]
	vmovdqu	%ymm0, -32(%rax,%rbp)
	vpshufb	%ymm8, %ymm3, %ymm0
	vpshufb	%ymm9, %ymm2, %ymm1
	vpblendd	$204, %ymm0, %ymm1, %ymm0       # ymm0 = ymm1[0,1],ymm0[2,3],ymm1[4,5],ymm0[6,7]
	vpermq	$216, %ymm0, %ymm0              # ymm0 = ymm0[0,2,1,3]
	vmovdqu	%ymm0, (%rax,%rbp)
	vmovdqu	-64(%rbx,%rbp,2), %ymm0
	vmovdqu	-32(%rbx,%rbp,2), %ymm1
	vmovdqu	(%rbx,%rbp,2), %ymm2
	vmovdqu	32(%rbx,%rbp,2), %ymm3
	vpshufb	%ymm7, %ymm1, %ymm4
	vpshufb	%ymm7, %ymm0, %ymm6
	vshufps	$136, %ymm4, %ymm6, %ymm4       # ymm4 = ymm6[0,2],ymm4[0,2],ymm6[4,6],ymm4[4,6]
	vpermpd	$216, %ymm4, %ymm4              # ymm4 = ymm4[0,2,1,3]
	vmovups	%ymm4, -32(%r13,%rbp)
	vpshufb	%ymm7, %ymm3, %ymm4
	vpshufb	%ymm7, %ymm2, %ymm6
	vshufps	$136, %ymm4, %ymm6, %ymm4       # ymm4 = ymm6[0,2],ymm4[0,2],ymm6[4,6],ymm4[4,6]
	vpermpd	$216, %ymm4, %ymm4              # ymm4 = ymm4[0,2,1,3]
	vmovups	%ymm4, (%r13,%rbp)
	vpshufb	%ymm8, %ymm1, %ymm1
	vpshufb	%ymm9, %ymm0, %ymm0
	vpblendd	$204, %ymm1, %ymm0, %ymm0       # ymm0 = ymm0[0,1],ymm1[2,3],ymm0[4,5],ymm1[6,7]
	vpermq	$216, %ymm0, %ymm0              # ymm0 = ymm0[0,2,1,3]
	vmovdqu	%ymm0, -32(%rdx,%rbp)
	vpshufb	%ymm8, %ymm3, %ymm0
	vpshufb	%ymm9, %ymm2, %ymm1
	vpblendd	$204, %ymm0, %ymm1, %ymm0       # ymm0 = ymm1[0,1],ymm0[2,3],ymm1[4,5],ymm0[6,7]
	vpermq	$216, %ymm0, %ymm0              # ymm0 = ymm0[0,2,1,3]
	vmovdqu	%ymm0, (%rdx,%rbp)
	addq	$64, %rbp
	cmpq	%rbp, %r10
	jne	.LBB213_66
.LBB213_67:                             # %"end for deinterleaved.s0.v0.v0"
                                        #   in Loop: Header=BB213_12 Depth=1
	movq	304(%rsp), %rdx                 # 8-byte Reload
	sarl	%edx
	leal	1(%r8), %eax
	decl	%r8d
	cmpl	%edx, %r8d
	cmovgl	%edx, %r8d
	addl	$2, %r8d
	cmpq	$3, %r11
	movl	$3, %r9d
	cmovbl	%r11d, %r9d
	cmovbl	%eax, %r8d
	addl	%edx, %r9d
	movslq	%r9d, %rax
	movq	384(%rsp), %rcx                 # 8-byte Reload
	cmpq	%rax, %rcx
	movl	%r9d, %eax
	cmovgl	%ecx, %eax
	cmpq	$3, %r11
	cmovbl	%ecx, %eax
	cmpl	%edi, %r8d
	jle	.LBB213_106
# %bb.68:                               # %"end for deinterleaved.s0.v0.v0"
                                        #   in Loop: Header=BB213_12 Depth=1
	addl	$-2, %eax
	cmpl	%edi, %eax
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movb	6(%rsp), %bl                    # 1-byte Reload
	jg	.LBB213_106
# %bb.69:                               # %"assert succeeded23"
                                        #   in Loop: Header=BB213_12 Depth=1
	testq	%r11, %r11
	movl	%edi, 340(%rsp)                 # 4-byte Spill
	je	.LBB213_10
# %bb.70:                               # %"produce f7"
                                        #   in Loop: Header=BB213_12 Depth=1
	movq	%rdx, 304(%rsp)                 # 8-byte Spill
	movslq	960(%rsp), %rax                 # 4-byte Folded Reload
	movq	280(%rsp), %rcx                 # 8-byte Reload
	cmpq	%rax, %rcx
	cmovll	%eax, %ecx
	movq	%rcx, 280(%rsp)                 # 8-byte Spill
	cmpq	%rax, 32(%rsp)                  # 8-byte Folded Reload
	jle	.LBB213_103
# %bb.71:                               # %"assert succeeded28"
                                        #   in Loop: Header=BB213_12 Depth=1
	movq	384(%rsp), %rdx                 # 8-byte Reload
	leaq	-3(%rdx), %rax
	movslq	116(%rsp), %rcx                 # 4-byte Folded Reload
	cmpq	%rcx, %rax
	movl	%ecx, %esi
	cmovgel	%eax, %esi
	movl	%esi, 116(%rsp)                 # 4-byte Spill
	cmpq	%rcx, %rdx
	jl	.LBB213_104
# %bb.72:                               # %"assert succeeded30"
                                        #   in Loop: Header=BB213_12 Depth=1
	cmpl	$0, 512(%rsp)                   # 4-byte Folded Reload
	vmovdqa	.LCPI213_3(%rip), %ymm5         # ymm5 = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
	js	.LBB213_75
# %bb.73:                               # %"for f7.s0.v0.fused.v0.preheader"
                                        #   in Loop: Header=BB213_12 Depth=1
	movq	192(%rsp), %rcx                 # 8-byte Reload
	leal	1(%rcx), %eax
	addb	$2, %cl
	movzbl	%al, %eax
	movzbl	%cl, %ecx
	andl	$3, %eax
	andl	$3, %ecx
	movl	120(%rsp), %esi                 # 4-byte Reload
	movl	%esi, %edx
	imull	%eax, %edx
	imull	%ecx, %esi
	movl	312(%rsp), %edi                 # 4-byte Reload
	imull	%edi, %eax
	movslq	%edx, %rdx
	imull	%edi, %ecx
	movslq	%esi, %rbx
	cltq
	movq	1088(%rsp), %rbp                # 8-byte Reload
	leaq	(%rdx,%rbp), %r13
	movslq	%ecx, %r8
	leaq	(%rbp,%rbx), %r11
	movq	1080(%rsp), %rcx                # 8-byte Reload
	leaq	(%rcx,%rax,2), %rcx
	movq	24(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdx,2), %rdx
	movq	1072(%rsp), %rsi                # 8-byte Reload
	leaq	(%rsi,%r13,2), %rsi
	movq	1064(%rsp), %rdi                # 8-byte Reload
	leaq	(%rdi,%r8,2), %rdi
	movq	1056(%rsp), %rbp                # 8-byte Reload
	leaq	(%rbp,%r11,2), %rbp
	leaq	(%rax,%rbx,2), %rbx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB213_74:                             # %"for f7.s0.v0.fused.v0"
                                        #   Parent Loop BB213_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovdqu	(%rbx,%rax), %ymm1
	vmovdqu	2(%rbx,%rax), %ymm6
	vmovdqu	32(%rbx,%rax), %ymm3
	vmovdqu	34(%rbx,%rax), %ymm4
	vmovdqu	(%rsi,%rax), %ymm8
	vmovdqu	32(%rsi,%rax), %ymm9
	vmovdqu	-32(%rbp,%rax), %ymm7
	vmovdqu	(%rbp,%rax), %ymm10
	vpcmpgtw	%ymm8, %ymm7, %ymm0
	vpcmpgtw	%ymm9, %ymm10, %ymm2
	vpsubw	%ymm8, %ymm7, %ymm11
	vpsubw	%ymm7, %ymm8, %ymm12
	vpblendvb	%ymm0, %ymm11, %ymm12, %ymm0
	vpsubw	%ymm9, %ymm10, %ymm11
	vpsubw	%ymm10, %ymm9, %ymm12
	vpblendvb	%ymm2, %ymm11, %ymm12, %ymm2
	vpcmpgtw	%ymm6, %ymm1, %ymm11
	vpcmpgtw	%ymm4, %ymm3, %ymm12
	vpsubw	%ymm6, %ymm1, %ymm13
	vpsubw	%ymm1, %ymm6, %ymm14
	vpblendvb	%ymm11, %ymm13, %ymm14, %ymm11
	vpsubw	%ymm4, %ymm3, %ymm13
	vpsubw	%ymm3, %ymm4, %ymm14
	vpblendvb	%ymm12, %ymm13, %ymm14, %ymm13
	vpminuw	%ymm11, %ymm0, %ymm11
	vpcmpeqw	%ymm0, %ymm11, %ymm12
	vpminuw	%ymm13, %ymm2, %ymm0
	vpcmpeqw	%ymm0, %ymm2, %ymm11
	vpsraw	$1, %ymm4, %ymm0
	vmovdqu	%ymm0, 384(%rsp)                # 32-byte Spill
	vpsraw	$1, %ymm6, %ymm2
	vmovdqu	%ymm2, 32(%rsp)                 # 32-byte Spill
	vpsraw	$1, %ymm3, %ymm13
	vpsraw	$1, %ymm1, %ymm14
	vpaddw	%ymm2, %ymm14, %ymm14
	vpaddw	%ymm0, %ymm13, %ymm13
	vpand	%ymm5, %ymm4, %ymm15
	vpand	%ymm5, %ymm6, %ymm0
	vpand	%ymm5, %ymm1, %ymm2
	vpand	%ymm5, %ymm3, %ymm1
	vpsubw	.LCPI213_7(%rip), %ymm0, %ymm3
	vpsubw	.LCPI213_7(%rip), %ymm15, %ymm0
	vpaddw	%ymm1, %ymm0, %ymm1
	vpaddw	%ymm2, %ymm3, %ymm2
	vpsrlw	$1, %ymm2, %ymm2
	vpaddw	%ymm2, %ymm14, %ymm2
	vpsrlw	$1, %ymm1, %ymm1
	vpaddw	%ymm1, %ymm13, %ymm1
	vpsraw	$1, %ymm9, %ymm13
	vpsraw	$1, %ymm10, %ymm14
	vpaddw	%ymm13, %ymm14, %ymm13
	vpsraw	$1, %ymm8, %ymm14
	vpsraw	$1, %ymm7, %ymm15
	vpaddw	%ymm14, %ymm15, %ymm14
	vpand	%ymm5, %ymm9, %ymm9
	vpand	%ymm5, %ymm8, %ymm8
	vpand	%ymm5, %ymm10, %ymm10
	vpaddw	%ymm10, %ymm9, %ymm9
	vpand	%ymm5, %ymm7, %ymm7
	vpaddw	%ymm7, %ymm8, %ymm7
	vpsubw	.LCPI213_7(%rip), %ymm9, %ymm8
	vpsubw	.LCPI213_7(%rip), %ymm7, %ymm7
	vpsrlw	$1, %ymm7, %ymm7
	vpaddw	%ymm7, %ymm14, %ymm7
	vpblendvb	%ymm12, %ymm7, %ymm2, %ymm2
	vpsrlw	$1, %ymm8, %ymm7
	vpaddw	%ymm7, %ymm13, %ymm7
	vpblendvb	%ymm11, %ymm7, %ymm1, %ymm1
	vmovdqu	%ymm2, -32(%rdi,%rax)
	vmovdqu	%ymm1, (%rdi,%rax)
	vmovdqu	(%rsi,%rax), %ymm12
	vmovdqu	2(%rsi,%rax), %ymm11
	vmovdqu	32(%rsi,%rax), %ymm8
	vmovdqu	34(%rsi,%rax), %ymm9
	vmovdqu	2(%rdx,%rax), %ymm10
	vmovdqu	34(%rdx,%rax), %ymm7
	vpcmpgtw	%ymm6, %ymm10, %ymm1
	vpcmpgtw	%ymm4, %ymm7, %ymm2
	vpsubw	%ymm6, %ymm10, %ymm13
	vpsubw	%ymm10, %ymm6, %ymm6
	vpblendvb	%ymm1, %ymm13, %ymm6, %ymm1
	vpsubw	%ymm4, %ymm7, %ymm6
	vpsubw	%ymm7, %ymm4, %ymm4
	vpblendvb	%ymm2, %ymm6, %ymm4, %ymm4
	vpcmpgtw	%ymm12, %ymm11, %ymm2
	vpcmpgtw	%ymm8, %ymm9, %ymm6
	vpsubw	%ymm12, %ymm11, %ymm13
	vpsubw	%ymm11, %ymm12, %ymm14
	vpblendvb	%ymm2, %ymm13, %ymm14, %ymm2
	vpsubw	%ymm8, %ymm9, %ymm13
	vpsubw	%ymm9, %ymm8, %ymm14
	vpblendvb	%ymm6, %ymm13, %ymm14, %ymm6
	vpminuw	%ymm2, %ymm1, %ymm2
	vpcmpeqw	%ymm2, %ymm1, %ymm1
	vpsraw	$1, %ymm12, %ymm2
	vpsraw	$1, %ymm11, %ymm13
	vpaddw	%ymm2, %ymm13, %ymm2
	vpand	%ymm5, %ymm12, %ymm12
	vpand	%ymm5, %ymm11, %ymm11
	vpaddw	%ymm11, %ymm12, %ymm11
	vpsubw	.LCPI213_7(%rip), %ymm11, %ymm11
	vpsrlw	$1, %ymm11, %ymm11
	vpaddw	%ymm2, %ymm11, %ymm2
	vpsraw	$1, %ymm10, %ymm11
	vpaddw	32(%rsp), %ymm11, %ymm11        # 32-byte Folded Reload
	vpand	%ymm5, %ymm10, %ymm10
	vpaddw	%ymm3, %ymm10, %ymm3
	vpsrlw	$1, %ymm3, %ymm3
	vpaddw	%ymm3, %ymm11, %ymm3
	vpblendvb	%ymm1, %ymm3, %ymm2, %ymm1
	vpminuw	%ymm6, %ymm4, %ymm2
	vpcmpeqw	%ymm2, %ymm4, %ymm2
	vpsraw	$1, %ymm8, %ymm3
	vpsraw	$1, %ymm9, %ymm4
	vpaddw	%ymm3, %ymm4, %ymm3
	vpand	%ymm5, %ymm8, %ymm4
	vpcmpeqd	%ymm8, %ymm8, %ymm8
	vpand	%ymm5, %ymm9, %ymm6
	vpaddw	%ymm6, %ymm4, %ymm4
	vpsubw	%ymm8, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpaddw	%ymm4, %ymm3, %ymm3
	vpsraw	$1, %ymm7, %ymm4
	vpaddw	384(%rsp), %ymm4, %ymm4         # 32-byte Folded Reload
	vpand	%ymm5, %ymm7, %ymm6
	vpaddw	%ymm6, %ymm0, %ymm0
	vpsrlw	$1, %ymm0, %ymm0
	vpaddw	%ymm0, %ymm4, %ymm0
	vpblendvb	%ymm2, %ymm0, %ymm3, %ymm0
	vmovdqu	%ymm1, -32(%rcx,%rax)
	vmovdqu	%ymm0, (%rcx,%rax)
	addq	$64, %rax
	cmpq	%rax, %r10
	jne	.LBB213_74
.LBB213_75:                             # %"end for f7.s0.v0.fused.v0"
                                        #   in Loop: Header=BB213_12 Depth=1
	movq	304(%rsp), %rdx                 # 8-byte Reload
	leal	3(%rdx), %r8d
	movq	280(%rsp), %rsi                 # 8-byte Reload
	cmpl	%esi, %r8d
	jle	.LBB213_103
# %bb.76:                               # %"end for f7.s0.v0.fused.v0"
                                        #   in Loop: Header=BB213_12 Depth=1
	leal	-2(%r9), %eax
	cmpl	%esi, %eax
	movq	104(%rsp), %rcx                 # 8-byte Reload
	vmovdqa	.LCPI213_0(%rip), %ymm7         # ymm7 = <0,1,4,5,u,u,u,u,8,9,12,13,u,u,u,u,16,17,20,21,u,u,u,u,24,25,28,29,u,u,u,u>
	vmovdqa	.LCPI213_1(%rip), %ymm8         # ymm8 = <u,u,u,u,u,u,u,u,2,3,6,7,10,11,14,15,u,u,u,u,u,u,u,u,18,19,22,23,26,27,30,31>
	vmovdqa	.LCPI213_2(%rip), %ymm9         # ymm9 = <2,3,6,7,10,11,14,15,u,u,u,u,u,u,u,u,18,19,22,23,26,27,30,31,u,u,u,u,u,u,u,u>
	movb	6(%rsp), %bl                    # 1-byte Reload
	movq	432(%rsp), %r11                 # 8-byte Reload
	movq	176(%rsp), %rdi                 # 8-byte Reload
	movl	116(%rsp), %ebp                 # 4-byte Reload
	jg	.LBB213_103
# %bb.77:                               # %"assert succeeded32"
                                        #   in Loop: Header=BB213_12 Depth=1
	leal	2(%rdx), %eax
	cmpl	%ebp, %eax
	jle	.LBB213_104
# %bb.78:                               # %"assert succeeded32"
                                        #   in Loop: Header=BB213_12 Depth=1
	addl	$-3, %r9d
	cmpl	%ebp, %r9d
	jg	.LBB213_104
# %bb.79:                               # %"assert succeeded34"
                                        #   in Loop: Header=BB213_12 Depth=1
	cmpq	$3, %r11
	jae	.LBB213_81
# %bb.80:                               #   in Loop: Header=BB213_12 Depth=1
	movl	%esi, %eax
	movl	%esi, 960(%rsp)                 # 4-byte Spill
	movq	296(%rsp), %r8                  # 8-byte Reload
	movq	184(%rsp), %rax                 # 8-byte Reload
	movq	288(%rsp), %rbp                 # 8-byte Reload
	movq	96(%rsp), %r10                  # 8-byte Reload
	movq	88(%rsp), %r13                  # 8-byte Reload
	movq	272(%rsp), %r9                  # 8-byte Reload
	vpxor	%xmm5, %xmm5, %xmm5
	jmp	.LBB213_11
	.p2align	4, 0x90
.LBB213_81:                             # %"produce f28"
                                        #   in Loop: Header=BB213_12 Depth=1
	cmpl	$0, 416(%rsp)                   # 4-byte Folded Reload
	vmovdqa	.LCPI213_3(%rip), %ymm14        # ymm14 = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
	vpcmpeqd	%ymm9, %ymm9, %ymm9
	js	.LBB213_84
# %bb.82:                               # %"for f28.s0.v0.v0.preheader"
                                        #   in Loop: Header=BB213_12 Depth=1
	movq	%rcx, %rbx
	andl	$3, %edx
	movl	%edx, %ebp
	movl	120(%rsp), %ecx                 # 4-byte Reload
	imull	%ecx, %ebp
	andl	$3, %r8d
	movl	%r8d, %eax
	imull	%ecx, %eax
	movl	%r8d, %r12d
	movl	312(%rsp), %edi                 # 4-byte Reload
	imull	%edi, %r12d
	movl	%edx, %r10d
	imull	%edi, %r10d
	movslq	%eax, %r9
	movl	%r8d, %ecx
	movslq	%ebp, %r11
	movl	%edx, %esi
	movq	1048(%rsp), %rbp                # 8-byte Reload
	vpbroadcastw	(%rbp), %xmm0
	vpmovsxwd	%xmm0, %ymm0
	vmovdqu	%ymm0, 2176(%rsp)               # 32-byte Spill
	vpbroadcastw	2(%rbp), %xmm0
	vpmovsxwd	%xmm0, %ymm0
	vmovdqu	%ymm0, 2144(%rsp)               # 32-byte Spill
	vpbroadcastw	4(%rbp), %xmm0
	vpmovsxwd	%xmm0, %ymm0
	vmovdqu	%ymm0, 1504(%rsp)               # 32-byte Spill
	movswl	6(%rbp), %edi
	vpbroadcastw	8(%rbp), %xmm0
	vmovd	%edi, %xmm1
	vpbroadcastw	10(%rbp), %xmm2
	vpbroadcastd	%xmm1, %ymm1
	vmovdqu	%ymm1, 1472(%rsp)               # 32-byte Spill
	vpbroadcastw	12(%rbp), %xmm1
	vpmovsxwd	%xmm0, %ymm0
	vmovdqu	%ymm0, 960(%rsp)                # 32-byte Spill
	vpmovsxwd	%xmm2, %ymm0
	vmovdqu	%ymm0, 2112(%rsp)               # 32-byte Spill
	vpmovsxwd	%xmm1, %ymm0
	vmovdqu	%ymm0, 2016(%rsp)               # 32-byte Spill
	movswl	14(%rbp), %edi
	vmovd	%edi, %xmm0
	vpbroadcastw	16(%rbp), %xmm1
	vpbroadcastd	%xmm0, %ymm0
	vmovdqu	%ymm0, 1984(%rsp)               # 32-byte Spill
	vpbroadcastw	18(%rbp), %xmm0
	vpmovsxwd	%xmm1, %ymm1
	vmovdqu	%ymm1, 1952(%rsp)               # 32-byte Spill
	vpbroadcastw	20(%rbp), %xmm1
	vpmovsxwd	%xmm0, %ymm0
	vmovdqu	%ymm0, 2080(%rsp)               # 32-byte Spill
	vpmovsxwd	%xmm1, %ymm0
	vmovdqu	%ymm0, 1920(%rsp)               # 32-byte Spill
	movswl	22(%rbp), %edi
	vmovd	%edi, %xmm0
	vpbroadcastd	%xmm0, %ymm0
	vmovdqu	%ymm0, 2048(%rsp)               # 32-byte Spill
	movslq	%r12d, %r12
	movslq	%r10d, %r10
	movq	728(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %rbp
	imulq	%rsi, %rbp
	movq	24(%rsp), %rax                  # 8-byte Reload
	addq	%rax, %rbp
	movq	%rbp, 1440(%rsp)                # 8-byte Spill
	movq	1032(%rsp), %rbp                # 8-byte Reload
	imulq	%rbp, %rsi
	addq	72(%rsp), %rsi                  # 8-byte Folded Reload
	movq	%rsi, 1448(%rsp)                # 8-byte Spill
	leaq	(%rax,%r11,2), %rax
	movq	%rax, 1432(%rsp)                # 8-byte Spill
	imulq	%rcx, %rbp
	addq	8(%rsp), %rbp                   # 8-byte Folded Reload
	movq	%rbp, 1424(%rsp)                # 8-byte Spill
	imulq	%rdi, %rcx
	movq	1040(%rsp), %rax                # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, 1456(%rsp)                # 8-byte Spill
	leaq	(%rax,%r9,2), %rax
	movq	%rax, 1416(%rsp)                # 8-byte Spill
	movl	552(%rsp), %ebp                 # 4-byte Reload
	imull	%ebp, %edx
	movq	1024(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%rdx), %ecx
	movq	%rcx, 1408(%rsp)                # 8-byte Spill
	movl	548(%rsp), %edi                 # 4-byte Reload
	addl	%edi, %edx
	movq	%rdx, 304(%rsp)                 # 8-byte Spill
	imull	%ebp, %r8d
	addl	%r8d, %eax
	movq	%rax, 1400(%rsp)                # 8-byte Spill
	addl	%edi, %r8d
	movq	1016(%rsp), %rax                # 8-byte Reload
	leaq	(%rax,%r10,2), %rcx
	movq	%rcx, 1392(%rsp)                # 8-byte Spill
	movq	1008(%rsp), %rdx                # 8-byte Reload
	leaq	(%rdx,%r10,2), %rcx
	movq	%rcx, 1384(%rsp)                # 8-byte Spill
	leaq	(%rax,%r12,2), %rax
	movq	%rax, 1376(%rsp)                # 8-byte Spill
	leaq	(%rdx,%r12,2), %rax
	movq	%rax, 1368(%rsp)                # 8-byte Spill
	movq	$-16, %rax
	movq	%r8, 1464(%rsp)                 # 8-byte Spill
	movq	%rbx, 104(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB213_83:                             # %"for f28.s0.v0.v0"
                                        #   Parent Loop BB213_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rbp
	addl	%r8d, %eax
	addl	$16, %eax
	movslq	%eax, %rdx
	movq	304(%rsp), %rax                 # 8-byte Reload
	leal	16(%rax,%rbp), %eax
	cltq
	movq	24(%rsp), %rsi                  # 8-byte Reload
	vmovdqu	154(%rsi,%rdx,2), %ymm0
	vmovdqu	156(%rsi,%rdx,2), %ymm3
	vmovdqu	154(%rsi,%rax,2), %ymm6
	vmovdqu	156(%rsi,%rax,2), %ymm1
	movq	1376(%rsp), %rdi                # 8-byte Reload
	vmovdqu	32(%rdi,%rbp,2), %ymm13
	movq	1368(%rsp), %rcx                # 8-byte Reload
	vmovdqu	30(%rcx,%rbp,2), %ymm11
	vmovdqu	32(%rcx,%rbp,2), %ymm4
	vpsraw	$1, %ymm11, %ymm12
	vmovdqu	%ymm12, 800(%rsp)               # 32-byte Spill
	movq	1384(%rsp), %rcx                # 8-byte Reload
	vmovdqu	30(%rcx,%rbp,2), %ymm2
	vmovdqu	%ymm2, 128(%rsp)                # 32-byte Spill
	vpsraw	$1, %ymm2, %ymm15
	vmovdqu	%ymm15, 448(%rsp)               # 32-byte Spill
	vpand	%ymm2, %ymm14, %ymm7
	vpsubw	%ymm9, %ymm7, %ymm5
	vmovdqu	%ymm5, 928(%rsp)                # 32-byte Spill
	vpsraw	$1, %ymm0, %ymm2
	vmovdqu	%ymm2, 832(%rsp)                # 32-byte Spill
	vpcmpgtw	%ymm0, %ymm1, %ymm7
	vpsubw	%ymm0, %ymm1, %ymm8
	vpsubw	%ymm1, %ymm0, %ymm9
	vpblendvb	%ymm7, %ymm8, %ymm9, %ymm7
	vpcmpgtw	%ymm3, %ymm6, %ymm8
	vpsubw	%ymm3, %ymm6, %ymm9
	vpsubw	%ymm6, %ymm3, %ymm10
	vpblendvb	%ymm8, %ymm9, %ymm10, %ymm8
	vpsraw	$1, %ymm6, %ymm10
	vmovdqu	%ymm10, 640(%rsp)               # 32-byte Spill
	vpand	%ymm6, %ymm14, %ymm6
	vpsubw	.LCPI213_7(%rip), %ymm6, %ymm9
	vmovdqu	%ymm9, 224(%rsp)                # 32-byte Spill
	vpminuw	%ymm8, %ymm7, %ymm6
	vpcmpeqw	%ymm6, %ymm7, %ymm6
	vpsraw	$1, %ymm3, %ymm7
	vpand	%ymm3, %ymm14, %ymm3
	vpaddw	%ymm3, %ymm9, %ymm3
	vpsrlw	$1, %ymm3, %ymm3
	vpsubw	%ymm15, %ymm10, %ymm8
	vmovdqu	%ymm8, 32(%rsp)                 # 32-byte Spill
	vpaddw	%ymm7, %ymm13, %ymm7
	vpaddw	%ymm7, %ymm8, %ymm7
	vpaddw	%ymm3, %ymm7, %ymm3
	vpsraw	$1, %ymm4, %ymm7
	vpand	%ymm4, %ymm14, %ymm4
	vpaddw	%ymm4, %ymm5, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpsubw	%ymm7, %ymm3, %ymm3
	vpsubw	%ymm4, %ymm3, %ymm3
	vpsraw	$1, %ymm1, %ymm5
	vmovdqu	%ymm5, 192(%rsp)                # 32-byte Spill
	vpsubw	%ymm12, %ymm2, %ymm4
	vpaddw	%ymm5, %ymm13, %ymm7
	vmovdqa	%ymm13, %ymm8
	vpaddw	%ymm7, %ymm4, %ymm4
	vpand	%ymm0, %ymm14, %ymm2
	vmovdqu	%ymm2, 768(%rsp)                # 32-byte Spill
	vpand	%ymm1, %ymm14, %ymm0
	vmovdqu	%ymm0, 352(%rsp)                # 32-byte Spill
	vpaddw	%ymm0, %ymm2, %ymm0
	vpsubw	.LCPI213_7(%rip), %ymm0, %ymm0
	vpsrlw	$1, %ymm0, %ymm0
	vpaddw	%ymm0, %ymm4, %ymm0
	vpand	%ymm14, %ymm11, %ymm4
	vmovdqu	%ymm4, 864(%rsp)                # 32-byte Spill
	vmovdqu	32(%rcx,%rbp,2), %ymm1
	vpsraw	$1, %ymm1, %ymm2
	vmovdqu	%ymm2, 608(%rsp)                # 32-byte Spill
	vpand	%ymm1, %ymm14, %ymm1
	vmovdqu	%ymm1, 576(%rsp)                # 32-byte Spill
	vpaddw	%ymm1, %ymm4, %ymm1
	vpsubw	.LCPI213_7(%rip), %ymm1, %ymm1
	vpsrlw	$1, %ymm1, %ymm1
	vpsubw	%ymm2, %ymm0, %ymm0
	vpsubw	%ymm1, %ymm0, %ymm0
	vpblendvb	%ymm6, %ymm0, %ymm3, %ymm0
	vmovdqu	%ymm0, 896(%rsp)                # 32-byte Spill
	movq	1400(%rsp), %rcx                # 8-byte Reload
	leal	16(%rcx,%rbp), %edx
	movslq	%edx, %rcx
	movq	1408(%rsp), %rdx                # 8-byte Reload
	leal	16(%rdx,%rbp), %edx
	movslq	%edx, %rdx
	vmovdqu	306(%rsi,%rcx,2), %ymm3
	vmovdqu	308(%rsi,%rdx,2), %ymm0
	vpcmpgtw	%ymm0, %ymm3, %ymm1
	vpsubw	%ymm0, %ymm3, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm4
	vpblendvb	%ymm1, %ymm2, %ymm4, %ymm1
	vmovdqu	308(%rsi,%rcx,2), %ymm2
	vmovdqu	306(%rsi,%rdx,2), %ymm4
	vpcmpgtw	%ymm4, %ymm2, %ymm6
	vpsubw	%ymm4, %ymm2, %ymm7
	vpsubw	%ymm2, %ymm4, %ymm10
	vpblendvb	%ymm6, %ymm7, %ymm10, %ymm6
	vpminuw	%ymm6, %ymm1, %ymm6
	vpcmpeqw	%ymm6, %ymm1, %ymm6
	vpsraw	$1, %ymm13, %ymm1
	vmovdqu	%ymm1, 2208(%rsp)               # 32-byte Spill
	vpsraw	$1, %ymm2, %ymm7
	vmovdqu	%ymm7, 2240(%rsp)               # 32-byte Spill
	vmovdqu	128(%rsp), %ymm5                # 32-byte Reload
	vpsubw	%ymm1, %ymm5, %ymm1
	vpaddw	%ymm7, %ymm1, %ymm1
	vpsraw	$1, %ymm4, %ymm10
	vpaddw	%ymm1, %ymm10, %ymm1
	vpand	%ymm2, %ymm14, %ymm2
	vpsubw	.LCPI213_7(%rip), %ymm2, %ymm13
	vpand	%ymm4, %ymm14, %ymm4
	vpaddw	%ymm4, %ymm13, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpaddw	%ymm4, %ymm1, %ymm1
	movq	1392(%rsp), %rdx                # 8-byte Reload
	vmovdqu	30(%rdx,%rbp,2), %ymm4
	vpsraw	$1, %ymm4, %ymm10
	vpsubw	%ymm10, %ymm1, %ymm10
	vpand	%ymm14, %ymm8, %ymm1
	vpsubw	.LCPI213_7(%rip), %ymm1, %ymm12
	vpand	%ymm4, %ymm14, %ymm4
	vpaddw	%ymm4, %ymm12, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm10, %ymm7
	vpsraw	$1, %ymm3, %ymm9
	vpand	%ymm3, %ymm14, %ymm10
	vpsraw	$1, %ymm0, %ymm1
	vmovdqu	%ymm1, 1664(%rsp)               # 32-byte Spill
	vpand	%ymm0, %ymm14, %ymm0
	vmovdqu	%ymm0, 1728(%rsp)               # 32-byte Spill
	vpaddw	%ymm0, %ymm10, %ymm0
	vpsubw	.LCPI213_7(%rip), %ymm0, %ymm0
	vpsrlw	$1, %ymm0, %ymm0
	vmovdqu	30(%rdi,%rbp,2), %ymm3
	vpsraw	$1, %ymm3, %ymm4
	vpsubw	%ymm4, %ymm5, %ymm11
	vpaddw	%ymm9, %ymm11, %ymm11
	vpaddw	%ymm1, %ymm11, %ymm11
	vpaddw	%ymm0, %ymm11, %ymm0
	vpand	%ymm3, %ymm14, %ymm11
	vmovdqu	32(%rdx,%rbp,2), %ymm3
	vpsraw	$1, %ymm3, %ymm1
	vmovdqu	%ymm1, 1632(%rsp)               # 32-byte Spill
	vpand	%ymm3, %ymm14, %ymm15
	vpaddw	%ymm15, %ymm11, %ymm14
	vpsubw	.LCPI213_7(%rip), %ymm14, %ymm14
	vpsrlw	$1, %ymm14, %ymm14
	vpaddw	%ymm1, %ymm14, %ymm14
	vpsubw	%ymm14, %ymm0, %ymm0
	vpblendvb	%ymm6, %ymm0, %ymm7, %ymm8
	vmovdqu	800(%rsp), %ymm0                # 32-byte Reload
	vpaddw	448(%rsp), %ymm0, %ymm7         # 32-byte Folded Reload
	vmovdqu	928(%rsp), %ymm6                # 32-byte Reload
	vpaddw	864(%rsp), %ymm6, %ymm14        # 32-byte Folded Reload
	vpsrlw	$1, %ymm14, %ymm14
	vpaddw	%ymm7, %ymm14, %ymm7
	vmovdqu	832(%rsp), %ymm0                # 32-byte Reload
	vpaddw	640(%rsp), %ymm0, %ymm14        # 32-byte Folded Reload
	vpsubw	%ymm7, %ymm14, %ymm7
	vmovdqu	224(%rsp), %ymm5                # 32-byte Reload
	vpaddw	768(%rsp), %ymm5, %ymm14        # 32-byte Folded Reload
	vpsrlw	$1, %ymm14, %ymm14
	movq	1416(%rsp), %rdx                # 8-byte Reload
	vmovdqu	32(%rdx,%rbp,2), %ymm3
	vpaddw	%ymm3, %ymm7, %ymm7
	vpaddw	%ymm7, %ymm14, %ymm14
	vmovdqu	896(%rsp), %ymm0                # 32-byte Reload
	vextracti128	$1, %ymm0, %xmm2
	vextracti128	$1, %ymm14, %xmm1
	vpunpcklwd	%xmm2, %xmm1, %xmm7     # xmm7 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	vmovdqa	%xmm7, 1568(%rsp)               # 16-byte Spill
	vpunpckhwd	%xmm2, %xmm1, %xmm1     # xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	vmovdqa	%xmm1, 1600(%rsp)               # 16-byte Spill
	vpunpcklwd	%xmm0, %xmm14, %xmm1    # xmm1 = xmm14[0],xmm0[0],xmm14[1],xmm0[1],xmm14[2],xmm0[2],xmm14[3],xmm0[3]
	vmovdqa	%xmm1, 448(%rsp)                # 16-byte Spill
	vpunpckhwd	%xmm0, %xmm14, %xmm0    # xmm0 = xmm14[4],xmm0[4],xmm14[5],xmm0[5],xmm14[6],xmm0[6],xmm14[7],xmm0[7]
	vmovdqa	%xmm0, 800(%rsp)                # 16-byte Spill
	movq	1424(%rsp), %rdi                # 8-byte Reload
	movq	%rbp, 384(%rsp)                 # 8-byte Spill
	vmovdqu	50(%rdi,%rbp,2), %xmm0
	movq	1456(%rsp), %rdx                # 8-byte Reload
	vmovdqu	48(%rdx,%rbp,2), %xmm1
	vpunpcklwd	%xmm0, %xmm1, %xmm14    # xmm14 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	vpunpckhwd	%xmm0, %xmm1, %xmm0     # xmm0 = xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	vmovdqa	%xmm0, 1536(%rsp)               # 16-byte Spill
	vmovdqu	34(%rdi,%rbp,2), %xmm0
	vmovdqu	32(%rdx,%rbp,2), %xmm1
	vpunpcklwd	%xmm0, %xmm1, %xmm2     # xmm2 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	vmovdqa	%xmm2, 1856(%rsp)               # 16-byte Spill
	vpunpckhwd	%xmm0, %xmm1, %xmm0     # xmm0 = xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	vmovdqa	%xmm0, 1840(%rsp)               # 16-byte Spill
	vpaddw	%ymm11, %ymm12, %ymm0
	vpsrlw	$1, %ymm0, %ymm0
	vmovdqu	2208(%rsp), %ymm11              # 32-byte Reload
	vpaddw	%ymm4, %ymm11, %ymm1
	vpaddw	%ymm0, %ymm1, %ymm0
	vmovdqu	2240(%rsp), %ymm7               # 32-byte Reload
	vpaddw	%ymm7, %ymm3, %ymm1
	vpaddw	%ymm1, %ymm9, %ymm1
	vpsubw	%ymm0, %ymm1, %ymm0
	vpaddw	%ymm10, %ymm13, %ymm1
	vpsrlw	$1, %ymm1, %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vextracti128	$1, %ymm0, %xmm2
	vmovdqu	324(%rsi,%rcx,2), %xmm4
	vpunpcklwd	%xmm4, %xmm2, %xmm1     # xmm1 = xmm2[0],xmm4[0],xmm2[1],xmm4[1],xmm2[2],xmm4[2],xmm2[3],xmm4[3]
	vmovdqa	%xmm1, 1824(%rsp)               # 16-byte Spill
	vpunpckhwd	%xmm4, %xmm2, %xmm1     # xmm1 = xmm2[4],xmm4[4],xmm2[5],xmm4[5],xmm2[6],xmm4[6],xmm2[7],xmm4[7]
	vmovdqa	%xmm1, 768(%rsp)                # 16-byte Spill
	vmovdqu	308(%rsi,%rcx,2), %xmm2
	vpunpcklwd	%xmm2, %xmm0, %xmm1     # xmm1 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	vmovdqa	%xmm1, 832(%rsp)                # 16-byte Spill
	vpunpckhwd	%xmm2, %xmm0, %xmm0     # xmm0 = xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	vmovdqa	%xmm0, 128(%rsp)                # 16-byte Spill
	vpaddw	576(%rsp), %ymm6, %ymm0         # 32-byte Folded Reload
	vpaddw	352(%rsp), %ymm5, %ymm2         # 32-byte Folded Reload
	vmovdqu	192(%rsp), %ymm1                # 32-byte Reload
	vpaddw	32(%rsp), %ymm1, %ymm4          # 32-byte Folded Reload
	vpsrlw	$1, %ymm2, %ymm2
	vpaddw	%ymm2, %ymm4, %ymm2
	vpsubw	608(%rsp), %ymm2, %ymm2         # 32-byte Folded Reload
	vpsrlw	$1, %ymm0, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	movq	1432(%rsp), %rcx                # 8-byte Reload
	vmovdqu	36(%rcx,%rbp,2), %ymm2
	vpaddw	%ymm2, %ymm0, %ymm0
	vextracti128	$1, %ymm0, %xmm4
	vmovdqu	170(%rsi,%rax,2), %xmm6
	vpunpcklwd	%xmm4, %xmm6, %xmm1     # xmm1 = xmm6[0],xmm4[0],xmm6[1],xmm4[1],xmm6[2],xmm4[2],xmm6[3],xmm4[3]
	vmovdqa	%xmm1, 1696(%rsp)               # 16-byte Spill
	vpunpckhwd	%xmm4, %xmm6, %xmm1     # xmm1 = xmm6[4],xmm4[4],xmm6[5],xmm4[5],xmm6[6],xmm4[6],xmm6[7],xmm4[7]
	vmovdqa	%xmm1, 1872(%rsp)               # 16-byte Spill
	vmovdqu	154(%rsi,%rax,2), %xmm4
	vpunpcklwd	%xmm0, %xmm4, %xmm1     # xmm1 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	vmovdqa	%xmm1, 352(%rsp)                # 16-byte Spill
	vpunpckhwd	%xmm0, %xmm4, %xmm0     # xmm0 = xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	vmovdqa	%xmm0, 608(%rsp)                # 16-byte Spill
	movq	1440(%rsp), %rcx                # 8-byte Reload
	vmovdqu	52(%rcx,%rbp,2), %xmm0
	movq	1448(%rsp), %rax                # 8-byte Reload
	vmovdqu	50(%rax,%rbp,2), %xmm4
	vpunpcklwd	%xmm0, %xmm4, %xmm1     # xmm1 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	vmovdqa	%xmm1, 1904(%rsp)               # 16-byte Spill
	vpunpckhwd	%xmm0, %xmm4, %xmm0     # xmm0 = xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	vmovdqa	%xmm0, 1888(%rsp)               # 16-byte Spill
	vmovdqu	36(%rcx,%rbp,2), %xmm0
	vmovdqu	34(%rax,%rbp,2), %xmm4
	vpunpcklwd	%xmm0, %xmm4, %xmm1     # xmm1 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	vmovdqa	%xmm1, 1760(%rsp)               # 16-byte Spill
	vpunpckhwd	%xmm0, %xmm4, %xmm0     # xmm0 = xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	vmovdqa	%xmm0, 1792(%rsp)               # 16-byte Spill
	vpaddw	%ymm15, %ymm12, %ymm0
	vpaddw	1728(%rsp), %ymm13, %ymm4       # 32-byte Folded Reload
	vpsubw	%ymm11, %ymm7, %ymm6
	vpaddw	1664(%rsp), %ymm2, %ymm2        # 32-byte Folded Reload
	vpaddw	%ymm2, %ymm6, %ymm2
	vpsrlw	$1, %ymm4, %ymm4
	vpaddw	%ymm4, %ymm2, %ymm2
	vpsrlw	$1, %ymm0, %ymm0
	vpaddw	1632(%rsp), %ymm0, %ymm0        # 32-byte Folded Reload
	vpsubw	%ymm0, %ymm2, %ymm0
	vextracti128	$1, %ymm8, %xmm2
	vextracti128	$1, %ymm0, %xmm4
	vpunpcklwd	%xmm4, %xmm2, %xmm1     # xmm1 = xmm2[0],xmm4[0],xmm2[1],xmm4[1],xmm2[2],xmm4[2],xmm2[3],xmm4[3]
	vmovdqa	%xmm1, 1728(%rsp)               # 16-byte Spill
	vpunpckhwd	%xmm4, %xmm2, %xmm1     # xmm1 = xmm2[4],xmm4[4],xmm2[5],xmm4[5],xmm2[6],xmm4[6],xmm2[7],xmm4[7]
	vmovdqa	%xmm1, 864(%rsp)                # 16-byte Spill
	vpunpcklwd	%xmm0, %xmm8, %xmm1     # xmm1 = xmm8[0],xmm0[0],xmm8[1],xmm0[1],xmm8[2],xmm0[2],xmm8[3],xmm0[3]
	vmovdqa	%xmm1, 896(%rsp)                # 16-byte Spill
	vpunpckhwd	%xmm0, %xmm8, %xmm0     # xmm0 = xmm8[4],xmm0[4],xmm8[5],xmm0[5],xmm8[6],xmm0[6],xmm8[7],xmm0[7]
	vmovdqa	%xmm0, 640(%rsp)                # 16-byte Spill
	vpmovsxwd	1568(%rsp), %ymm0       # 16-byte Folded Reload
	vmovdqu	%ymm0, 1664(%rsp)               # 32-byte Spill
	vpmovsxwd	%xmm14, %ymm2
	vmovdqu	%ymm2, 576(%rsp)                # 32-byte Spill
	vmovdqu	2176(%rsp), %ymm5               # 32-byte Reload
	vpmulld	%ymm0, %ymm5, %ymm0
	vmovdqu	2144(%rsp), %ymm10              # 32-byte Reload
	vpmulld	%ymm2, %ymm10, %ymm2
	vpaddd	%ymm0, %ymm2, %ymm2
	vpmovsxwd	1600(%rsp), %ymm0       # 16-byte Folded Reload
	vpmulld	%ymm0, %ymm5, %ymm3
	vmovdqa	%ymm0, %ymm8
	vmovdqu	%ymm0, 1568(%rsp)               # 32-byte Spill
	vpmovsxwd	1536(%rsp), %ymm0       # 16-byte Folded Reload
	vmovdqu	%ymm0, 32(%rsp)                 # 32-byte Spill
	vpmulld	%ymm0, %ymm10, %ymm4
	vpaddd	%ymm3, %ymm4, %ymm6
	vpmovsxwd	800(%rsp), %ymm9        # 16-byte Folded Reload
	vmovdqu	%ymm9, 192(%rsp)                # 32-byte Spill
	vpmovsxwd	448(%rsp), %ymm1        # 16-byte Folded Reload
	vpmovsxwd	1840(%rsp), %ymm0       # 16-byte Folded Reload
	vmovdqu	%ymm0, 448(%rsp)                # 32-byte Spill
	vpmovsxwd	1856(%rsp), %ymm7       # 16-byte Folded Reload
	vpmulld	%ymm1, %ymm5, %ymm3
	vmovdqa	%ymm1, %ymm4
	vmovdqu	%ymm1, 1536(%rsp)               # 32-byte Spill
	vpmulld	%ymm9, %ymm5, %ymm13
	vpmulld	%ymm7, %ymm10, %ymm14
	vpmulld	%ymm0, %ymm10, %ymm15
	vpaddd	%ymm3, %ymm14, %ymm14
	vpaddd	%ymm13, %ymm15, %ymm13
	vpmovsxwd	1824(%rsp), %ymm1       # 16-byte Folded Reload
	vmovdqu	%ymm1, 1632(%rsp)               # 32-byte Spill
	vmovdqu	1472(%rsp), %ymm11              # 32-byte Reload
	vpaddd	%ymm2, %ymm11, %ymm2
	vmovdqu	1504(%rsp), %ymm0               # 32-byte Reload
	vpmulld	%ymm1, %ymm0, %ymm3
	vpaddd	%ymm3, %ymm2, %ymm15
	vpmovsxwd	768(%rsp), %ymm1        # 16-byte Folded Reload
	vmovdqu	%ymm1, 1600(%rsp)               # 32-byte Spill
	vpaddd	%ymm6, %ymm11, %ymm2
	vpmulld	%ymm1, %ymm0, %ymm6
	vpaddd	%ymm6, %ymm2, %ymm6
	vpmovsxwd	832(%rsp), %ymm2        # 16-byte Folded Reload
	vmovdqu	%ymm2, 224(%rsp)                # 32-byte Spill
	vpaddd	%ymm11, %ymm14, %ymm14
	vmovdqa	%ymm11, %ymm1
	vpmulld	%ymm2, %ymm0, %ymm12
	vpaddd	%ymm12, %ymm14, %ymm12
	vpmovsxwd	128(%rsp), %ymm2        # 16-byte Folded Reload
	vmovdqu	%ymm2, 128(%rsp)                # 32-byte Spill
	vpmulld	%ymm2, %ymm0, %ymm0
	vpaddd	%ymm11, %ymm13, %ymm13
	vpaddd	%ymm0, %ymm13, %ymm0
	vpshufb	.LCPI213_4(%rip), %ymm15, %ymm13 # ymm13 = ymm15[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm15[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm13, %ymm13            # ymm13 = ymm13[0,2,2,3]
	vpshufb	.LCPI213_4(%rip), %ymm6, %ymm6  # ymm6 = ymm6[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm6[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm6, %ymm6              # ymm6 = ymm6[0,2,2,3]
	vinserti128	$1, %xmm6, %ymm13, %ymm6
	vmovdqu	%ymm6, 800(%rsp)                # 32-byte Spill
	vpshufb	.LCPI213_4(%rip), %ymm12, %ymm6 # ymm6 = ymm12[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm12[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm6, %ymm6              # ymm6 = ymm6[0,2,2,3]
	vpshufb	.LCPI213_4(%rip), %ymm0, %ymm0  # ymm0 = ymm0[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm0[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm0, %ymm0              # ymm0 = ymm0[0,2,2,3]
	vinserti128	$1, %xmm0, %ymm6, %ymm0
	vmovdqu	%ymm0, 768(%rsp)                # 32-byte Spill
	vmovdqu	960(%rsp), %ymm1                # 32-byte Reload
	vmovdqu	1664(%rsp), %ymm9               # 32-byte Reload
	vpmulld	%ymm9, %ymm1, %ymm0
	vpmulld	%ymm8, %ymm1, %ymm6
	vmovdqu	2112(%rsp), %ymm14              # 32-byte Reload
	vmovdqu	576(%rsp), %ymm8                # 32-byte Reload
	vpmulld	%ymm8, %ymm14, %ymm12
	vpmulld	32(%rsp), %ymm14, %ymm13        # 32-byte Folded Reload
	vpaddd	%ymm0, %ymm12, %ymm0
	vpaddd	%ymm6, %ymm13, %ymm6
	vpmulld	%ymm4, %ymm1, %ymm12
	vpmulld	192(%rsp), %ymm1, %ymm13        # 32-byte Folded Reload
	vpmulld	%ymm7, %ymm14, %ymm15
	vpaddd	%ymm12, %ymm15, %ymm12
	vmovdqu	448(%rsp), %ymm4                # 32-byte Reload
	vpmulld	%ymm4, %ymm14, %ymm15
	vpaddd	%ymm13, %ymm15, %ymm13
	vmovdqu	1984(%rsp), %ymm1               # 32-byte Reload
	vpaddd	%ymm1, %ymm0, %ymm2
	vmovdqu	2016(%rsp), %ymm0               # 32-byte Reload
	vmovdqu	1632(%rsp), %ymm3               # 32-byte Reload
	vpmulld	%ymm3, %ymm0, %ymm15
	vpaddd	%ymm2, %ymm15, %ymm2
	vpaddd	%ymm1, %ymm6, %ymm6
	vmovdqu	1600(%rsp), %ymm11              # 32-byte Reload
	vpmulld	%ymm11, %ymm0, %ymm15
	vpaddd	%ymm6, %ymm15, %ymm6
	vpaddd	%ymm1, %ymm12, %ymm12
	vpmulld	224(%rsp), %ymm0, %ymm15        # 32-byte Folded Reload
	vpaddd	%ymm15, %ymm12, %ymm12
	vpaddd	%ymm1, %ymm13, %ymm13
	vpmulld	128(%rsp), %ymm0, %ymm15        # 32-byte Folded Reload
	vpaddd	%ymm15, %ymm13, %ymm13
	vpshufb	.LCPI213_4(%rip), %ymm2, %ymm0  # ymm0 = ymm2[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm2[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm0, %ymm0              # ymm0 = ymm0[0,2,2,3]
	vpshufb	.LCPI213_4(%rip), %ymm6, %ymm6  # ymm6 = ymm6[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm6[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm6, %ymm6              # ymm6 = ymm6[0,2,2,3]
	vinserti128	$1, %xmm6, %ymm0, %ymm0
	vmovdqu	%ymm0, 928(%rsp)                # 32-byte Spill
	vpshufb	.LCPI213_4(%rip), %ymm12, %ymm0 # ymm0 = ymm12[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm12[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm0, %ymm0              # ymm0 = ymm0[0,2,2,3]
	vpshufb	.LCPI213_4(%rip), %ymm13, %ymm6 # ymm6 = ymm13[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm13[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm6, %ymm6              # ymm6 = ymm6[0,2,2,3]
	vinserti128	$1, %xmm6, %ymm0, %ymm0
	vmovdqu	%ymm0, 832(%rsp)                # 32-byte Spill
	vmovdqu	1952(%rsp), %ymm12              # 32-byte Reload
	vpmulld	%ymm9, %ymm12, %ymm0
	vpmulld	1568(%rsp), %ymm12, %ymm1       # 32-byte Folded Reload
	vmovdqu	2080(%rsp), %ymm13              # 32-byte Reload
	vpmulld	%ymm8, %ymm13, %ymm6
	vpaddd	%ymm0, %ymm6, %ymm0
	vpmulld	32(%rsp), %ymm13, %ymm6         # 32-byte Folded Reload
	vpaddd	%ymm1, %ymm6, %ymm1
	vpmulld	1536(%rsp), %ymm12, %ymm6       # 32-byte Folded Reload
	vpmulld	192(%rsp), %ymm12, %ymm8        # 32-byte Folded Reload
	vpmulld	%ymm7, %ymm13, %ymm7
	vpmulld	%ymm4, %ymm13, %ymm9
	vpaddd	%ymm6, %ymm7, %ymm6
	vpaddd	%ymm8, %ymm9, %ymm7
	vmovdqu	1920(%rsp), %ymm8               # 32-byte Reload
	vpmulld	%ymm3, %ymm8, %ymm4
	vmovdqu	2048(%rsp), %ymm15              # 32-byte Reload
	vpaddd	%ymm0, %ymm15, %ymm0
	vpaddd	%ymm4, %ymm0, %ymm0
	vpmulld	%ymm11, %ymm8, %ymm3
	vpaddd	%ymm1, %ymm15, %ymm1
	vpaddd	%ymm3, %ymm1, %ymm1
	vpmulld	224(%rsp), %ymm8, %ymm2         # 32-byte Folded Reload
	vpaddd	%ymm6, %ymm15, %ymm3
	vpaddd	%ymm2, %ymm3, %ymm2
	vpmulld	128(%rsp), %ymm8, %ymm3         # 32-byte Folded Reload
	vpaddd	%ymm7, %ymm15, %ymm4
	vpaddd	%ymm3, %ymm4, %ymm3
	vpshufb	.LCPI213_4(%rip), %ymm0, %ymm0  # ymm0 = ymm0[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm0[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm0, %ymm0              # ymm0 = ymm0[0,2,2,3]
	vpshufb	.LCPI213_4(%rip), %ymm1, %ymm1  # ymm1 = ymm1[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm1[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm1, %ymm1              # ymm1 = ymm1[0,2,2,3]
	vinserti128	$1, %xmm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 448(%rsp)                # 32-byte Spill
	vpshufb	.LCPI213_4(%rip), %ymm2, %ymm0  # ymm0 = ymm2[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm2[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm0, %ymm0              # ymm0 = ymm0[0,2,2,3]
	vpshufb	.LCPI213_4(%rip), %ymm3, %ymm1  # ymm1 = ymm3[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm3[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm1, %ymm1              # ymm1 = ymm1[0,2,2,3]
	vinserti128	$1, %xmm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 576(%rsp)                # 32-byte Spill
	vpmovsxwd	1872(%rsp), %ymm0       # 16-byte Folded Reload
	vmovdqu	%ymm0, 32(%rsp)                 # 32-byte Spill
	vpmovsxwd	1696(%rsp), %ymm1       # 16-byte Folded Reload
	vmovdqu	%ymm1, 1696(%rsp)               # 32-byte Spill
	vpmovsxwd	1888(%rsp), %ymm3       # 16-byte Folded Reload
	vmovdqu	%ymm3, 192(%rsp)                # 32-byte Spill
	vpmovsxwd	1904(%rsp), %ymm4       # 16-byte Folded Reload
	vmovdqu	%ymm4, 224(%rsp)                # 32-byte Spill
	vpmulld	%ymm1, %ymm5, %ymm1
	vpmulld	%ymm0, %ymm5, %ymm2
	vpmulld	%ymm4, %ymm10, %ymm7
	vpmulld	%ymm3, %ymm10, %ymm8
	vpaddd	%ymm1, %ymm7, %ymm9
	vpaddd	%ymm2, %ymm8, %ymm1
	vpmovsxwd	352(%rsp), %ymm8        # 16-byte Folded Reload
	vpmovsxwd	1760(%rsp), %ymm0       # 16-byte Folded Reload
	vmovdqu	%ymm0, 352(%rsp)                # 32-byte Spill
	vpmulld	%ymm8, %ymm5, %ymm2
	vpmulld	%ymm0, %ymm10, %ymm7
	vpaddd	%ymm2, %ymm7, %ymm11
	vpmovsxwd	608(%rsp), %ymm7        # 16-byte Folded Reload
	vpmulld	%ymm7, %ymm5, %ymm2
	vpmovsxwd	1792(%rsp), %ymm0       # 16-byte Folded Reload
	vmovdqu	%ymm0, 1792(%rsp)               # 32-byte Spill
	vpmulld	%ymm0, %ymm10, %ymm12
	vpaddd	%ymm2, %ymm12, %ymm0
	vpmovsxwd	1728(%rsp), %ymm3       # 16-byte Folded Reload
	vmovdqu	1472(%rsp), %ymm5               # 32-byte Reload
	vpaddd	%ymm5, %ymm9, %ymm9
	vmovdqu	1504(%rsp), %ymm6               # 32-byte Reload
	vpmulld	%ymm3, %ymm6, %ymm12
	vmovdqu	%ymm3, 1760(%rsp)               # 32-byte Spill
	vpaddd	%ymm12, %ymm9, %ymm9
	vpmovsxwd	864(%rsp), %ymm2        # 16-byte Folded Reload
	vmovdqu	%ymm2, 128(%rsp)                # 32-byte Spill
	vpmulld	%ymm2, %ymm6, %ymm12
	vpaddd	%ymm5, %ymm1, %ymm10
	vmovdqa	%ymm5, %ymm1
	vpaddd	%ymm12, %ymm10, %ymm10
	vpmovsxwd	896(%rsp), %ymm4        # 16-byte Folded Reload
	vpaddd	%ymm5, %ymm11, %ymm11
	vpmulld	%ymm4, %ymm6, %ymm12
	vmovdqu	%ymm4, 864(%rsp)                # 32-byte Spill
	vpaddd	%ymm12, %ymm11, %ymm11
	vpmovsxwd	640(%rsp), %ymm2        # 16-byte Folded Reload
	vpaddd	%ymm5, %ymm0, %ymm0
	vpmulld	%ymm2, %ymm6, %ymm6
	vmovdqu	%ymm2, 896(%rsp)                # 32-byte Spill
	vpaddd	%ymm6, %ymm0, %ymm0
	vpshufb	.LCPI213_4(%rip), %ymm9, %ymm6  # ymm6 = ymm9[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm9[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm6, %ymm6              # ymm6 = ymm6[0,2,2,3]
	vpshufb	.LCPI213_4(%rip), %ymm10, %ymm9 # ymm9 = ymm10[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm10[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm9, %ymm9              # ymm9 = ymm9[0,2,2,3]
	vinserti128	$1, %xmm9, %ymm6, %ymm1
	vmovdqu	%ymm1, 640(%rsp)                # 32-byte Spill
	vpshufb	.LCPI213_4(%rip), %ymm11, %ymm6 # ymm6 = ymm11[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm11[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm6, %ymm6              # ymm6 = ymm6[0,2,2,3]
	vpshufb	.LCPI213_4(%rip), %ymm0, %ymm0  # ymm0 = ymm0[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm0[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm0, %ymm0              # ymm0 = ymm0[0,2,2,3]
	vinserti128	$1, %xmm0, %ymm6, %ymm0
	vmovdqu	%ymm0, 608(%rsp)                # 32-byte Spill
	vmovdqu	960(%rsp), %ymm10               # 32-byte Reload
	vmovdqu	1696(%rsp), %ymm12              # 32-byte Reload
	vpmulld	%ymm12, %ymm10, %ymm0
	vpmulld	32(%rsp), %ymm10, %ymm6         # 32-byte Folded Reload
	vpmulld	224(%rsp), %ymm14, %ymm9        # 32-byte Folded Reload
	vpaddd	%ymm0, %ymm9, %ymm1
	vpmulld	192(%rsp), %ymm14, %ymm9        # 32-byte Folded Reload
	vpaddd	%ymm6, %ymm9, %ymm6
	vpmulld	%ymm8, %ymm10, %ymm9
	vpmulld	%ymm7, %ymm10, %ymm10
	vpmulld	352(%rsp), %ymm14, %ymm11       # 32-byte Folded Reload
	vmovdqu	1792(%rsp), %ymm5               # 32-byte Reload
	vpmulld	%ymm5, %ymm14, %ymm0
	vpaddd	%ymm9, %ymm11, %ymm9
	vpaddd	%ymm0, %ymm10, %ymm0
	vmovdqu	2016(%rsp), %ymm14              # 32-byte Reload
	vpmulld	%ymm3, %ymm14, %ymm10
	vmovdqu	1984(%rsp), %ymm11              # 32-byte Reload
	vpaddd	%ymm1, %ymm11, %ymm1
	vpaddd	%ymm1, %ymm10, %ymm1
	vpmulld	128(%rsp), %ymm14, %ymm10       # 32-byte Folded Reload
	vpaddd	%ymm6, %ymm11, %ymm6
	vpaddd	%ymm6, %ymm10, %ymm6
	vpmulld	%ymm4, %ymm14, %ymm10
	vpaddd	%ymm11, %ymm9, %ymm9
	vpaddd	%ymm10, %ymm9, %ymm9
	vpmulld	%ymm2, %ymm14, %ymm10
	vpaddd	%ymm0, %ymm11, %ymm0
	vpaddd	%ymm0, %ymm10, %ymm0
	vpshufb	.LCPI213_4(%rip), %ymm1, %ymm1  # ymm1 = ymm1[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm1[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm1, %ymm1              # ymm1 = ymm1[0,2,2,3]
	vpshufb	.LCPI213_4(%rip), %ymm6, %ymm6  # ymm6 = ymm6[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm6[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm6, %ymm6              # ymm6 = ymm6[0,2,2,3]
	vinserti128	$1, %xmm6, %ymm1, %ymm10
	vpshufb	.LCPI213_4(%rip), %ymm9, %ymm1  # ymm1 = ymm9[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm9[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm1, %ymm1              # ymm1 = ymm1[0,2,2,3]
	vpshufb	.LCPI213_4(%rip), %ymm0, %ymm0  # ymm0 = ymm0[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm0[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm0, %ymm0              # ymm0 = ymm0[0,2,2,3]
	vinserti128	$1, %xmm0, %ymm1, %ymm11
	vmovdqu	1952(%rsp), %ymm14              # 32-byte Reload
	vpmulld	%ymm12, %ymm14, %ymm0
	vpmulld	32(%rsp), %ymm14, %ymm1         # 32-byte Folded Reload
	vpmulld	224(%rsp), %ymm13, %ymm4        # 32-byte Folded Reload
	vpmulld	192(%rsp), %ymm13, %ymm6        # 32-byte Folded Reload
	vpaddd	%ymm0, %ymm4, %ymm0
	vpaddd	%ymm1, %ymm6, %ymm1
	vpmulld	%ymm8, %ymm14, %ymm4
	vpcmpeqd	%ymm9, %ymm9, %ymm9
	vpmulld	%ymm7, %ymm14, %ymm6
	vpmulld	352(%rsp), %ymm13, %ymm3        # 32-byte Folded Reload
	vpaddd	%ymm4, %ymm3, %ymm3
	vpmulld	%ymm5, %ymm13, %ymm4
	vpaddd	%ymm6, %ymm4, %ymm4
	vmovdqu	1920(%rsp), %ymm6               # 32-byte Reload
	vpmulld	1760(%rsp), %ymm6, %ymm2        # 32-byte Folded Reload
	vpaddd	%ymm0, %ymm15, %ymm0
	vpaddd	%ymm2, %ymm0, %ymm0
	vpmulld	128(%rsp), %ymm6, %ymm2         # 32-byte Folded Reload
	vpaddd	%ymm1, %ymm15, %ymm1
	vpaddd	%ymm2, %ymm1, %ymm1
	vpmulld	864(%rsp), %ymm6, %ymm2         # 32-byte Folded Reload
	vmovdqa	.LCPI213_3(%rip), %ymm14        # ymm14 = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
	vpaddd	%ymm3, %ymm15, %ymm3
	vpaddd	%ymm2, %ymm3, %ymm2
	vpmulld	896(%rsp), %ymm6, %ymm3         # 32-byte Folded Reload
	vpaddd	%ymm4, %ymm15, %ymm4
	vpaddd	%ymm3, %ymm4, %ymm3
	vmovdqa	.LCPI213_5(%rip), %ymm4         # ymm4 = [1023,1023,1023,1023,1023,1023,1023,1023,1023,1023,1023,1023,1023,1023,1023,1023]
	vpshufb	.LCPI213_4(%rip), %ymm0, %ymm0  # ymm0 = ymm0[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm0[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm0, %ymm0              # ymm0 = ymm0[0,2,2,3]
	vpshufb	.LCPI213_4(%rip), %ymm1, %ymm1  # ymm1 = ymm1[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm1[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm1, %ymm1              # ymm1 = ymm1[0,2,2,3]
	vinserti128	$1, %xmm1, %ymm0, %ymm6
	vpshufb	.LCPI213_4(%rip), %ymm2, %ymm0  # ymm0 = ymm2[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm2[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpermq	$232, %ymm0, %ymm0              # ymm0 = ymm0[0,2,2,3]
	vpshufb	.LCPI213_4(%rip), %ymm3, %ymm1  # ymm1 = ymm3[1,2,5,6,9,10,13,14,9,10,13,14,13,14,15],zero,ymm3[17,18,21,22,25,26,29,30,25,26,29,30,29,30,31],zero
	vpxor	%xmm7, %xmm7, %xmm7
	vpermq	$232, %ymm1, %ymm1              # ymm1 = ymm1[0,2,2,3]
	vinserti128	$1, %xmm1, %ymm0, %ymm3
	vpminsw	768(%rsp), %ymm4, %ymm0         # 32-byte Folded Reload
	vpminsw	800(%rsp), %ymm4, %ymm1         # 32-byte Folded Reload
	vpmaxsw	%ymm7, %ymm0, %ymm2
	vpmaxsw	%ymm7, %ymm1, %ymm0
	vextracti128	$1, %ymm2, %xmm1
	vpmovzxwd	%xmm1, %ymm1            # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vpmovzxwd	%xmm2, %ymm2            # ymm2 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vmovd	%xmm2, %r11d
	vpextrd	$1, %xmm2, %r8d
	vpextrd	$2, %xmm2, %r9d
	vpextrd	$3, %xmm2, %r10d
	vextracti128	$1, %ymm2, %xmm2
	vmovd	%xmm2, %edi
	vpextrd	$1, %xmm2, %r12d
	vpextrd	$2, %xmm2, %ecx
	vpextrd	$3, %xmm2, %edx
	vpextrd	$1, %xmm1, %esi
	vpextrd	$2, %xmm1, %ebp
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	vmovd	%xmm1, %ebp
	vpextrd	$3, %xmm1, %ebx
	movq	%rbx, 128(%rsp)                 # 8-byte Spill
	vextracti128	$1, %ymm1, %xmm1
	vpextrd	$1, %xmm1, %ebx
	movq	%rbx, 192(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm1, %ebx
	movq	%rbx, 224(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm1, %ebx
	movq	%rbx, 352(%rsp)                 # 8-byte Spill
	movzbl	(%r15,%r11), %ebx
	vmovd	%ebx, %xmm2
	vmovd	%xmm1, %ebx
	vextracti128	$1, %ymm0, %xmm1
	vpmovzxwd	%xmm1, %ymm1            # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vpmovzxwd	%xmm0, %ymm0            # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpinsrb	$1, (%r15,%r8), %xmm2, %xmm2
	vpextrd	$1, %xmm0, %eax
	movq	%rax, 800(%rsp)                 # 8-byte Spill
	vpinsrb	$2, (%r15,%r9), %xmm2, %xmm2
	vpextrd	$2, %xmm0, %eax
	movq	%rax, 768(%rsp)                 # 8-byte Spill
	vpinsrb	$3, (%r15,%r10), %xmm2, %xmm2
	vpinsrb	$4, (%r15,%rdi), %xmm2, %xmm2
	vmovd	%xmm0, %r10d
	vpextrd	$3, %xmm0, %eax
	movq	%rax, 896(%rsp)                 # 8-byte Spill
	vextracti128	$1, %ymm0, %xmm0
	vpinsrb	$5, (%r15,%r12), %xmm2, %xmm2
	vpextrd	$1, %xmm0, %eax
	movq	%rax, 864(%rsp)                 # 8-byte Spill
	vpinsrb	$6, (%r15,%rcx), %xmm2, %xmm2
	vpextrd	$2, %xmm0, %r12d
	vpinsrb	$7, (%r15,%rdx), %xmm2, %xmm2
	vpextrd	$3, %xmm0, %r13d
	vpinsrb	$8, (%r15,%rbp), %xmm2, %xmm2
	vpinsrb	$9, (%r15,%rsi), %xmm2, %xmm2
	vmovd	%xmm0, %ebp
	vmovd	%xmm1, %r11d
	movq	32(%rsp), %rax                  # 8-byte Reload
	vpinsrb	$10, (%r15,%rax), %xmm2, %xmm0
	vpextrd	$1, %xmm1, %r8d
	movq	128(%rsp), %rax                 # 8-byte Reload
	vpinsrb	$11, (%r15,%rax), %xmm0, %xmm0
	vpextrd	$2, %xmm1, %r9d
	vpinsrb	$12, (%r15,%rbx), %xmm0, %xmm0
	vpextrd	$3, %xmm1, %ebx
	movq	192(%rsp), %rax                 # 8-byte Reload
	vpinsrb	$13, (%r15,%rax), %xmm0, %xmm0
	vextracti128	$1, %ymm1, %xmm1
	vmovd	%xmm1, %eax
	movq	224(%rsp), %rcx                 # 8-byte Reload
	vpinsrb	$14, (%r15,%rcx), %xmm0, %xmm0
	vpextrd	$1, %xmm1, %ecx
	movq	352(%rsp), %rdx                 # 8-byte Reload
	vpinsrb	$15, (%r15,%rdx), %xmm0, %xmm0
	vpextrd	$2, %xmm1, %edx
	movzbl	(%r15,%r10), %esi
	vmovd	%esi, %xmm2
	vpextrd	$3, %xmm1, %esi
	movq	800(%rsp), %rdi                 # 8-byte Reload
	vpinsrb	$1, (%r15,%rdi), %xmm2, %xmm1
	movq	768(%rsp), %rdi                 # 8-byte Reload
	vpinsrb	$2, (%r15,%rdi), %xmm1, %xmm1
	movq	896(%rsp), %rdi                 # 8-byte Reload
	vpinsrb	$3, (%r15,%rdi), %xmm1, %xmm1
	vpinsrb	$4, (%r15,%rbp), %xmm1, %xmm1
	movq	864(%rsp), %rdi                 # 8-byte Reload
	vpinsrb	$5, (%r15,%rdi), %xmm1, %xmm1
	vpinsrb	$6, (%r15,%r12), %xmm1, %xmm1
	vpinsrb	$7, (%r15,%r13), %xmm1, %xmm1
	vpinsrb	$8, (%r15,%r11), %xmm1, %xmm1
	vpinsrb	$9, (%r15,%r8), %xmm1, %xmm1
	vpinsrb	$10, (%r15,%r9), %xmm1, %xmm1
	vpinsrb	$11, (%r15,%rbx), %xmm1, %xmm1
	vpinsrb	$12, (%r15,%rax), %xmm1, %xmm1
	vpinsrb	$13, (%r15,%rcx), %xmm1, %xmm1
	vpinsrb	$14, (%r15,%rdx), %xmm1, %xmm1
	vpinsrb	$15, (%r15,%rsi), %xmm1, %xmm1
	movq	296(%rsp), %rax                 # 8-byte Reload
	movq	384(%rsp), %rcx                 # 8-byte Reload
	vmovdqu	%xmm1, 16(%rax,%rcx,2)
	vmovdqu	%xmm0, (%rax,%rcx,2)
	vpminsw	832(%rsp), %ymm4, %ymm0         # 32-byte Folded Reload
	vpminsw	928(%rsp), %ymm4, %ymm1         # 32-byte Folded Reload
	vpmaxsw	%ymm7, %ymm0, %ymm2
	vpmaxsw	%ymm7, %ymm1, %ymm0
	vextracti128	$1, %ymm2, %xmm1
	vpmovzxwd	%xmm1, %ymm1            # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vpmovzxwd	%xmm2, %ymm2            # ymm2 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vmovd	%xmm2, %r10d
	vpextrd	$1, %xmm2, %r8d
	vpextrd	$2, %xmm2, %r9d
	vpextrd	$3, %xmm2, %r11d
	vextracti128	$1, %ymm2, %xmm2
	vmovd	%xmm2, %eax
	vpextrd	$1, %xmm2, %ecx
	vpextrd	$2, %xmm2, %edx
	vpextrd	$3, %xmm2, %ebx
	vpextrd	$1, %xmm1, %ebp
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	vpextrd	$2, %xmm1, %ebp
	movq	%rbp, 128(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm1, %ebp
	movq	%rbp, 192(%rsp)                 # 8-byte Spill
	vmovd	%xmm1, %r12d
	vextracti128	$1, %ymm1, %xmm1
	vpextrd	$1, %xmm1, %ebp
	movq	%rbp, 224(%rsp)                 # 8-byte Spill
	vmovd	%xmm1, %ebp
	vpextrd	$2, %xmm1, %edi
	movq	%rdi, 352(%rsp)                 # 8-byte Spill
	movzbl	(%r15,%r10), %edi
	vmovd	%edi, %xmm2
	vpextrd	$3, %xmm1, %esi
	vextracti128	$1, %ymm0, %xmm1
	vpmovzxwd	%xmm1, %ymm1            # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vpmovzxwd	%xmm0, %ymm0            # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpinsrb	$1, (%r15,%r8), %xmm2, %xmm2
	vpextrd	$1, %xmm0, %edi
	movq	%rdi, 928(%rsp)                 # 8-byte Spill
	vpinsrb	$2, (%r15,%r9), %xmm2, %xmm2
	vpextrd	$2, %xmm0, %edi
	movq	%rdi, 832(%rsp)                 # 8-byte Spill
	vpinsrb	$3, (%r15,%r11), %xmm2, %xmm2
	vpextrd	$3, %xmm0, %edi
	movq	%rdi, 800(%rsp)                 # 8-byte Spill
	vpinsrb	$4, (%r15,%rax), %xmm2, %xmm2
	vmovd	%xmm0, %eax
	vextracti128	$1, %ymm0, %xmm0
	vpinsrb	$5, (%r15,%rcx), %xmm2, %xmm2
	vpextrd	$1, %xmm0, %r10d
	vpinsrb	$6, (%r15,%rdx), %xmm2, %xmm2
	vpextrd	$2, %xmm0, %r11d
	vpinsrb	$7, (%r15,%rbx), %xmm2, %xmm2
	vpextrd	$3, %xmm0, %ecx
	movq	%rcx, 768(%rsp)                 # 8-byte Spill
	vpinsrb	$8, (%r15,%r12), %xmm2, %xmm2
	vmovd	%xmm0, %r12d
	movq	32(%rsp), %rcx                  # 8-byte Reload
	vpinsrb	$9, (%r15,%rcx), %xmm2, %xmm0
	vmovd	%xmm1, %edi
	movq	128(%rsp), %rcx                 # 8-byte Reload
	vpinsrb	$10, (%r15,%rcx), %xmm0, %xmm0
	vpextrd	$1, %xmm1, %r8d
	movq	192(%rsp), %rcx                 # 8-byte Reload
	vpinsrb	$11, (%r15,%rcx), %xmm0, %xmm0
	vpextrd	$2, %xmm1, %r9d
	vpinsrb	$12, (%r15,%rbp), %xmm0, %xmm0
	vpextrd	$3, %xmm1, %ebp
	vextracti128	$1, %ymm1, %xmm1
	movq	224(%rsp), %rcx                 # 8-byte Reload
	vpinsrb	$13, (%r15,%rcx), %xmm0, %xmm0
	vmovd	%xmm1, %ecx
	movq	352(%rsp), %rdx                 # 8-byte Reload
	vpinsrb	$14, (%r15,%rdx), %xmm0, %xmm0
	vpextrd	$1, %xmm1, %edx
	vpinsrb	$15, (%r15,%rsi), %xmm0, %xmm0
	vpextrd	$2, %xmm1, %esi
	movzbl	(%r15,%rax), %eax
	vmovd	%eax, %xmm2
	vpextrd	$3, %xmm1, %eax
	movq	928(%rsp), %r13                 # 8-byte Reload
	vpinsrb	$1, (%r15,%r13), %xmm2, %xmm1
	movq	832(%rsp), %rbx                 # 8-byte Reload
	vpinsrb	$2, (%r15,%rbx), %xmm1, %xmm1
	movq	800(%rsp), %rbx                 # 8-byte Reload
	vpinsrb	$3, (%r15,%rbx), %xmm1, %xmm1
	vpinsrb	$4, (%r15,%r12), %xmm1, %xmm1
	vpinsrb	$5, (%r15,%r10), %xmm1, %xmm1
	vpinsrb	$6, (%r15,%r11), %xmm1, %xmm1
	movq	768(%rsp), %rbx                 # 8-byte Reload
	vpinsrb	$7, (%r15,%rbx), %xmm1, %xmm1
	vpinsrb	$8, (%r15,%rdi), %xmm1, %xmm1
	vpinsrb	$9, (%r15,%r8), %xmm1, %xmm1
	vpinsrb	$10, (%r15,%r9), %xmm1, %xmm1
	vpinsrb	$11, (%r15,%rbp), %xmm1, %xmm1
	vpinsrb	$12, (%r15,%rcx), %xmm1, %xmm1
	vpinsrb	$13, (%r15,%rdx), %xmm1, %xmm1
	vpinsrb	$14, (%r15,%rsi), %xmm1, %xmm1
	vpinsrb	$15, (%r15,%rax), %xmm1, %xmm1
	movq	184(%rsp), %rax                 # 8-byte Reload
	movq	384(%rsp), %rcx                 # 8-byte Reload
	vmovdqu	%xmm1, 48(%rax,%rcx,2)
	vmovdqu	%xmm0, 32(%rax,%rcx,2)
	vpminsw	576(%rsp), %ymm4, %ymm0         # 32-byte Folded Reload
	vpminsw	448(%rsp), %ymm4, %ymm1         # 32-byte Folded Reload
	vpmaxsw	%ymm7, %ymm0, %ymm2
	vpmaxsw	%ymm7, %ymm1, %ymm0
	vextracti128	$1, %ymm2, %xmm1
	vpmovzxwd	%xmm1, %ymm1            # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vpmovzxwd	%xmm2, %ymm2            # ymm2 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vmovd	%xmm2, %r11d
	vpextrd	$1, %xmm2, %r8d
	vpextrd	$2, %xmm2, %r9d
	vpextrd	$3, %xmm2, %r12d
	vextracti128	$1, %ymm2, %xmm2
	vmovd	%xmm2, %ebx
	vpextrd	$1, %xmm2, %r10d
	vpextrd	$2, %xmm2, %edx
	vpextrd	$3, %xmm2, %esi
	vpextrd	$1, %xmm1, %ecx
	vpextrd	$2, %xmm1, %ebp
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	vmovd	%xmm1, %ebp
	vpextrd	$3, %xmm1, %edi
	movq	%rdi, 128(%rsp)                 # 8-byte Spill
	vextracti128	$1, %ymm1, %xmm1
	vpextrd	$1, %xmm1, %edi
	movq	%rdi, 192(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm1, %edi
	movq	%rdi, 224(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm1, %edi
	movq	%rdi, 352(%rsp)                 # 8-byte Spill
	movzbl	(%r15,%r11), %edi
	vmovd	%edi, %xmm2
	vmovd	%xmm1, %edi
	vextracti128	$1, %ymm0, %xmm1
	vpmovzxwd	%xmm1, %ymm1            # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vpmovzxwd	%xmm0, %ymm0            # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpinsrb	$1, (%r15,%r8), %xmm2, %xmm2
	vpextrd	$1, %xmm0, %eax
	movq	%rax, 448(%rsp)                 # 8-byte Spill
	vpinsrb	$2, (%r15,%r9), %xmm2, %xmm2
	vpextrd	$2, %xmm0, %eax
	movq	%rax, 576(%rsp)                 # 8-byte Spill
	vpinsrb	$3, (%r15,%r12), %xmm2, %xmm2
	vpinsrb	$4, (%r15,%rbx), %xmm2, %xmm2
	vmovd	%xmm0, %eax
	vpextrd	$3, %xmm0, %r12d
	vextracti128	$1, %ymm0, %xmm0
	vpinsrb	$5, (%r15,%r10), %xmm2, %xmm2
	vpextrd	$1, %xmm0, %r13d
	vpinsrb	$6, (%r15,%rdx), %xmm2, %xmm2
	vpextrd	$2, %xmm0, %edx
	movq	%rdx, 928(%rsp)                 # 8-byte Spill
	vpinsrb	$7, (%r15,%rsi), %xmm2, %xmm2
	vpextrd	$3, %xmm0, %edx
	movq	%rdx, 832(%rsp)                 # 8-byte Spill
	vpinsrb	$8, (%r15,%rbp), %xmm2, %xmm2
	vpinsrb	$9, (%r15,%rcx), %xmm2, %xmm2
	vmovd	%xmm0, %ebp
	vmovd	%xmm1, %r8d
	movq	32(%rsp), %rcx                  # 8-byte Reload
	vpinsrb	$10, (%r15,%rcx), %xmm2, %xmm0
	vpextrd	$1, %xmm1, %r9d
	movq	128(%rsp), %rcx                 # 8-byte Reload
	vpinsrb	$11, (%r15,%rcx), %xmm0, %xmm0
	vpextrd	$2, %xmm1, %r10d
	vpinsrb	$12, (%r15,%rdi), %xmm0, %xmm0
	vpextrd	$3, %xmm1, %edi
	movq	192(%rsp), %rcx                 # 8-byte Reload
	vpinsrb	$13, (%r15,%rcx), %xmm0, %xmm0
	vextracti128	$1, %ymm1, %xmm1
	vmovd	%xmm1, %ecx
	movq	224(%rsp), %rdx                 # 8-byte Reload
	vpinsrb	$14, (%r15,%rdx), %xmm0, %xmm0
	vpextrd	$1, %xmm1, %edx
	movq	352(%rsp), %rsi                 # 8-byte Reload
	vpinsrb	$15, (%r15,%rsi), %xmm0, %xmm0
	vpextrd	$2, %xmm1, %esi
	movzbl	(%r15,%rax), %eax
	vmovd	%eax, %xmm2
	vpextrd	$3, %xmm1, %eax
	movq	448(%rsp), %r11                 # 8-byte Reload
	vpinsrb	$1, (%r15,%r11), %xmm2, %xmm1
	movq	576(%rsp), %rbx                 # 8-byte Reload
	vpinsrb	$2, (%r15,%rbx), %xmm1, %xmm1
	vpinsrb	$3, (%r15,%r12), %xmm1, %xmm1
	vpinsrb	$4, (%r15,%rbp), %xmm1, %xmm1
	vpinsrb	$5, (%r15,%r13), %xmm1, %xmm1
	movq	928(%rsp), %rbp                 # 8-byte Reload
	vpinsrb	$6, (%r15,%rbp), %xmm1, %xmm1
	movq	832(%rsp), %rbp                 # 8-byte Reload
	vpinsrb	$7, (%r15,%rbp), %xmm1, %xmm1
	vpinsrb	$8, (%r15,%r8), %xmm1, %xmm1
	vpinsrb	$9, (%r15,%r9), %xmm1, %xmm1
	vpinsrb	$10, (%r15,%r10), %xmm1, %xmm1
	vpinsrb	$11, (%r15,%rdi), %xmm1, %xmm1
	vpinsrb	$12, (%r15,%rcx), %xmm1, %xmm1
	vpinsrb	$13, (%r15,%rdx), %xmm1, %xmm1
	vpinsrb	$14, (%r15,%rsi), %xmm1, %xmm1
	vpinsrb	$15, (%r15,%rax), %xmm1, %xmm1
	movq	288(%rsp), %rax                 # 8-byte Reload
	movq	384(%rsp), %rcx                 # 8-byte Reload
	vmovdqu	%xmm1, 48(%rax,%rcx,2)
	vmovdqu	%xmm0, 32(%rax,%rcx,2)
	vpminsw	608(%rsp), %ymm4, %ymm0         # 32-byte Folded Reload
	vpminsw	640(%rsp), %ymm4, %ymm1         # 32-byte Folded Reload
	vpmaxsw	%ymm7, %ymm0, %ymm2
	vpmaxsw	%ymm7, %ymm1, %ymm0
	vextracti128	$1, %ymm2, %xmm1
	vpmovzxwd	%xmm1, %ymm1            # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vpmovzxwd	%xmm2, %ymm2            # ymm2 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vmovd	%xmm2, %r11d
	vpextrd	$1, %xmm2, %r8d
	vpextrd	$2, %xmm2, %r9d
	vpextrd	$3, %xmm2, %r10d
	vextracti128	$1, %ymm2, %xmm2
	vmovd	%xmm2, %eax
	vpextrd	$1, %xmm2, %r12d
	vpextrd	$2, %xmm2, %edx
	vpextrd	$3, %xmm2, %ecx
	vpextrd	$1, %xmm1, %ebp
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	vpextrd	$2, %xmm1, %ebp
	movq	%rbp, 128(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm1, %ebp
	movq	%rbp, 192(%rsp)                 # 8-byte Spill
	vmovd	%xmm1, %ebx
	vextracti128	$1, %ymm1, %xmm1
	vpextrd	$1, %xmm1, %ebp
	movq	%rbp, 224(%rsp)                 # 8-byte Spill
	vmovd	%xmm1, %ebp
	vpextrd	$2, %xmm1, %edi
	movq	%rdi, 352(%rsp)                 # 8-byte Spill
	movzbl	(%r15,%r11), %edi
	vmovd	%edi, %xmm2
	vpextrd	$3, %xmm1, %esi
	vextracti128	$1, %ymm0, %xmm1
	vpmovzxwd	%xmm1, %ymm1            # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vpmovzxwd	%xmm0, %ymm0            # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpinsrb	$1, (%r15,%r8), %xmm2, %xmm2
	vpextrd	$1, %xmm0, %edi
	movq	%rdi, 640(%rsp)                 # 8-byte Spill
	vpinsrb	$2, (%r15,%r9), %xmm2, %xmm2
	vpextrd	$2, %xmm0, %edi
	movq	%rdi, 608(%rsp)                 # 8-byte Spill
	vpinsrb	$3, (%r15,%r10), %xmm2, %xmm2
	vpextrd	$3, %xmm0, %edi
	movq	%rdi, 448(%rsp)                 # 8-byte Spill
	vpinsrb	$4, (%r15,%rax), %xmm2, %xmm2
	vmovd	%xmm0, %eax
	vextracti128	$1, %ymm0, %xmm0
	vpinsrb	$5, (%r15,%r12), %xmm2, %xmm2
	vpextrd	$1, %xmm0, %edi
	movq	%rdi, 576(%rsp)                 # 8-byte Spill
	vpinsrb	$6, (%r15,%rdx), %xmm2, %xmm2
	vpextrd	$2, %xmm0, %r11d
	vpinsrb	$7, (%r15,%rcx), %xmm2, %xmm2
	vpextrd	$3, %xmm0, %r12d
	vpinsrb	$8, (%r15,%rbx), %xmm2, %xmm2
	vmovd	%xmm0, %ebx
	movq	32(%rsp), %rcx                  # 8-byte Reload
	vpinsrb	$9, (%r15,%rcx), %xmm2, %xmm0
	vmovd	%xmm1, %r10d
	movq	128(%rsp), %rcx                 # 8-byte Reload
	vpinsrb	$10, (%r15,%rcx), %xmm0, %xmm0
	vpextrd	$1, %xmm1, %r8d
	movq	192(%rsp), %rcx                 # 8-byte Reload
	vpinsrb	$11, (%r15,%rcx), %xmm0, %xmm0
	vpextrd	$2, %xmm1, %r9d
	vpinsrb	$12, (%r15,%rbp), %xmm0, %xmm0
	vpextrd	$3, %xmm1, %ebp
	vextracti128	$1, %ymm1, %xmm1
	movq	224(%rsp), %rcx                 # 8-byte Reload
	vpinsrb	$13, (%r15,%rcx), %xmm0, %xmm0
	vmovd	%xmm1, %ecx
	movq	352(%rsp), %rdx                 # 8-byte Reload
	vpinsrb	$14, (%r15,%rdx), %xmm0, %xmm0
	vpextrd	$1, %xmm1, %edx
	vpinsrb	$15, (%r15,%rsi), %xmm0, %xmm0
	vpextrd	$2, %xmm1, %esi
	movzbl	(%r15,%rax), %eax
	vmovd	%eax, %xmm2
	vpextrd	$3, %xmm1, %eax
	movq	640(%rsp), %r13                 # 8-byte Reload
	vpinsrb	$1, (%r15,%r13), %xmm2, %xmm1
	movq	608(%rsp), %rdi                 # 8-byte Reload
	vpinsrb	$2, (%r15,%rdi), %xmm1, %xmm1
	movq	448(%rsp), %rdi                 # 8-byte Reload
	vpinsrb	$3, (%r15,%rdi), %xmm1, %xmm1
	vpinsrb	$4, (%r15,%rbx), %xmm1, %xmm1
	movq	576(%rsp), %rdi                 # 8-byte Reload
	vpinsrb	$5, (%r15,%rdi), %xmm1, %xmm1
	vpinsrb	$6, (%r15,%r11), %xmm1, %xmm1
	vpinsrb	$7, (%r15,%r12), %xmm1, %xmm1
	vpinsrb	$8, (%r15,%r10), %xmm1, %xmm1
	vpinsrb	$9, (%r15,%r8), %xmm1, %xmm1
	vpinsrb	$10, (%r15,%r9), %xmm1, %xmm1
	vpinsrb	$11, (%r15,%rbp), %xmm1, %xmm1
	vpinsrb	$12, (%r15,%rcx), %xmm1, %xmm1
	vpinsrb	$13, (%r15,%rdx), %xmm1, %xmm1
	vpinsrb	$14, (%r15,%rsi), %xmm1, %xmm1
	vpinsrb	$15, (%r15,%rax), %xmm1, %xmm1
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	384(%rsp), %rcx                 # 8-byte Reload
	vmovdqu	%xmm1, 16(%rax,%rcx,2)
	vmovdqu	%xmm0, (%rax,%rcx,2)
	vpminsw	%ymm4, %ymm11, %ymm0
	vpminsw	%ymm4, %ymm10, %ymm1
	vpmaxsw	%ymm7, %ymm0, %ymm2
	vpmaxsw	%ymm7, %ymm1, %ymm0
	vextracti128	$1, %ymm2, %xmm1
	vpmovzxwd	%xmm1, %ymm1            # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vpmovzxwd	%xmm2, %ymm2            # ymm2 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vmovd	%xmm2, %r11d
	vpextrd	$1, %xmm2, %r8d
	vpextrd	$2, %xmm2, %r9d
	vpextrd	$3, %xmm2, %r12d
	vextracti128	$1, %ymm2, %xmm2
	vmovd	%xmm2, %ebx
	vpextrd	$1, %xmm2, %r10d
	vpextrd	$2, %xmm2, %edx
	vpextrd	$3, %xmm2, %esi
	vpextrd	$1, %xmm1, %ecx
	vpextrd	$2, %xmm1, %ebp
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	vmovd	%xmm1, %ebp
	vpextrd	$3, %xmm1, %edi
	movq	%rdi, 128(%rsp)                 # 8-byte Spill
	vextracti128	$1, %ymm1, %xmm1
	vpextrd	$1, %xmm1, %edi
	movq	%rdi, 192(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm1, %edi
	movq	%rdi, 224(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm1, %edi
	movq	%rdi, 352(%rsp)                 # 8-byte Spill
	movzbl	(%r15,%r11), %edi
	vmovd	%edi, %xmm2
	vmovd	%xmm1, %edi
	vextracti128	$1, %ymm0, %xmm1
	vpmovzxwd	%xmm1, %ymm1            # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vpmovzxwd	%xmm0, %ymm0            # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpinsrb	$1, (%r15,%r8), %xmm2, %xmm2
	vpextrd	$1, %xmm0, %eax
	movq	%rax, 640(%rsp)                 # 8-byte Spill
	vpinsrb	$2, (%r15,%r9), %xmm2, %xmm2
	vpextrd	$2, %xmm0, %eax
	movq	%rax, 608(%rsp)                 # 8-byte Spill
	vpinsrb	$3, (%r15,%r12), %xmm2, %xmm2
	vpinsrb	$4, (%r15,%rbx), %xmm2, %xmm2
	vmovd	%xmm0, %eax
	vpextrd	$3, %xmm0, %r12d
	vextracti128	$1, %ymm0, %xmm0
	vpinsrb	$5, (%r15,%r10), %xmm2, %xmm2
	vpextrd	$1, %xmm0, %r13d
	vpinsrb	$6, (%r15,%rdx), %xmm2, %xmm2
	vpextrd	$2, %xmm0, %edx
	movq	%rdx, 448(%rsp)                 # 8-byte Spill
	vpinsrb	$7, (%r15,%rsi), %xmm2, %xmm2
	vpextrd	$3, %xmm0, %edx
	movq	%rdx, 576(%rsp)                 # 8-byte Spill
	vpinsrb	$8, (%r15,%rbp), %xmm2, %xmm2
	vpinsrb	$9, (%r15,%rcx), %xmm2, %xmm2
	vmovd	%xmm0, %ebp
	vmovd	%xmm1, %r8d
	movq	32(%rsp), %rcx                  # 8-byte Reload
	vpinsrb	$10, (%r15,%rcx), %xmm2, %xmm0
	vpextrd	$1, %xmm1, %r9d
	movq	128(%rsp), %rcx                 # 8-byte Reload
	vpinsrb	$11, (%r15,%rcx), %xmm0, %xmm0
	vpextrd	$2, %xmm1, %r10d
	vpinsrb	$12, (%r15,%rdi), %xmm0, %xmm0
	vpextrd	$3, %xmm1, %edi
	movq	192(%rsp), %rcx                 # 8-byte Reload
	vpinsrb	$13, (%r15,%rcx), %xmm0, %xmm0
	vextracti128	$1, %ymm1, %xmm1
	vmovd	%xmm1, %ecx
	movq	224(%rsp), %rdx                 # 8-byte Reload
	vpinsrb	$14, (%r15,%rdx), %xmm0, %xmm0
	vpextrd	$1, %xmm1, %edx
	movq	352(%rsp), %rsi                 # 8-byte Reload
	vpinsrb	$15, (%r15,%rsi), %xmm0, %xmm0
	vpextrd	$2, %xmm1, %esi
	movzbl	(%r15,%rax), %eax
	vmovd	%eax, %xmm2
	vpextrd	$3, %xmm1, %eax
	movq	640(%rsp), %r11                 # 8-byte Reload
	vpinsrb	$1, (%r15,%r11), %xmm2, %xmm1
	movq	608(%rsp), %rbx                 # 8-byte Reload
	vpinsrb	$2, (%r15,%rbx), %xmm1, %xmm1
	vpinsrb	$3, (%r15,%r12), %xmm1, %xmm1
	vpinsrb	$4, (%r15,%rbp), %xmm1, %xmm1
	vpinsrb	$5, (%r15,%r13), %xmm1, %xmm1
	movq	448(%rsp), %rbp                 # 8-byte Reload
	vpinsrb	$6, (%r15,%rbp), %xmm1, %xmm1
	movq	576(%rsp), %rbp                 # 8-byte Reload
	vpinsrb	$7, (%r15,%rbp), %xmm1, %xmm1
	vpinsrb	$8, (%r15,%r8), %xmm1, %xmm1
	vpinsrb	$9, (%r15,%r9), %xmm1, %xmm1
	vpinsrb	$10, (%r15,%r10), %xmm1, %xmm1
	vpinsrb	$11, (%r15,%rdi), %xmm1, %xmm1
	vpinsrb	$12, (%r15,%rcx), %xmm1, %xmm1
	vpinsrb	$13, (%r15,%rdx), %xmm1, %xmm1
	vpinsrb	$14, (%r15,%rsi), %xmm1, %xmm1
	vpinsrb	$15, (%r15,%rax), %xmm1, %xmm1
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	384(%rsp), %rcx                 # 8-byte Reload
	vmovdqu	%xmm1, 48(%rax,%rcx,2)
	vmovdqu	%xmm0, 32(%rax,%rcx,2)
	vpminsw	%ymm4, %ymm3, %ymm0
	vpminsw	%ymm4, %ymm6, %ymm1
	vpmaxsw	%ymm7, %ymm0, %ymm2
	vpmaxsw	%ymm7, %ymm1, %ymm0
	vextracti128	$1, %ymm2, %xmm1
	vpmovzxwd	%xmm1, %ymm1            # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vpmovzxwd	%xmm2, %ymm2            # ymm2 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vmovd	%xmm2, %r11d
	vpextrd	$1, %xmm2, %r8d
	vpextrd	$2, %xmm2, %r9d
	vpextrd	$3, %xmm2, %r10d
	vextracti128	$1, %ymm2, %xmm2
	vmovd	%xmm2, %eax
	vpextrd	$1, %xmm2, %r12d
	vpextrd	$2, %xmm2, %edx
	vpextrd	$3, %xmm2, %ecx
	vpextrd	$1, %xmm1, %ebp
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	vpextrd	$2, %xmm1, %ebp
	movq	%rbp, 128(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm1, %ebp
	movq	%rbp, 192(%rsp)                 # 8-byte Spill
	vmovd	%xmm1, %ebx
	vextracti128	$1, %ymm1, %xmm1
	vpextrd	$1, %xmm1, %ebp
	movq	%rbp, 224(%rsp)                 # 8-byte Spill
	vmovd	%xmm1, %ebp
	vpextrd	$2, %xmm1, %edi
	movq	%rdi, 352(%rsp)                 # 8-byte Spill
	movzbl	(%r15,%r11), %edi
	vmovd	%edi, %xmm2
	vpextrd	$3, %xmm1, %esi
	vextracti128	$1, %ymm0, %xmm1
	vpmovzxwd	%xmm1, %ymm1            # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vpmovzxwd	%xmm0, %ymm0            # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpinsrb	$1, (%r15,%r8), %xmm2, %xmm2
	vpextrd	$1, %xmm0, %edi
	movq	%rdi, 640(%rsp)                 # 8-byte Spill
	vpinsrb	$2, (%r15,%r9), %xmm2, %xmm2
	vpextrd	$2, %xmm0, %edi
	movq	%rdi, 608(%rsp)                 # 8-byte Spill
	vpinsrb	$3, (%r15,%r10), %xmm2, %xmm2
	vpextrd	$3, %xmm0, %edi
	movq	%rdi, 448(%rsp)                 # 8-byte Spill
	vpinsrb	$4, (%r15,%rax), %xmm2, %xmm2
	vmovd	%xmm0, %eax
	vextracti128	$1, %ymm0, %xmm0
	vpinsrb	$5, (%r15,%r12), %xmm2, %xmm2
	vpextrd	$1, %xmm0, %edi
	movq	%rdi, 576(%rsp)                 # 8-byte Spill
	vpinsrb	$6, (%r15,%rdx), %xmm2, %xmm2
	vpextrd	$2, %xmm0, %r11d
	vpinsrb	$7, (%r15,%rcx), %xmm2, %xmm2
	vpextrd	$3, %xmm0, %r12d
	vpinsrb	$8, (%r15,%rbx), %xmm2, %xmm2
	vmovd	%xmm0, %ebx
	movq	32(%rsp), %rcx                  # 8-byte Reload
	vpinsrb	$9, (%r15,%rcx), %xmm2, %xmm0
	vmovd	%xmm1, %r10d
	movq	128(%rsp), %rcx                 # 8-byte Reload
	vpinsrb	$10, (%r15,%rcx), %xmm0, %xmm0
	vpextrd	$1, %xmm1, %r8d
	movq	192(%rsp), %rcx                 # 8-byte Reload
	vpinsrb	$11, (%r15,%rcx), %xmm0, %xmm0
	vpextrd	$2, %xmm1, %r9d
	vpinsrb	$12, (%r15,%rbp), %xmm0, %xmm0
	vpextrd	$3, %xmm1, %ebp
	vextracti128	$1, %ymm1, %xmm1
	movq	224(%rsp), %rcx                 # 8-byte Reload
	vpinsrb	$13, (%r15,%rcx), %xmm0, %xmm0
	vmovd	%xmm1, %ecx
	movq	352(%rsp), %rdx                 # 8-byte Reload
	vpinsrb	$14, (%r15,%rdx), %xmm0, %xmm0
	vpextrd	$1, %xmm1, %edx
	vpinsrb	$15, (%r15,%rsi), %xmm0, %xmm0
	vpextrd	$2, %xmm1, %esi
	movzbl	(%r15,%rax), %eax
	vmovd	%eax, %xmm2
	vpextrd	$3, %xmm1, %eax
	movq	640(%rsp), %r13                 # 8-byte Reload
	vpinsrb	$1, (%r15,%r13), %xmm2, %xmm1
	movq	608(%rsp), %rdi                 # 8-byte Reload
	vpinsrb	$2, (%r15,%rdi), %xmm1, %xmm1
	movq	448(%rsp), %rdi                 # 8-byte Reload
	vpinsrb	$3, (%r15,%rdi), %xmm1, %xmm1
	vpinsrb	$4, (%r15,%rbx), %xmm1, %xmm1
	movq	576(%rsp), %rdi                 # 8-byte Reload
	vpinsrb	$5, (%r15,%rdi), %xmm1, %xmm1
	movq	1360(%rsp), %r13                # 8-byte Reload
	vpinsrb	$6, (%r15,%r11), %xmm1, %xmm1
	vpinsrb	$7, (%r15,%r12), %xmm1, %xmm1
	vpinsrb	$8, (%r15,%r10), %xmm1, %xmm1
	vpinsrb	$9, (%r15,%r8), %xmm1, %xmm1
	movq	1464(%rsp), %r8                 # 8-byte Reload
	vpinsrb	$10, (%r15,%r9), %xmm1, %xmm1
	movq	104(%rsp), %rbx                 # 8-byte Reload
	vpinsrb	$11, (%r15,%rbp), %xmm1, %xmm1
	vpinsrb	$12, (%r15,%rcx), %xmm1, %xmm1
	vpinsrb	$13, (%r15,%rdx), %xmm1, %xmm1
	vpinsrb	$14, (%r15,%rsi), %xmm1, %xmm1
	vpinsrb	$15, (%r15,%rax), %xmm1, %xmm1
	movq	384(%rsp), %rcx                 # 8-byte Reload
	vmovdqu	%xmm1, 48(%rbx,%rcx,2)
	vmovdqu	%xmm0, 32(%rbx,%rcx,2)
	addq	$16, %rcx
	movq	%rcx, %rax
	cmpq	%rcx, %r13
	jne	.LBB213_83
.LBB213_84:                             # %"end for f28.s0.v0.v0"
                                        #   in Loop: Header=BB213_12 Depth=1
	movq	432(%rsp), %r11                 # 8-byte Reload
	cmpq	$4, %r11
	jb	.LBB213_91
# %bb.85:                               # %"for processed.s0.v1.v5.preheader"
                                        #   in Loop: Header=BB213_12 Depth=1
	leaq	(%r11,%r11), %rax
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB213_86:                             # %"for processed.s0.v1.v5"
                                        #   Parent Loop BB213_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB213_88 Depth 3
	movl	%eax, 192(%rsp)                 # 4-byte Spill
	cmpl	$0, 536(%rsp)                   # 4-byte Folded Reload
	vpcmpeqd	%ymm11, %ymm11, %ymm11
	jle	.LBB213_89
# %bb.87:                               # %"for processed.s0.v0.v0.preheader"
                                        #   in Loop: Header=BB213_86 Depth=2
	movl	%esi, %eax
	orl	760(%rsp), %eax                 # 4-byte Folded Reload
	movslq	%eax, %rdi
	addq	$-8, %rdi
	imulq	1352(%rsp), %rdi                # 8-byte Folded Reload
	orl	224(%rsp), %esi                 # 4-byte Folded Reload
	addl	$-7, %esi
	movl	%esi, %eax
	imull	1328(%rsp), %eax                # 4-byte Folded Reload
	movq	1280(%rsp), %rcx                # 8-byte Reload
	addl	%edi, %ecx
	movq	752(%rsp), %rdx                 # 8-byte Reload
	leal	(%rdi,%rdx), %edx
	movq	1336(%rsp), %rbp                # 8-byte Reload
	movzbl	(%rbp), %ebp
	vmovd	%ebp, %xmm0
	vpbroadcastw	%xmm0, %ymm0
	vmovdqu	%ymm0, 384(%rsp)                # 32-byte Spill
	movslq	%edx, %rbp
	movslq	%ecx, %rcx
	movslq	%eax, %rbx
	movq	1344(%rsp), %rax                # 8-byte Reload
	addq	%rax, %rcx
	addq	%rax, %rbp
	addq	%rax, %rdi
	imull	572(%rsp), %esi                 # 4-byte Folded Reload
	movq	1312(%rsp), %rax                # 8-byte Reload
	addl	%esi, %eax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	1272(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%rsi), %r8d
	movq	1320(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%rsi), %r10d
	movq	1296(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%rsi), %r11d
	movq	1264(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%rsi), %r12d
	addl	1304(%rsp), %esi                # 4-byte Folded Reload
	movq	1288(%rsp), %rax                # 8-byte Reload
	leaq	(%rax,%rbx), %r9
	movq	744(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rbx), %r13
	addq	%r14, %rbx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB213_88:                             # %"for processed.s0.v0.v0"
                                        #   Parent Loop BB213_12 Depth=1
                                        #     Parent Loop BB213_86 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vpmovzxbw	1(%rbx,%rax), %ymm2     # ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	17(%rbx,%rax), %ymm3    # ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	-2(%r13,%rax), %ymm1    # ymm1 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	14(%r13,%rax), %ymm4    # ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	-2(%r9,%rax), %ymm6     # ymm6 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpaddw	%ymm6, %ymm1, %ymm1
	vpmovzxbw	14(%r9,%rax), %ymm6     # ymm6 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpaddw	%ymm6, %ymm4, %ymm4
	vpsubw	%ymm11, %ymm1, %ymm1
	vpsubw	%ymm11, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpsrlw	$1, %ymm1, %ymm6
	vpmovzxbw	(%rbx,%rax), %ymm7      # ymm7 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	16(%rbx,%rax), %ymm8    # ymm8 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpbroadcastw	.LCPI213_6(%rip), %ymm1 # ymm1 = [255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255]
	vpand	%ymm1, %ymm6, %ymm6
	vpaddw	%ymm6, %ymm7, %ymm6
	vpand	%ymm1, %ymm4, %ymm4
	vpaddw	%ymm4, %ymm8, %ymm4
	vpsubw	%ymm11, %ymm6, %ymm6
	vpsubw	%ymm11, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpmovzxbw	(%r13,%rax), %ymm7      # ymm7 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	16(%r13,%rax), %ymm8    # ymm8 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	(%r9,%rax), %ymm9       # ymm9 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpsrlw	$1, %ymm6, %ymm6
	vpaddw	%ymm7, %ymm9, %ymm7
	vpmovzxbw	16(%r9,%rax), %ymm9     # ymm9 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpaddw	%ymm9, %ymm8, %ymm8
	vpsubw	%ymm11, %ymm7, %ymm7
	vpsubw	%ymm11, %ymm8, %ymm8
	vpsrlw	$1, %ymm8, %ymm8
	vpmovzxbw	2(%rbx,%rax), %ymm9     # ymm9 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	18(%rbx,%rax), %ymm10   # ymm10 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpsrlw	$1, %ymm7, %ymm7
	vpand	%ymm1, %ymm7, %ymm7
	vpaddw	%ymm7, %ymm9, %ymm7
	vpand	%ymm1, %ymm8, %ymm8
	vpaddw	%ymm8, %ymm10, %ymm8
	vpsubw	%ymm11, %ymm7, %ymm7
	vpsubw	%ymm11, %ymm8, %ymm8
	vpsrlw	$1, %ymm8, %ymm8
	vpsrlw	$1, %ymm7, %ymm7
	vpand	%ymm1, %ymm6, %ymm6
	vpand	%ymm1, %ymm4, %ymm4
	vpand	%ymm1, %ymm7, %ymm7
	vpaddw	%ymm7, %ymm6, %ymm6
	vpand	%ymm1, %ymm8, %ymm7
	vpaddw	%ymm7, %ymm4, %ymm4
	vpsubw	%ymm11, %ymm6, %ymm6
	vpsubw	%ymm11, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpmovzxbw	-1(%r13,%rax), %ymm7    # ymm7 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	15(%r13,%rax), %ymm8    # ymm8 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	-1(%r9,%rax), %ymm9     # ymm9 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpsrlw	$1, %ymm6, %ymm6
	vpaddw	%ymm7, %ymm9, %ymm7
	vpmovzxbw	15(%r9,%rax), %ymm9     # ymm9 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpaddw	%ymm9, %ymm8, %ymm8
	vpsubw	%ymm11, %ymm7, %ymm7
	vpsubw	%ymm11, %ymm8, %ymm8
	vpsrlw	$1, %ymm8, %ymm8
	vpsrlw	$1, %ymm7, %ymm7
	vpand	%ymm1, %ymm7, %ymm7
	vpand	%ymm1, %ymm8, %ymm8
	vpaddw	%ymm3, %ymm8, %ymm8
	vpaddw	%ymm7, %ymm2, %ymm7
	vpsubw	%ymm11, %ymm7, %ymm7
	vpsubw	%ymm11, %ymm8, %ymm8
	vpsrlw	$1, %ymm8, %ymm8
	vpsrlw	$1, %ymm7, %ymm7
	vpand	%ymm1, %ymm6, %ymm6
	vpand	%ymm1, %ymm4, %ymm4
	vpand	%ymm1, %ymm7, %ymm7
	vpaddw	%ymm7, %ymm6, %ymm6
	vpand	%ymm1, %ymm8, %ymm7
	vpaddw	%ymm7, %ymm4, %ymm4
	vpsubw	%ymm11, %ymm6, %ymm6
	vpsubw	%ymm11, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpsrlw	$1, %ymm6, %ymm6
	vpand	%ymm1, %ymm6, %ymm6
	vpand	%ymm1, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm3, %ymm4
	vpsubw	%ymm6, %ymm2, %ymm6
	vmovdqu	384(%rsp), %ymm5                # 32-byte Reload
	vpmullw	%ymm5, %ymm6, %ymm6
	vpmullw	%ymm5, %ymm4, %ymm4
	vpsraw	$5, %ymm4, %ymm4
	vpsraw	$5, %ymm6, %ymm6
	vpaddw	%ymm2, %ymm6, %ymm2
	vpaddw	%ymm3, %ymm4, %ymm3
	vinserti128	$1, %xmm3, %ymm2, %ymm4
	vperm2i128	$49, %ymm3, %ymm2, %ymm2 # ymm2 = ymm2[2,3],ymm3[2,3]
	vpackuswb	%ymm2, %ymm4, %ymm2
	vmovdqu	%ymm2, (%rdi,%rax)
	leal	(%rsi,%rax), %edx
	movslq	%edx, %rdx
	vpmovzxbw	1089(%r14,%rdx), %ymm2  # ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	1105(%r14,%rdx), %ymm3  # ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	1088(%r14,%rdx), %ymm4  # ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	1104(%r14,%rdx), %ymm6  # ymm6 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	1090(%r14,%rdx), %ymm7  # ymm7 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	1106(%r14,%rdx), %ymm8  # ymm8 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	leal	(%r12,%rax), %edx
	movslq	%edx, %rdx
	vpmovzxbw	1056(%r14,%rdx), %ymm9  # ymm9 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	1072(%r14,%rdx), %ymm10 # ymm10 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	1058(%r14,%rdx), %ymm0  # ymm0 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	1074(%r14,%rdx), %ymm12 # ymm12 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	1057(%r14,%rdx), %ymm13 # ymm13 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	1073(%r14,%rdx), %ymm14 # ymm14 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	leal	(%r11,%rax), %edx
	movslq	%edx, %rdx
	vpmovzxbw	1120(%r14,%rdx), %ymm15 # ymm15 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpaddw	%ymm15, %ymm9, %ymm9
	vpmovzxbw	1136(%r14,%rdx), %ymm15 # ymm15 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpaddw	%ymm15, %ymm10, %ymm10
	vpsubw	%ymm11, %ymm9, %ymm9
	vpsubw	%ymm11, %ymm10, %ymm10
	vpsrlw	$1, %ymm10, %ymm10
	vpsrlw	$1, %ymm9, %ymm9
	vpand	%ymm1, %ymm9, %ymm9
	vpaddw	%ymm4, %ymm9, %ymm4
	vpand	%ymm1, %ymm10, %ymm9
	vpaddw	%ymm6, %ymm9, %ymm6
	vpsubw	%ymm11, %ymm4, %ymm4
	vpsubw	%ymm11, %ymm6, %ymm6
	vpsrlw	$1, %ymm6, %ymm6
	vpmovzxbw	1122(%r14,%rdx), %ymm9  # ymm9 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpsrlw	$1, %ymm4, %ymm4
	vpaddw	%ymm0, %ymm9, %ymm9
	vpmovzxbw	1138(%r14,%rdx), %ymm10 # ymm10 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpaddw	%ymm10, %ymm12, %ymm10
	vpsubw	%ymm11, %ymm9, %ymm9
	vpsubw	%ymm11, %ymm10, %ymm10
	vpsrlw	$1, %ymm10, %ymm10
	vpsrlw	$1, %ymm9, %ymm9
	vpand	%ymm1, %ymm9, %ymm9
	vpaddw	%ymm7, %ymm9, %ymm7
	vpand	%ymm1, %ymm10, %ymm9
	vpaddw	%ymm9, %ymm8, %ymm8
	vpsubw	%ymm11, %ymm7, %ymm7
	vpsubw	%ymm11, %ymm8, %ymm8
	vpsrlw	$1, %ymm8, %ymm8
	vpsrlw	$1, %ymm7, %ymm7
	vpand	%ymm1, %ymm4, %ymm4
	vpand	%ymm1, %ymm6, %ymm6
	vpand	%ymm1, %ymm7, %ymm7
	vpaddw	%ymm7, %ymm4, %ymm4
	vpand	%ymm1, %ymm8, %ymm7
	vpaddw	%ymm7, %ymm6, %ymm6
	vpsubw	%ymm11, %ymm4, %ymm4
	vpsubw	%ymm11, %ymm6, %ymm6
	vpsrlw	$1, %ymm6, %ymm6
	vpmovzxbw	1121(%r14,%rdx), %ymm7  # ymm7 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpsrlw	$1, %ymm4, %ymm4
	vpaddw	%ymm7, %ymm13, %ymm7
	vpmovzxbw	1137(%r14,%rdx), %ymm8  # ymm8 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpaddw	%ymm8, %ymm14, %ymm8
	vpsubw	%ymm11, %ymm7, %ymm7
	vpsubw	%ymm11, %ymm8, %ymm8
	vpsrlw	$1, %ymm8, %ymm8
	vpsrlw	$1, %ymm7, %ymm7
	vpand	%ymm1, %ymm7, %ymm7
	vpand	%ymm1, %ymm8, %ymm8
	vpaddw	%ymm3, %ymm8, %ymm8
	vpaddw	%ymm7, %ymm2, %ymm7
	vpsubw	%ymm11, %ymm7, %ymm7
	vpsubw	%ymm11, %ymm8, %ymm8
	vpsrlw	$1, %ymm8, %ymm8
	vpsrlw	$1, %ymm7, %ymm7
	vpand	%ymm1, %ymm4, %ymm4
	vpand	%ymm1, %ymm6, %ymm6
	vpand	%ymm1, %ymm7, %ymm7
	vpaddw	%ymm7, %ymm4, %ymm4
	vpand	%ymm1, %ymm8, %ymm7
	vpaddw	%ymm7, %ymm6, %ymm6
	vpsubw	%ymm11, %ymm4, %ymm4
	vpsubw	%ymm11, %ymm6, %ymm6
	vpsrlw	$1, %ymm6, %ymm6
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm1, %ymm4, %ymm4
	vpand	%ymm1, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm3, %ymm6
	vpsubw	%ymm4, %ymm2, %ymm4
	vpmullw	%ymm5, %ymm4, %ymm4
	vpmullw	%ymm5, %ymm6, %ymm6
	vpsraw	$5, %ymm6, %ymm6
	vpsraw	$5, %ymm4, %ymm4
	vpaddw	%ymm2, %ymm4, %ymm2
	vpaddw	%ymm3, %ymm6, %ymm3
	vinserti128	$1, %xmm3, %ymm2, %ymm4
	vperm2i128	$49, %ymm3, %ymm2, %ymm2 # ymm2 = ymm2[2,3],ymm3[2,3]
	vpackuswb	%ymm2, %ymm4, %ymm2
	vmovdqu	%ymm2, (%rbp,%rax)
	leal	(%r10,%rax), %edx
	movslq	%edx, %rdx
	vpmovzxbw	2177(%r14,%rdx), %ymm0  # ymm0 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vmovdqu	%ymm0, 32(%rsp)                 # 32-byte Spill
	vpmovzxbw	2193(%r14,%rdx), %ymm3  # ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	2176(%r14,%rdx), %ymm6  # ymm6 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	2192(%r14,%rdx), %ymm4  # ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	2178(%r14,%rdx), %ymm8  # ymm8 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	2194(%r14,%rdx), %ymm7  # ymm7 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	leal	(%r8,%rax), %edx
	movslq	%edx, %rdx
	vpmovzxbw	2144(%r14,%rdx), %ymm9  # ymm9 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	2160(%r14,%rdx), %ymm10 # ymm10 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	2146(%r14,%rdx), %ymm2  # ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	2162(%r14,%rdx), %ymm12 # ymm12 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	2145(%r14,%rdx), %ymm13 # ymm13 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	2161(%r14,%rdx), %ymm14 # ymm14 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	movq	128(%rsp), %rdx                 # 8-byte Reload
	leal	(%rdx,%rax), %edx
	movslq	%edx, %rdx
	vpmovzxbw	2208(%r14,%rdx), %ymm15 # ymm15 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpaddw	%ymm15, %ymm9, %ymm9
	vpmovzxbw	2224(%r14,%rdx), %ymm15 # ymm15 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpaddw	%ymm15, %ymm10, %ymm10
	vpsubw	%ymm11, %ymm9, %ymm9
	vpsrlw	$1, %ymm9, %ymm9
	vpand	%ymm1, %ymm9, %ymm9
	vpmovzxbw	2210(%r14,%rdx), %ymm15 # ymm15 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	2226(%r14,%rdx), %ymm5  # ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpmovzxbw	2209(%r14,%rdx), %ymm0  # ymm0 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpaddw	%ymm6, %ymm9, %ymm6
	vpmovzxbw	2225(%r14,%rdx), %ymm9  # ymm9 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero,mem[4],zero,mem[5],zero,mem[6],zero,mem[7],zero,mem[8],zero,mem[9],zero,mem[10],zero,mem[11],zero,mem[12],zero,mem[13],zero,mem[14],zero,mem[15],zero
	vpsubw	%ymm11, %ymm10, %ymm10
	vpsrlw	$1, %ymm10, %ymm10
	vpand	%ymm1, %ymm10, %ymm10
	vpaddw	%ymm4, %ymm10, %ymm4
	vpaddw	%ymm2, %ymm15, %ymm10
	vpaddw	%ymm5, %ymm12, %ymm5
	vpsubw	%ymm11, %ymm10, %ymm10
	vpsrlw	$1, %ymm10, %ymm10
	vpand	%ymm1, %ymm10, %ymm10
	vpaddw	%ymm10, %ymm8, %ymm8
	vpsubw	%ymm11, %ymm5, %ymm5
	vpsrlw	$1, %ymm5, %ymm5
	vpand	%ymm1, %ymm5, %ymm5
	vpaddw	%ymm5, %ymm7, %ymm5
	vpsubw	%ymm11, %ymm6, %ymm6
	vpsrlw	$1, %ymm6, %ymm6
	vpsubw	%ymm11, %ymm8, %ymm7
	vpsrlw	$1, %ymm7, %ymm7
	vpand	%ymm1, %ymm6, %ymm6
	vpand	%ymm1, %ymm7, %ymm7
	vpaddw	%ymm7, %ymm6, %ymm6
	vpsubw	%ymm11, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpsubw	%ymm11, %ymm5, %ymm5
	vpsrlw	$1, %ymm5, %ymm5
	vpand	%ymm1, %ymm4, %ymm4
	vpand	%ymm1, %ymm5, %ymm5
	vpaddw	%ymm5, %ymm4, %ymm4
	vpsubw	%ymm11, %ymm6, %ymm5
	vpsubw	%ymm11, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpsrlw	$1, %ymm5, %ymm5
	vpaddw	%ymm0, %ymm13, %ymm0
	vpaddw	%ymm9, %ymm14, %ymm6
	vpsubw	%ymm11, %ymm0, %ymm0
	vpsubw	%ymm11, %ymm6, %ymm6
	vpsrlw	$1, %ymm6, %ymm6
	vpsrlw	$1, %ymm0, %ymm0
	vpand	%ymm1, %ymm0, %ymm0
	vpand	%ymm1, %ymm6, %ymm6
	vpaddw	%ymm6, %ymm3, %ymm6
	vmovdqu	32(%rsp), %ymm2                 # 32-byte Reload
	vpaddw	%ymm0, %ymm2, %ymm0
	vpsubw	%ymm11, %ymm0, %ymm0
	vpsubw	%ymm11, %ymm6, %ymm6
	vpsrlw	$1, %ymm6, %ymm6
	vpsrlw	$1, %ymm0, %ymm0
	vpand	%ymm1, %ymm5, %ymm5
	vpand	%ymm1, %ymm4, %ymm4
	vpand	%ymm1, %ymm0, %ymm0
	vpaddw	%ymm0, %ymm5, %ymm0
	vpand	%ymm1, %ymm6, %ymm5
	vpaddw	%ymm5, %ymm4, %ymm4
	vpsubw	%ymm11, %ymm0, %ymm0
	vpsubw	%ymm11, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpsrlw	$1, %ymm0, %ymm0
	vpand	%ymm1, %ymm0, %ymm0
	vpand	%ymm1, %ymm4, %ymm1
	vpsubw	%ymm1, %ymm3, %ymm1
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqa	%ymm2, %ymm4
	vmovdqu	384(%rsp), %ymm2                # 32-byte Reload
	vpmullw	%ymm2, %ymm0, %ymm0
	vpmullw	%ymm2, %ymm1, %ymm1
	vpsraw	$5, %ymm1, %ymm1
	vpsraw	$5, %ymm0, %ymm0
	vpaddw	%ymm4, %ymm0, %ymm0
	vpaddw	%ymm3, %ymm1, %ymm1
	vinserti128	$1, %xmm1, %ymm0, %ymm2
	vperm2i128	$49, %ymm1, %ymm0, %ymm0 # ymm0 = ymm0[2,3],ymm1[2,3]
	vpackuswb	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpq	%rax, 440(%rsp)                 # 8-byte Folded Reload
	jne	.LBB213_88
.LBB213_89:                             # %"end for processed.s0.v0.v0"
                                        #   in Loop: Header=BB213_86 Depth=2
	movl	$1, %esi
	testb	$1, 192(%rsp)                   # 1-byte Folded Reload
	movb	$1, %al
	je	.LBB213_86
# %bb.90:                               #   in Loop: Header=BB213_12 Depth=1
	movq	280(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 960(%rsp)                 # 4-byte Spill
	movq	296(%rsp), %r8                  # 8-byte Reload
	movq	184(%rsp), %rax                 # 8-byte Reload
	movq	288(%rsp), %rbp                 # 8-byte Reload
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	96(%rsp), %r10                  # 8-byte Reload
	movq	88(%rsp), %r13                  # 8-byte Reload
	movq	272(%rsp), %r9                  # 8-byte Reload
	movq	424(%rsp), %r12                 # 8-byte Reload
	movq	176(%rsp), %rdi                 # 8-byte Reload
	vpxor	%xmm5, %xmm5, %xmm5
	vmovdqa	.LCPI213_0(%rip), %ymm7         # ymm7 = <0,1,4,5,u,u,u,u,8,9,12,13,u,u,u,u,16,17,20,21,u,u,u,u,24,25,28,29,u,u,u,u>
	vmovdqa	.LCPI213_1(%rip), %ymm8         # ymm8 = <u,u,u,u,u,u,u,u,2,3,6,7,10,11,14,15,u,u,u,u,u,u,u,u,18,19,22,23,26,27,30,31>
	vmovdqa	.LCPI213_2(%rip), %ymm9         # ymm9 = <2,3,6,7,10,11,14,15,u,u,u,u,u,u,u,u,18,19,22,23,26,27,30,31,u,u,u,u,u,u,u,u>
	movb	6(%rsp), %bl                    # 1-byte Reload
	movq	432(%rsp), %r11                 # 8-byte Reload
	jmp	.LBB213_11
.LBB213_91:                             #   in Loop: Header=BB213_12 Depth=1
	movq	280(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 960(%rsp)                 # 4-byte Spill
	movq	296(%rsp), %r8                  # 8-byte Reload
	movq	184(%rsp), %rax                 # 8-byte Reload
	movq	288(%rsp), %rbp                 # 8-byte Reload
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	96(%rsp), %r10                  # 8-byte Reload
	movq	88(%rsp), %r13                  # 8-byte Reload
	movq	272(%rsp), %r9                  # 8-byte Reload
	movq	424(%rsp), %r12                 # 8-byte Reload
	movq	176(%rsp), %rdi                 # 8-byte Reload
	vmovdqa	.LCPI213_0(%rip), %ymm7         # ymm7 = <0,1,4,5,u,u,u,u,8,9,12,13,u,u,u,u,16,17,20,21,u,u,u,u,24,25,28,29,u,u,u,u>
	vmovdqa	.LCPI213_1(%rip), %ymm8         # ymm8 = <u,u,u,u,u,u,u,u,2,3,6,7,10,11,14,15,u,u,u,u,u,u,u,u,18,19,22,23,26,27,30,31>
	vmovdqa	.LCPI213_2(%rip), %ymm9         # ymm9 = <2,3,6,7,10,11,14,15,u,u,u,u,u,u,u,u,18,19,22,23,26,27,30,31,u,u,u,u,u,u,u,u>
	movb	6(%rsp), %bl                    # 1-byte Reload
	vpxor	%xmm5, %xmm5, %xmm5
	jmp	.LBB213_11
.LBB213_92:                             # %call_destructor.exit78
	movq	264(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	vzeroupper
	callq	halide_free@PLT
	movq	%rbx, %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	halide_free@PLT
	movq	%rbx, %rdi
	movq	72(%rsp), %rsi                  # 8-byte Reload
	callq	halide_free@PLT
	movq	%rbx, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	halide_free@PLT
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	halide_free@PLT
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
.LBB213_93:                             # %destructor_block.thread
	testl	%r15d, %r15d
	sete	%bl
	testb	%bl, %bl
	movq	264(%rsp), %rbp                 # 8-byte Reload
	jne	.LBB213_96
.LBB213_94:                             # %call_destructor.exit
	cmpq	$0, 8(%rsp)                     # 8-byte Folded Reload
	je	.LBB213_96
# %bb.95:
	movq	%rbp, %rdi
	movq	%rsi, %r12
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	%rcx, %r13
	callq	halide_free@PLT
	movq	%r13, %rcx
	movq	%r12, %rsi
.LBB213_96:                             # %call_destructor.exit70
	testq	%rcx, %rcx
	sete	%al
	orb	%bl, %al
	je	.LBB213_99
# %bb.97:                               # %call_destructor.exit71
	testq	%rsi, %rsi
	sete	%al
	orb	%bl, %al
	je	.LBB213_100
.LBB213_98:                             # %call_destructor.exit72
	testq	%r14, %r14
	sete	%al
	orb	%al, %bl
	je	.LBB213_101
	jmp	.LBB213_102
.LBB213_99:
	movq	%rbp, %rdi
	movq	%rsi, %r12
	movq	%rcx, %rsi
	callq	halide_free@PLT
	movq	%r12, %rsi
	testq	%rsi, %rsi
	sete	%al
	orb	%bl, %al
	jne	.LBB213_98
.LBB213_100:
	movq	%rbp, %rdi
	callq	halide_free@PLT
	testq	%r14, %r14
	sete	%al
	orb	%al, %bl
	jne	.LBB213_102
.LBB213_101:
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	halide_free@PLT
.LBB213_102:                            # %call_destructor.exit73
	movl	%r15d, %eax
	addq	$2280, %rsp                     # imm = 0x8E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB213_103:
	leaq	.Lstr.220(%rip), %rax
	jmp	.LBB213_105
.LBB213_104:
	leaq	.Lstr.221(%rip), %rax
.LBB213_105:                            # %destructor_block
	movq	%rax, 64(%rsp)                  # 8-byte Spill
.LBB213_106:                            # %destructor_block
	leaq	.Lstr.215(%rip), %rdx
	leaq	.Lstr.223(%rip), %rcx
	movq	264(%rsp), %rdi                 # 8-byte Reload
	movq	64(%rsp), %rsi                  # 8-byte Reload
	vzeroupper
	callq	halide_error_bad_fold@PLT
	testl	%eax, %eax
	je	.LBB213_108
# %bb.107:
	movl	%eax, %r15d
	movq	264(%rsp), %rdi                 # 8-byte Reload
	movq	%r14, %rsi
	callq	halide_free@PLT
	xorl	%ebx, %ebx
	movq	16(%rsp), %r14                  # 8-byte Reload
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	72(%rsp), %rcx                  # 8-byte Reload
	testb	%bl, %bl
	movq	264(%rsp), %rbp                 # 8-byte Reload
	je	.LBB213_94
	jmp	.LBB213_96
.LBB213_108:
	xorl	%r15d, %r15d
	jmp	.LBB213_102
.LBB213_109:                            # %"assert failed"
	leaq	.Lstr.218(%rip), %rsi
	movl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	halide_error_buffer_allocation_too_large@PLT
	jmp	.LBB213_111
.LBB213_110:                            # %"assert failed2"
	movq	%r14, %rdi
	callq	halide_error_out_of_memory@PLT
.LBB213_111:                            # %destructor_block.thread
	movl	%eax, %r15d
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	jmp	.LBB213_93
.LBB213_112:                            # %"assert failed4"
	leaq	.Lstr.219(%rip), %rsi
	movl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	movq	%r14, %rdi
	callq	halide_error_buffer_allocation_too_large@PLT
	jmp	.LBB213_114
.LBB213_113:                            # %"assert failed6"
	movq	%r14, %rdi
	callq	halide_error_out_of_memory@PLT
.LBB213_114:                            # %destructor_block.thread
	movl	%eax, %r15d
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movq	16(%rsp), %r14                  # 8-byte Reload
	jmp	.LBB213_93
.LBB213_115:                            # %"assert failed8"
	leaq	.Lstr.220(%rip), %rsi
	movl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	halide_error_buffer_allocation_too_large@PLT
	jmp	.LBB213_117
.LBB213_116:                            # %"assert failed10"
	movq	%r14, %rdi
	callq	halide_error_out_of_memory@PLT
.LBB213_117:                            # %destructor_block.thread
	movl	%eax, %r15d
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	xorl	%ecx, %ecx
	movq	16(%rsp), %r14                  # 8-byte Reload
	movq	24(%rsp), %rsi                  # 8-byte Reload
	jmp	.LBB213_93
.LBB213_118:                            # %"assert failed14"
	movq	%r14, %rdi
	callq	halide_error_out_of_memory@PLT
	movl	%eax, %r15d
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB213_122
.LBB213_119:                            # %"assert failed16"
	leaq	.Lstr.222(%rip), %rsi
	movl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	movq	%r14, %rdi
	callq	halide_error_buffer_allocation_too_large@PLT
	jmp	.LBB213_121
.LBB213_120:                            # %"assert failed18"
	movq	264(%rsp), %rdi                 # 8-byte Reload
	callq	halide_error_out_of_memory@PLT
.LBB213_121:                            # %destructor_block.thread
	movl	%eax, %r15d
.LBB213_122:                            # %destructor_block.thread
	movq	16(%rsp), %r14                  # 8-byte Reload
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	72(%rsp), %rcx                  # 8-byte Reload
	jmp	.LBB213_93
.Lfunc_end213:
	.size	camera_pipe.par_for.processed.s0.v1.v3.v4, .Lfunc_end213-camera_pipe.par_for.processed.s0.v1.v3.v4
                                        # -- End function
	.section	.text.camera_pipe_argv,"ax",@progbits
	.globl	camera_pipe_argv                # -- Begin function camera_pipe_argv
	.p2align	4, 0x90
	.type	camera_pipe_argv,@function
camera_pipe_argv:                       # @camera_pipe_argv
# %bb.0:                                # %entry
	movq	(%rdi), %r10
	movq	8(%rdi), %rsi
	movq	16(%rdi), %rdx
	movq	24(%rdi), %rcx
	vmovss	(%rcx), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movq	32(%rdi), %rcx
	vmovss	(%rcx), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	movq	40(%rdi), %rcx
	vmovss	(%rcx), %xmm2                   # xmm2 = mem[0],zero,zero,zero
	movq	48(%rdi), %rcx
	vmovss	(%rcx), %xmm3                   # xmm3 = mem[0],zero,zero,zero
	movq	56(%rdi), %rcx
	movl	(%rcx), %ecx
	movq	64(%rdi), %rax
	movl	(%rax), %r8d
	movq	72(%rdi), %r9
	movq	%r10, %rdi
	jmp	camera_pipe@PLT                 # TAILCALL
.Lfunc_end214:
	.size	camera_pipe_argv, .Lfunc_end214-camera_pipe_argv
                                        # -- End function
	.section	.text.camera_pipe_metadata,"ax",@progbits
	.globl	camera_pipe_metadata            # -- Begin function camera_pipe_metadata
	.p2align	4, 0x90
	.type	camera_pipe_metadata,@function
camera_pipe_metadata:                   # @camera_pipe_metadata
# %bb.0:                                # %entry
	leaq	.Lcamera_pipe_metadata_storage(%rip), %rax
	retq
.Lfunc_end215:
	.size	camera_pipe_metadata, .Lfunc_end215-camera_pipe_metadata
                                        # -- End function
	.type	_ZN6Halide7Runtime8Internal13custom_mallocE,@object # @_ZN6Halide7Runtime8Internal13custom_mallocE
	.data
	.weak	_ZN6Halide7Runtime8Internal13custom_mallocE
	.p2align	3
_ZN6Halide7Runtime8Internal13custom_mallocE:
	.quad	halide_default_malloc
	.size	_ZN6Halide7Runtime8Internal13custom_mallocE, 8

	.type	_ZN6Halide7Runtime8Internal11custom_freeE,@object # @_ZN6Halide7Runtime8Internal11custom_freeE
	.weak	_ZN6Halide7Runtime8Internal11custom_freeE
	.p2align	3
_ZN6Halide7Runtime8Internal11custom_freeE:
	.quad	halide_default_free
	.size	_ZN6Halide7Runtime8Internal11custom_freeE, 8

	.type	_ZN6Halide7Runtime8Internal13error_handlerE,@object # @_ZN6Halide7Runtime8Internal13error_handlerE
	.weak	_ZN6Halide7Runtime8Internal13error_handlerE
	.p2align	3
_ZN6Halide7Runtime8Internal13error_handlerE:
	.quad	halide_default_error
	.size	_ZN6Halide7Runtime8Internal13error_handlerE, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Error: "
	.size	.L.str, 8

	.type	_ZN6Halide7Runtime8Internal12custom_printE,@object # @_ZN6Halide7Runtime8Internal12custom_printE
	.data
	.weak	_ZN6Halide7Runtime8Internal12custom_printE
	.p2align	3
_ZN6Halide7Runtime8Internal12custom_printE:
	.quad	halide_default_print
	.size	_ZN6Halide7Runtime8Internal12custom_printE, 8

	.type	halide_reference_clock_inited,@object # @halide_reference_clock_inited
	.bss
	.weak	halide_reference_clock_inited
halide_reference_clock_inited:
	.byte	0                               # 0x0
	.size	halide_reference_clock_inited, 1

	.type	halide_reference_clock,@object  # @halide_reference_clock
	.weak	halide_reference_clock
	.p2align	3
halide_reference_clock:
	.zero	16
	.size	halide_reference_clock, 16

	.type	_ZN6Halide7Runtime8Internal15Synchronization13table_storageE,@object # @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE
	.weak	_ZN6Halide7Runtime8Internal15Synchronization13table_storageE
_ZN6Halide7Runtime8Internal15Synchronization13table_storageE:
	.zero	24576
	.size	_ZN6Halide7Runtime8Internal15Synchronization13table_storageE, 24576

	.type	_ZN6Halide7Runtime8Internal10work_queueE,@object # @_ZN6Halide7Runtime8Internal10work_queueE
	.weak	_ZN6Halide7Runtime8Internal10work_queueE
	.p2align	3
_ZN6Halide7Runtime8Internal10work_queueE:
	.zero	8
	.long	0                               # 0x0
	.long	0                               # 0x0
	.quad	0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.zero	4
	.zero	8
	.zero	8
	.zero	8
	.long	0                               # 0x0
	.long	0                               # 0x0
	.zero	2048
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	2
	.long	0                               # 0x0
	.size	_ZN6Halide7Runtime8Internal10work_queueE, 2128

	.type	_ZN6Halide7Runtime8Internal14custom_do_taskE,@object # @_ZN6Halide7Runtime8Internal14custom_do_taskE
	.data
	.weak	_ZN6Halide7Runtime8Internal14custom_do_taskE
	.p2align	3
_ZN6Halide7Runtime8Internal14custom_do_taskE:
	.quad	halide_default_do_task
	.size	_ZN6Halide7Runtime8Internal14custom_do_taskE, 8

	.type	_ZN6Halide7Runtime8Internal19custom_do_loop_taskE,@object # @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE
	.weak	_ZN6Halide7Runtime8Internal19custom_do_loop_taskE
	.p2align	3
_ZN6Halide7Runtime8Internal19custom_do_loop_taskE:
	.quad	halide_default_do_loop_task
	.size	_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, 8

	.type	_ZN6Halide7Runtime8Internal17custom_do_par_forE,@object # @_ZN6Halide7Runtime8Internal17custom_do_par_forE
	.weak	_ZN6Halide7Runtime8Internal17custom_do_par_forE
	.p2align	3
_ZN6Halide7Runtime8Internal17custom_do_par_forE:
	.quad	halide_default_do_par_for
	.size	_ZN6Halide7Runtime8Internal17custom_do_par_forE, 8

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/synchronization_common.h:395 Assert failed: next != nullptr\n"
	.size	.L.str.5, 99

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/synchronization_common.h:1116 Assert failed: val & 0x1\n"
	.size	.L.str.6, 94

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/thread_pool_common.h:153 Assert failed: bytes == limit && \"Logic error in thread pool work queue initialization.\\n\"\n"
	.size	.L.str.7, 155

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/thread_pool_common.h:520 Assert failed: (min_threads <= ((task_parent->task.min_threads * task_parent->active_workers) - task_parent->threads_reserved)) && \"Logic error: thread over commit.\\n\"\n"
	.size	.L.str.3, 232

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"HL_NUM_THREADS"
	.size	.L.str.1, 15

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"HL_NUMTHREADS"
	.size	.L.str.2, 14

	.type	_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE,@object # @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE
	.data
	.weak	_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE
	.p2align	3
_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE:
	.quad	halide_default_do_parallel_tasks
	.size	_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, 8

	.type	_ZN6Halide7Runtime8Internal21custom_semaphore_initE,@object # @_ZN6Halide7Runtime8Internal21custom_semaphore_initE
	.weak	_ZN6Halide7Runtime8Internal21custom_semaphore_initE
	.p2align	3
_ZN6Halide7Runtime8Internal21custom_semaphore_initE:
	.quad	halide_default_semaphore_init
	.size	_ZN6Halide7Runtime8Internal21custom_semaphore_initE, 8

	.type	_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE,@object # @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE
	.weak	_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE
	.p2align	3
_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE:
	.quad	halide_default_semaphore_try_acquire
	.size	_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, 8

	.type	_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE,@object # @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE
	.weak	_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE
	.p2align	3
_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE:
	.quad	halide_default_semaphore_release
	.size	_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, 8

	.section	.fini_array,"aw",@fini_array
	.p2align	3
	.quad	halide_thread_pool_cleanup
	.quad	halide_trace_cleanup
	.quad	halide_cache_cleanup
	.quad	halide_profiler_shutdown
	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"halide_set_num_threads: must be >= 0."
	.size	.L.str.4, 38

	.type	_ZN6Halide7Runtime8Internal17custom_get_symbolE,@object # @_ZN6Halide7Runtime8Internal17custom_get_symbolE
	.data
	.weak	_ZN6Halide7Runtime8Internal17custom_get_symbolE
	.p2align	3
_ZN6Halide7Runtime8Internal17custom_get_symbolE:
	.quad	halide_default_get_symbol
	.size	_ZN6Halide7Runtime8Internal17custom_get_symbolE, 8

	.type	_ZN6Halide7Runtime8Internal19custom_load_libraryE,@object # @_ZN6Halide7Runtime8Internal19custom_load_libraryE
	.weak	_ZN6Halide7Runtime8Internal19custom_load_libraryE
	.p2align	3
_ZN6Halide7Runtime8Internal19custom_load_libraryE:
	.quad	halide_default_load_library
	.size	_ZN6Halide7Runtime8Internal19custom_load_libraryE, 8

	.type	_ZN6Halide7Runtime8Internal25custom_get_library_symbolE,@object # @_ZN6Halide7Runtime8Internal25custom_get_library_symbolE
	.weak	_ZN6Halide7Runtime8Internal25custom_get_library_symbolE
	.p2align	3
_ZN6Halide7Runtime8Internal25custom_get_library_symbolE:
	.quad	halide_default_get_library_symbol
	.size	_ZN6Halide7Runtime8Internal25custom_get_library_symbolE, 8

	.type	_ZN6Halide7Runtime8Internal17halide_gpu_deviceE,@object # @_ZN6Halide7Runtime8Internal17halide_gpu_deviceE
	.bss
	.weak	_ZN6Halide7Runtime8Internal17halide_gpu_deviceE
	.p2align	2
_ZN6Halide7Runtime8Internal17halide_gpu_deviceE:
	.long	0                               # 0x0
	.size	_ZN6Halide7Runtime8Internal17halide_gpu_deviceE, 4

	.type	_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE,@object # @_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE
	.weak	_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE
_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE:
	.byte	0                               # 0x0
	.size	_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE, 1

	.type	_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE,@object # @_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE
	.weak	_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE
_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE:
	.byte	0                               # 0x0
	.size	_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE, 1

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"HL_GPU_DEVICE"
	.size	.L.str.8, 14

	.type	_ZN6Halide7Runtime8Internal19halide_trace_bufferE,@object # @_ZN6Halide7Runtime8Internal19halide_trace_bufferE
	.bss
	.weak	_ZN6Halide7Runtime8Internal19halide_trace_bufferE
	.p2align	3
_ZN6Halide7Runtime8Internal19halide_trace_bufferE:
	.quad	0
	.size	_ZN6Halide7Runtime8Internal19halide_trace_bufferE, 8

	.type	_ZN6Halide7Runtime8Internal17halide_trace_fileE,@object # @_ZN6Halide7Runtime8Internal17halide_trace_fileE
	.data
	.weak	_ZN6Halide7Runtime8Internal17halide_trace_fileE
	.p2align	2
_ZN6Halide7Runtime8Internal17halide_trace_fileE:
	.long	4294967295                      # 0xffffffff
	.size	_ZN6Halide7Runtime8Internal17halide_trace_fileE, 4

	.type	_ZN6Halide7Runtime8Internal22halide_trace_file_lockE,@object # @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE
	.bss
	.weak	_ZN6Halide7Runtime8Internal22halide_trace_file_lockE
_ZN6Halide7Runtime8Internal22halide_trace_file_lockE:
	.byte	0                               # 0x0
	.size	_ZN6Halide7Runtime8Internal22halide_trace_file_lockE, 1

	.type	_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE,@object # @_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE
	.weak	_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE
_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE:
	.byte	0                               # 0x0
	.size	_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE, 1

	.type	_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE,@object # @_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE
	.weak	_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE
	.p2align	3
_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE:
	.quad	0
	.size	_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE, 8

	.type	_ZN6Halide7Runtime8Internal19halide_custom_traceE,@object # @_ZN6Halide7Runtime8Internal19halide_custom_traceE
	.data
	.weak	_ZN6Halide7Runtime8Internal19halide_custom_traceE
	.p2align	3
_ZN6Halide7Runtime8Internal19halide_custom_traceE:
	.quad	halide_default_trace
	.size	_ZN6Halide7Runtime8Internal19halide_custom_traceE, 8

	.type	_ZZ20halide_default_traceE3ids,@object # @_ZZ20halide_default_traceE3ids
	.p2align	2
_ZZ20halide_default_traceE3ids:
	.long	1                               # 0x1
	.size	_ZZ20halide_default_traceE3ids, 4

	.type	.L.str.32,@object               # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/tracing.cpp:115 Assert failed: success && \"Could not write to trace file\"\n"
	.size	.L.str.32, 113

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/tracing.cpp:87 Assert failed: size <= buffer_size\n"
	.size	.L.str.31, 89

	.type	.L.str.1.10,@object             # @.str.1.10
.L.str.1.10:
	.zero	1
	.size	.L.str.1.10, 1

	.type	.L.str.2.11,@object             # @.str.2.11
.L.str.2.11:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/tracing.cpp:219 Assert failed: print_bits <= 64 && \"Tracing bad type\"\n"
	.size	.L.str.2.11, 109

	.type	.L__const.halide_default_trace.event_types,@object # @__const.halide_default_trace.event_types
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3
.L__const.halide_default_trace.event_types:
	.quad	.L.str.3.12
	.quad	.L.str.4.13
	.quad	.L.str.5.14
	.quad	.L.str.6.15
	.quad	.L.str.7.16
	.quad	.L.str.8.17
	.quad	.L.str.9.18
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.size	.L__const.halide_default_trace.event_types, 88

	.type	.L.str.17,@object               # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"<"
	.size	.L.str.17, 2

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	">)"
	.size	.L.str.20, 3

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	">, <"
	.size	.L.str.18, 5

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	" = <"
	.size	.L.str.22, 5

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	" = "
	.size	.L.str.23, 4

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/tracing.cpp:288 Assert failed: print_bits >= 16 && \"Tracing a bad type\"\n"
	.size	.L.str.24, 111

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	">"
	.size	.L.str.25, 2

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	" tag = \""
	.size	.L.str.26, 9

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"\""
	.size	.L.str.27, 2

	.type	.L.str.3.12,@object             # @.str.3.12
.L.str.3.12:
	.asciz	"Load"
	.size	.L.str.3.12, 5

	.type	.L.str.4.13,@object             # @.str.4.13
.L.str.4.13:
	.asciz	"Store"
	.size	.L.str.4.13, 6

	.type	.L.str.5.14,@object             # @.str.5.14
.L.str.5.14:
	.asciz	"Begin realization"
	.size	.L.str.5.14, 18

	.type	.L.str.6.15,@object             # @.str.6.15
.L.str.6.15:
	.asciz	"End realization"
	.size	.L.str.6.15, 16

	.type	.L.str.7.16,@object             # @.str.7.16
.L.str.7.16:
	.asciz	"Produce"
	.size	.L.str.7.16, 8

	.type	.L.str.8.17,@object             # @.str.8.17
.L.str.8.17:
	.asciz	"End produce"
	.size	.L.str.8.17, 12

	.type	.L.str.9.18,@object             # @.str.9.18
.L.str.9.18:
	.asciz	"Consume"
	.size	.L.str.9.18, 8

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"End consume"
	.size	.L.str.10, 12

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Begin pipeline"
	.size	.L.str.11, 15

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"End pipeline"
	.size	.L.str.12, 13

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Tag"
	.size	.L.str.13, 4

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"HL_TRACE_FILE"
	.size	.L.str.28, 14

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"ab"
	.size	.L.str.29, 3

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/tracing.cpp:353 Assert failed: file && \"Failed to open trace file\\n\"\n"
	.size	.L.str.30, 108

	.type	_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE,@object # @_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE
	.data
	.weak	_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE
	.p2align	1
_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE:
	.short	3                               # 0x3
	.short	3                               # 0x3
	.short	1                               # 0x1
	.short	2                               # 0x2
	.short	1                               # 0x1
	.short	2                               # 0x2
	.short	1                               # 0x1
	.short	2                               # 0x2
	.short	1                               # 0x1
	.short	2                               # 0x2
	.size	_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE, 20

	.type	_ZN6Halide7Runtime8Internal31pixel_type_to_matlab_class_codeE,@object # @_ZN6Halide7Runtime8Internal31pixel_type_to_matlab_class_codeE
	.weak	_ZN6Halide7Runtime8Internal31pixel_type_to_matlab_class_codeE
_ZN6Halide7Runtime8Internal31pixel_type_to_matlab_class_codeE:
	.ascii	"\007\006\t\b\013\n\r\f\017\016"
	.size	_ZN6Halide7Runtime8Internal31pixel_type_to_matlab_class_codeE, 10

	.type	_ZN6Halide7Runtime8Internal30pixel_type_to_matlab_type_codeE,@object # @_ZN6Halide7Runtime8Internal30pixel_type_to_matlab_type_codeE
	.weak	_ZN6Halide7Runtime8Internal30pixel_type_to_matlab_type_codeE
_ZN6Halide7Runtime8Internal30pixel_type_to_matlab_type_codeE:
	.ascii	"\007\t\002\001\004\003\006\005\r\f"
	.size	_ZN6Halide7Runtime8Internal30pixel_type_to_matlab_type_codeE, 10

	.type	.L.str.35,@object               # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"Bounds query buffer passed to halide_debug_to_file"
	.size	.L.str.35, 51

	.type	.L.str.1.36,@object             # @.str.1.36
.L.str.1.36:
	.asciz	"Can't debug_to_file a Func with more than four dimensions\n"
	.size	.L.str.1.36, 59

	.type	.L.str.2.37,@object             # @.str.2.37
.L.str.2.37:
	.asciz	"wb"
	.size	.L.str.2.37, 3

	.type	.L.str.3.38,@object             # @.str.3.38
.L.str.3.38:
	.asciz	".tiff"
	.size	.L.str.3.38, 6

	.type	.L.str.4.39,@object             # @.str.4.39
.L.str.4.39:
	.asciz	".tif"
	.size	.L.str.4.39, 5

	.type	.L.str.5.40,@object             # @.str.5.40
.L.str.5.40:
	.asciz	".mat"
	.size	.L.str.5.40, 5

	.type	.L__const.halide_debug_to_file.header,@object # @__const.halide_debug_to_file.header
	.section	.rodata,"a",@progbits
.L__const.halide_debug_to_file.header:
	.asciz	"MATLAB 5.0 MAT-file, produced by Halide                                                                                     \000\001IM"
	.size	.L__const.halide_debug_to_file.header, 129

	.type	.L.str.6.41,@object             # @.str.6.41
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6.41:
	.asciz	"Can't debug_to_file to a .mat file greater than 4GB\n"
	.size	.L.str.6.41, 53

	.type	_ZN6Halide7Runtime8Internal16memoization_lockE,@object # @_ZN6Halide7Runtime8Internal16memoization_lockE
	.bss
	.weak	_ZN6Halide7Runtime8Internal16memoization_lockE
	.p2align	3
_ZN6Halide7Runtime8Internal16memoization_lockE:
	.zero	8
	.size	_ZN6Halide7Runtime8Internal16memoization_lockE, 8

	.type	_ZN6Halide7Runtime8Internal13cache_entriesE,@object # @_ZN6Halide7Runtime8Internal13cache_entriesE
	.weak	_ZN6Halide7Runtime8Internal13cache_entriesE
	.p2align	3
_ZN6Halide7Runtime8Internal13cache_entriesE:
	.zero	2048
	.size	_ZN6Halide7Runtime8Internal13cache_entriesE, 2048

	.type	_ZN6Halide7Runtime8Internal18most_recently_usedE,@object # @_ZN6Halide7Runtime8Internal18most_recently_usedE
	.weak	_ZN6Halide7Runtime8Internal18most_recently_usedE
	.p2align	3
_ZN6Halide7Runtime8Internal18most_recently_usedE:
	.quad	0
	.size	_ZN6Halide7Runtime8Internal18most_recently_usedE, 8

	.type	_ZN6Halide7Runtime8Internal19least_recently_usedE,@object # @_ZN6Halide7Runtime8Internal19least_recently_usedE
	.weak	_ZN6Halide7Runtime8Internal19least_recently_usedE
	.p2align	3
_ZN6Halide7Runtime8Internal19least_recently_usedE:
	.quad	0
	.size	_ZN6Halide7Runtime8Internal19least_recently_usedE, 8

	.type	_ZN6Halide7Runtime8Internal14max_cache_sizeE,@object # @_ZN6Halide7Runtime8Internal14max_cache_sizeE
	.data
	.weak	_ZN6Halide7Runtime8Internal14max_cache_sizeE
	.p2align	3
_ZN6Halide7Runtime8Internal14max_cache_sizeE:
	.quad	1048576                         # 0x100000
	.size	_ZN6Halide7Runtime8Internal14max_cache_sizeE, 8

	.type	_ZN6Halide7Runtime8Internal18current_cache_sizeE,@object # @_ZN6Halide7Runtime8Internal18current_cache_sizeE
	.bss
	.weak	_ZN6Halide7Runtime8Internal18current_cache_sizeE
	.p2align	3
_ZN6Halide7Runtime8Internal18current_cache_sizeE:
	.quad	0                               # 0x0
	.size	_ZN6Halide7Runtime8Internal18current_cache_sizeE, 8

	.type	.L.str.1.43,@object             # @.str.1.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1.43:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/cache.cpp:281 Assert failed: prev_hash_entry != nullptr\n"
	.size	.L.str.1.43, 95

	.type	.L.str.2.44,@object             # @.str.2.44
.L.str.2.44:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/cache.cpp:370 Assert failed: entry->more_recent != nullptr\n"
	.size	.L.str.2.44, 98

	.type	.L.str.3.45,@object             # @.str.3.45
.L.str.3.45:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/cache.cpp:374 Assert failed: least_recently_used == entry\n"
	.size	.L.str.3.45, 97

	.type	.L.str.4.46,@object             # @.str.4.46
.L.str.4.46:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/cache.cpp:377 Assert failed: entry->more_recent != nullptr\n"
	.size	.L.str.4.46, 98

	.type	.L.str.8.47,@object             # @.str.8.47
.L.str.8.47:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/cache.cpp:469 Assert failed: no_host_pointers_equal\n"
	.size	.L.str.8.47, 91

	.type	.L.str.11.48,@object            # @.str.11.48
.L.str.11.48:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/cache.cpp:547 Assert failed: entry->in_use_count > 0\n"
	.size	.L.str.11.48, 92

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"-nan"
	.size	.L.str.57, 5

	.type	.L.str.1.58,@object             # @.str.1.58
.L.str.1.58:
	.asciz	"nan"
	.size	.L.str.1.58, 4

	.type	.L.str.2.59,@object             # @.str.2.59
.L.str.2.59:
	.asciz	"-inf"
	.size	.L.str.2.59, 5

	.type	.L.str.3.60,@object             # @.str.3.60
.L.str.3.60:
	.asciz	"inf"
	.size	.L.str.3.60, 4

	.type	.L.str.4.61,@object             # @.str.4.61
.L.str.4.61:
	.asciz	"-0.000000e+00"
	.size	.L.str.4.61, 14

	.type	.L.str.5.62,@object             # @.str.5.62
.L.str.5.62:
	.asciz	"0.000000e+00"
	.size	.L.str.5.62, 13

	.type	.L.str.6.63,@object             # @.str.6.63
.L.str.6.63:
	.asciz	"-0.000000"
	.size	.L.str.6.63, 10

	.type	.L.str.7.64,@object             # @.str.7.64
.L.str.7.64:
	.asciz	"0.000000"
	.size	.L.str.7.64, 9

	.type	.L.str.8.65,@object             # @.str.8.65
.L.str.8.65:
	.asciz	"-"
	.size	.L.str.8.65, 2

	.type	.L.str.10.67,@object            # @.str.10.67
.L.str.10.67:
	.asciz	"e+"
	.size	.L.str.10.67, 3

	.type	.L.str.11.68,@object            # @.str.11.68
.L.str.11.68:
	.asciz	"e-"
	.size	.L.str.11.68, 3

	.type	.L.str.12.71,@object            # @.str.12.71
.L.str.12.71:
	.asciz	"0123456789abcdef"
	.size	.L.str.12.71, 17

	.type	.L.str.17.72,@object            # @.str.17.72
.L.str.17.72:
	.asciz	"bad_type_code"
	.size	.L.str.17.72, 14

	.type	.L.str.16.73,@object            # @.str.16.73
.L.str.16.73:
	.asciz	"handle"
	.size	.L.str.16.73, 7

	.type	.L.str.15.74,@object            # @.str.15.74
.L.str.15.74:
	.asciz	"float"
	.size	.L.str.15.74, 6

	.type	.L.str.14.75,@object            # @.str.14.75
.L.str.14.75:
	.asciz	"uint"
	.size	.L.str.14.75, 5

	.type	.L.str.13.76,@object            # @.str.13.76
.L.str.13.76:
	.asciz	"int"
	.size	.L.str.13.76, 4

	.type	.L.str.18.77,@object            # @.str.18.77
.L.str.18.77:
	.asciz	"x"
	.size	.L.str.18.77, 2

	.type	.L.str.19.78,@object            # @.str.19.78
.L.str.19.78:
	.asciz	"nullptr"
	.size	.L.str.19.78, 8

	.type	.L.str.20.79,@object            # @.str.20.79
.L.str.20.79:
	.asciz	"buffer("
	.size	.L.str.20.79, 8

	.type	.L.str.22.82,@object            # @.str.22.82
.L.str.22.82:
	.asciz	", {"
	.size	.L.str.22.82, 4

	.type	.L.str.23.83,@object            # @.str.23.83
.L.str.23.83:
	.asciz	"}"
	.size	.L.str.23.83, 2

	.type	_ZN6Halide7Runtime8Internal36halide_reuse_device_allocations_flagE,@object # @_ZN6Halide7Runtime8Internal36halide_reuse_device_allocations_flagE
	.data
	.weak	_ZN6Halide7Runtime8Internal36halide_reuse_device_allocations_flagE
_ZN6Halide7Runtime8Internal36halide_reuse_device_allocations_flagE:
	.byte	1                               # 0x1
	.size	_ZN6Halide7Runtime8Internal36halide_reuse_device_allocations_flagE, 1

	.type	_ZN6Halide7Runtime8Internal21allocation_pools_lockE,@object # @_ZN6Halide7Runtime8Internal21allocation_pools_lockE
	.bss
	.weak	_ZN6Halide7Runtime8Internal21allocation_pools_lockE
	.p2align	3
_ZN6Halide7Runtime8Internal21allocation_pools_lockE:
	.zero	8
	.size	_ZN6Halide7Runtime8Internal21allocation_pools_lockE, 8

	.type	_ZN6Halide7Runtime8Internal23device_allocation_poolsE,@object # @_ZN6Halide7Runtime8Internal23device_allocation_poolsE
	.weak	_ZN6Halide7Runtime8Internal23device_allocation_poolsE
	.p2align	3
_ZN6Halide7Runtime8Internal23device_allocation_poolsE:
	.quad	0
	.size	_ZN6Halide7Runtime8Internal23device_allocation_poolsE, 8

	.type	_ZN6Halide7Runtime8Internal17device_copy_mutexE,@object # @_ZN6Halide7Runtime8Internal17device_copy_mutexE
	.weak	_ZN6Halide7Runtime8Internal17device_copy_mutexE
	.p2align	3
_ZN6Halide7Runtime8Internal17device_copy_mutexE:
	.zero	8
	.size	_ZN6Halide7Runtime8Internal17device_copy_mutexE, 8

	.type	.L.str.6.88,@object             # @.str.6.88
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6.88:
	.asciz	"halide_copy_to_host"
	.size	.L.str.6.88, 20

	.type	.L.str.7.89,@object             # @.str.7.89
.L.str.7.89:
	.asciz	"halide_copy_to_device"
	.size	.L.str.7.89, 22

	.type	.L.str.9.90,@object             # @.str.9.90
.L.str.9.90:
	.asciz	"halide_copy_to_device does not support switching interfaces\n"
	.size	.L.str.9.90, 61

	.type	.L.str.17.91,@object            # @.str.17.91
.L.str.17.91:
	.asciz	"halide_device_malloc"
	.size	.L.str.17.91, 21

	.type	.L.str.20.92,@object            # @.str.20.92
.L.str.20.92:
	.asciz	"halide_device_malloc doesn't support switching interfaces\n"
	.size	.L.str.20.92, 59

	.type	.L.str.16.93,@object            # @.str.16.93
.L.str.16.93:
	.asciz	"halide_device_sync"
	.size	.L.str.16.93, 19

	.type	.L.str.21.96,@object            # @.str.21.96
.L.str.21.96:
	.asciz	"halide_device_free"
	.size	.L.str.21.96, 19

	.type	.L.str.22.97,@object            # @.str.22.97
.L.str.22.97:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/device_interface.cpp:252 Assert failed: buf->device == 0\n"
	.size	.L.str.22.97, 96

	.type	.L.str.23.98,@object            # @.str.23.98
.L.str.23.98:
	.asciz	"halide_device_and_host_malloc"
	.size	.L.str.23.98, 30

	.type	.L.str.25.99,@object            # @.str.25.99
.L.str.25.99:
	.asciz	"halide_device_and_host_malloc doesn't support switching interfaces\n"
	.size	.L.str.25.99, 68

	.type	.L.str.26.100,@object           # @.str.26.100
.L.str.26.100:
	.asciz	"allocating host and device memory failed\n"
	.size	.L.str.26.100, 42

	.type	.L.str.27.101,@object           # @.str.27.101
.L.str.27.101:
	.asciz	"halide_device_and_host_free"
	.size	.L.str.27.101, 28

	.type	.L.str.28.102,@object           # @.str.28.102
.L.str.28.102:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/device_interface.cpp:317 Assert failed: buf->device == 0\n"
	.size	.L.str.28.102, 96

	.type	.L.str.29.103,@object           # @.str.29.103
.L.str.29.103:
	.asciz	"halide_default_device_and_host_malloc"
	.size	.L.str.29.103, 38

	.type	.L.str.30.104,@object           # @.str.30.104
.L.str.30.104:
	.asciz	"halide_default_device_and_host_free"
	.size	.L.str.30.104, 36

	.type	.L.str.31.105,@object           # @.str.31.105
.L.str.31.105:
	.asciz	"halide_device_wrap_native"
	.size	.L.str.31.105, 26

	.type	.L.str.32.106,@object           # @.str.32.106
.L.str.32.106:
	.asciz	"halide_device_wrap_native doesn't support switching interfaces\n"
	.size	.L.str.32.106, 64

	.type	.L.str.33.107,@object           # @.str.33.107
.L.str.33.107:
	.asciz	"halide_device_detach_native"
	.size	.L.str.33.107, 28

	.type	.L.str.34.108,@object           # @.str.34.108
.L.str.34.108:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/device_interface.cpp:403 Assert failed: buf->device == 0\n"
	.size	.L.str.34.108, 96

	.type	.L.str.35.109,@object           # @.str.35.109
.L.str.35.109:
	.asciz	"halide_default_device_wrap_native"
	.size	.L.str.35.109, 34

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"halide_default_device_detach_native"
	.size	.L.str.36, 36

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"halide_buffer_copy does not support switching device interfaces"
	.size	.L.str.42, 64

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"device_interface does not support cropping\n"
	.size	.L.str.58, 44

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"device_interface does not support slicing\n"
	.size	.L.str.59, 43

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"destination buffer already has a device allocation\n"
	.size	.L.str.60, 52

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"src and dst must have identical dimensionality\n"
	.size	.L.str.61, 48

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"dst must have exactly one fewer dimension than src\n"
	.size	.L.str.64, 52

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"Bounds inference call to external stage "
	.size	.L.str.112, 41

	.type	.L.str.1.113,@object            # @.str.1.113
.L.str.1.113:
	.asciz	" returned non-zero value: "
	.size	.L.str.1.113, 27

	.type	.L.str.2.114,@object            # @.str.2.114
.L.str.2.114:
	.asciz	"Call to external stage "
	.size	.L.str.2.114, 24

	.type	.L.str.3.115,@object            # @.str.3.115
.L.str.3.115:
	.asciz	"Bounds given for "
	.size	.L.str.3.115, 18

	.type	.L.str.4.116,@object            # @.str.4.116
.L.str.4.116:
	.asciz	" in "
	.size	.L.str.4.116, 5

	.type	.L.str.5.117,@object            # @.str.5.117
.L.str.5.117:
	.asciz	" (from "
	.size	.L.str.5.117, 8

	.type	.L.str.6.118,@object            # @.str.6.118
.L.str.6.118:
	.asciz	" to "
	.size	.L.str.6.118, 5

	.type	.L.str.7.119,@object            # @.str.7.119
.L.str.7.119:
	.asciz	") do not cover required region (from "
	.size	.L.str.7.119, 38

	.type	.L.str.8.120,@object            # @.str.8.120
.L.str.8.120:
	.asciz	")"
	.size	.L.str.8.120, 2

	.type	.L.str.9.121,@object            # @.str.9.121
.L.str.9.121:
	.asciz	" has type "
	.size	.L.str.9.121, 11

	.type	.L.str.10.122,@object           # @.str.10.122
.L.str.10.122:
	.asciz	" but type of the buffer passed in is "
	.size	.L.str.10.122, 38

	.type	.L.str.11.123,@object           # @.str.11.123
.L.str.11.123:
	.asciz	" requires a buffer of exactly "
	.size	.L.str.11.123, 31

	.type	.L.str.12.124,@object           # @.str.12.124
.L.str.12.124:
	.asciz	" dimensions, but the buffer passed in has "
	.size	.L.str.12.124, 43

	.type	.L.str.13.125,@object           # @.str.13.125
.L.str.13.125:
	.asciz	" dimensions"
	.size	.L.str.13.125, 12

	.type	.L.str.14.126,@object           # @.str.14.126
.L.str.14.126:
	.asciz	" is accessed at "
	.size	.L.str.14.126, 17

	.type	.L.str.15.127,@object           # @.str.15.127
.L.str.15.127:
	.asciz	", which is before the min ("
	.size	.L.str.15.127, 28

	.type	.L.str.16.128,@object           # @.str.16.128
.L.str.16.128:
	.asciz	") in dimension "
	.size	.L.str.16.128, 16

	.type	.L.str.17.129,@object           # @.str.17.129
.L.str.17.129:
	.asciz	", which is beyond the max ("
	.size	.L.str.17.129, 28

	.type	.L.str.18.130,@object           # @.str.18.130
.L.str.18.130:
	.asciz	"Total allocation for buffer "
	.size	.L.str.18.130, 29

	.type	.L.str.19.131,@object           # @.str.19.131
.L.str.19.131:
	.asciz	" is "
	.size	.L.str.19.131, 5

	.type	.L.str.20.132,@object           # @.str.20.132
.L.str.20.132:
	.asciz	", which exceeds the maximum size of "
	.size	.L.str.20.132, 37

	.type	.L.str.21.133,@object           # @.str.21.133
.L.str.21.133:
	.asciz	"The extents for buffer "
	.size	.L.str.21.133, 24

	.type	.L.str.22.134,@object           # @.str.22.134
.L.str.22.134:
	.asciz	" dimension "
	.size	.L.str.22.134, 12

	.type	.L.str.23.135,@object           # @.str.23.135
.L.str.23.135:
	.asciz	" is negative ("
	.size	.L.str.23.135, 15

	.type	.L.str.24.136,@object           # @.str.24.136
.L.str.24.136:
	.asciz	"Product of extents for buffer "
	.size	.L.str.24.136, 31

	.type	.L.str.25.137,@object           # @.str.25.137
.L.str.25.137:
	.asciz	"Applying the constraints on "
	.size	.L.str.25.137, 29

	.type	.L.str.26.138,@object           # @.str.26.138
.L.str.26.138:
	.asciz	" to the required region made it smaller in dimension "
	.size	.L.str.26.138, 54

	.type	.L.str.27.139,@object           # @.str.27.139
.L.str.27.139:
	.asciz	". "
	.size	.L.str.27.139, 3

	.type	.L.str.28.140,@object           # @.str.28.140
.L.str.28.140:
	.asciz	"Required size: "
	.size	.L.str.28.140, 16

	.type	.L.str.29.141,@object           # @.str.29.141
.L.str.29.141:
	.asciz	"Constrained size: "
	.size	.L.str.29.141, 19

	.type	.L.str.30.142,@object           # @.str.30.142
.L.str.30.142:
	.asciz	"."
	.size	.L.str.30.142, 2

	.type	.L.str.31.143,@object           # @.str.31.143
.L.str.31.143:
	.asciz	"Constraint violated: "
	.size	.L.str.31.143, 22

	.type	.L.str.32.144,@object           # @.str.32.144
.L.str.32.144:
	.asciz	" ("
	.size	.L.str.32.144, 3

	.type	.L.str.33.145,@object           # @.str.33.145
.L.str.33.145:
	.asciz	") == "
	.size	.L.str.33.145, 6

	.type	.L.str.34.146,@object           # @.str.34.146
.L.str.34.146:
	.asciz	"Parameter "
	.size	.L.str.34.146, 11

	.type	.L.str.35.147,@object           # @.str.35.147
.L.str.35.147:
	.asciz	" but must be at least "
	.size	.L.str.35.147, 23

	.type	.L.str.36.148,@object           # @.str.36.148
.L.str.36.148:
	.asciz	" but must be at most "
	.size	.L.str.36.148, 22

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Out of memory (halide_malloc returned nullptr)"
	.size	.L.str.37, 47

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"Buffer argument "
	.size	.L.str.38, 17

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	" is nullptr"
	.size	.L.str.39, 12

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"Failed to dump function "
	.size	.L.str.40, 25

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	" to file "
	.size	.L.str.41, 10

	.type	.L.str.42.149,@object           # @.str.42.149
.L.str.42.149:
	.asciz	" with error "
	.size	.L.str.42.149, 13

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"The host pointer of "
	.size	.L.str.43, 21

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	" is not aligned to a "
	.size	.L.str.44, 22

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	" bytes boundary."
	.size	.L.str.45, 17

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"The buffer "
	.size	.L.str.46, 12

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	" is dirty on device, but this pipeline was compiled "
	.size	.L.str.47, 53

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"with no support for device to host copies."
	.size	.L.str.48, 43

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	" is null, but the pipeline will access it on the host."
	.size	.L.str.49, 55

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"The folded storage dimension "
	.size	.L.str.50, 30

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	" of "
	.size	.L.str.51, 5

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	" was accessed out of order by loop "
	.size	.L.str.52, 36

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"Cannot fold dimension "
	.size	.L.str.53, 23

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	" because an extern stage accesses ["
	.size	.L.str.54, 36

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	", "
	.size	.L.str.55, 3

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"],"
	.size	.L.str.56, 3

	.type	.L.str.57.150,@object           # @.str.57.150
.L.str.57.150:
	.asciz	" which is outside the range currently valid: ["
	.size	.L.str.57.150, 47

	.type	.L.str.58.151,@object           # @.str.58.151
.L.str.58.151:
	.asciz	"]."
	.size	.L.str.58.151, 3

	.type	.L.str.59.152,@object           # @.str.59.152
.L.str.59.152:
	.asciz	" which wraps around the boundary of the fold, "
	.size	.L.str.59.152, 47

	.type	.L.str.60.153,@object           # @.str.60.153
.L.str.60.153:
	.asciz	"which occurs at multiples of "
	.size	.L.str.60.153, 30

	.type	.L.str.61.154,@object           # @.str.61.154
.L.str.61.154:
	.asciz	"The fold factor ("
	.size	.L.str.61.154, 18

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	") of dimension "
	.size	.L.str.62, 16

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	" is too small to store the required region accessed by loop "
	.size	.L.str.63, 61

	.type	.L.str.64.155,@object           # @.str.64.155
.L.str.64.155:
	.asciz	")."
	.size	.L.str.64.155, 3

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"Requirement Failed: ("
	.size	.L.str.65, 22

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	") "
	.size	.L.str.66, 3

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"A schedule specialized with specialize_fail() was chosen: "
	.size	.L.str.67, 59

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"Buffer has a non-zero device but no device interface.\n"
	.size	.L.str.68, 55

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"Buffer has a non-null device_interface but device is 0.\n"
	.size	.L.str.69, 57

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"Buffer has both host and device dirty bits set.\n"
	.size	.L.str.70, 49

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"Buffer pointer passed to "
	.size	.L.str.71, 26

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	" is null.\n"
	.size	.L.str.72, 11

	.type	.L.str.29.165,@object           # @.str.29.165
.L.str.29.165:
	.asciz	"Printer buffer allocation failed.\n"
	.size	.L.str.29.165, 35

	.type	.L.str.30.166,@object           # @.str.30.166
.L.str.30.166:
	.asciz	"<nullptr>"
	.size	.L.str.30.166, 10

	.type	.L.str.7.167,@object            # @.str.7.167
.L.str.7.167:
	.asciz	"\n"
	.size	.L.str.7.167, 2

	.type	.L.str.8.168,@object            # @.str.8.168
.L.str.8.168:
	.asciz	" total time: "
	.size	.L.str.8.168, 14

	.type	.L.str.9.169,@object            # @.str.9.169
.L.str.9.169:
	.asciz	" ms"
	.size	.L.str.9.169, 4

	.type	.L.str.10.170,@object           # @.str.10.170
.L.str.10.170:
	.asciz	"  samples: "
	.size	.L.str.10.170, 12

	.type	.L.str.11.171,@object           # @.str.11.171
.L.str.11.171:
	.asciz	"  runs: "
	.size	.L.str.11.171, 9

	.type	.L.str.12.172,@object           # @.str.12.172
.L.str.12.172:
	.asciz	"  time/run: "
	.size	.L.str.12.172, 13

	.type	.L.str.13.173,@object           # @.str.13.173
.L.str.13.173:
	.asciz	" ms\n"
	.size	.L.str.13.173, 5

	.type	.L.str.14.174,@object           # @.str.14.174
.L.str.14.174:
	.asciz	" average threads used: "
	.size	.L.str.14.174, 24

	.type	.L.str.15.175,@object           # @.str.15.175
.L.str.15.175:
	.asciz	" heap allocations: "
	.size	.L.str.15.175, 20

	.type	.L.str.16.176,@object           # @.str.16.176
.L.str.16.176:
	.asciz	"  peak heap usage: "
	.size	.L.str.16.176, 20

	.type	.L.str.17.177,@object           # @.str.17.177
.L.str.17.177:
	.asciz	" bytes\n"
	.size	.L.str.17.177, 8

	.type	.L.str.18.178,@object           # @.str.18.178
.L.str.18.178:
	.asciz	"  "
	.size	.L.str.18.178, 3

	.type	.L.str.19.179,@object           # @.str.19.179
.L.str.19.179:
	.asciz	": "
	.size	.L.str.19.179, 3

	.type	.L.str.20.180,@object           # @.str.20.180
.L.str.20.180:
	.asciz	" "
	.size	.L.str.20.180, 2

	.type	.L.str.21.181,@object           # @.str.21.181
.L.str.21.181:
	.asciz	"ms"
	.size	.L.str.21.181, 3

	.type	.L.str.22.182,@object           # @.str.22.182
.L.str.22.182:
	.asciz	"("
	.size	.L.str.22.182, 2

	.type	.L.str.23.183,@object           # @.str.23.183
.L.str.23.183:
	.asciz	"%)"
	.size	.L.str.23.183, 3

	.type	.L.str.24.184,@object           # @.str.24.184
.L.str.24.184:
	.asciz	"threads: "
	.size	.L.str.24.184, 10

	.type	.L.str.25.185,@object           # @.str.25.185
.L.str.25.185:
	.asciz	" peak: "
	.size	.L.str.25.185, 8

	.type	.L.str.26.186,@object           # @.str.26.186
.L.str.26.186:
	.asciz	" num: "
	.size	.L.str.26.186, 7

	.type	.L.str.27.187,@object           # @.str.27.187
.L.str.27.187:
	.asciz	" avg: "
	.size	.L.str.27.187, 7

	.type	.L.str.28.188,@object           # @.str.28.188
.L.str.28.188:
	.asciz	" stack: "
	.size	.L.str.28.188, 9

	.type	_ZZ25halide_profiler_get_stateE1s,@object # @_ZZ25halide_profiler_get_stateE1s
	.data
	.p2align	3
_ZZ25halide_profiler_get_stateE1s:
	.zero	8
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.quad	0
	.quad	0
	.quad	0
	.size	_ZZ25halide_profiler_get_stateE1s, 48

	.type	.L.str.189,@object              # @.str.189
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.189:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/profiler.cpp:207 Assert failed: p_stats != nullptr\n"
	.size	.L.str.189, 90

	.type	.L.str.1.190,@object            # @.str.1.190
.L.str.1.190:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/profiler.cpp:234 Assert failed: p_stats != nullptr\n"
	.size	.L.str.1.190, 90

	.type	.L.str.2.191,@object            # @.str.2.191
.L.str.2.191:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/profiler.cpp:235 Assert failed: func_id >= 0\n"
	.size	.L.str.2.191, 84

	.type	.L.str.3.192,@object            # @.str.3.192
.L.str.3.192:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/profiler.cpp:236 Assert failed: func_id < p_stats->num_funcs\n"
	.size	.L.str.3.192, 100

	.type	.L.str.4.193,@object            # @.str.4.193
.L.str.4.193:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/profiler.cpp:270 Assert failed: p_stats != nullptr\n"
	.size	.L.str.4.193, 90

	.type	.L.str.5.194,@object            # @.str.5.194
.L.str.5.194:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/profiler.cpp:271 Assert failed: func_id >= 0\n"
	.size	.L.str.5.194, 84

	.type	.L.str.6.195,@object            # @.str.6.195
.L.str.6.195:
	.asciz	"/mnt/d/Software/Halide-12/src/runtime/profiler.cpp:272 Assert failed: func_id < p_stats->num_funcs\n"
	.size	.L.str.6.195, 100

	.type	_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE,@object # @_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE
	.data
	.weak	_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE
	.p2align	3
_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE:
	.quad	halide_default_can_use_target_features
	.size	_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE, 8

	.type	_ZN6Halide7Runtime8Internal36halide_cpu_features_initialized_lockE,@object # @_ZN6Halide7Runtime8Internal36halide_cpu_features_initialized_lockE
	.bss
	.weak	_ZN6Halide7Runtime8Internal36halide_cpu_features_initialized_lockE
	.p2align	3
_ZN6Halide7Runtime8Internal36halide_cpu_features_initialized_lockE:
	.zero	8
	.size	_ZN6Halide7Runtime8Internal36halide_cpu_features_initialized_lockE, 8

	.type	_ZN6Halide7Runtime8Internal31halide_cpu_features_initializedE,@object # @_ZN6Halide7Runtime8Internal31halide_cpu_features_initializedE
	.weak	_ZN6Halide7Runtime8Internal31halide_cpu_features_initializedE
_ZN6Halide7Runtime8Internal31halide_cpu_features_initializedE:
	.byte	0                               # 0x0
	.size	_ZN6Halide7Runtime8Internal31halide_cpu_features_initializedE, 1

	.type	_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE,@object # @_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE
	.weak	_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE
	.p2align	3
_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE:
	.zero	32
	.size	_ZN6Halide7Runtime8Internal27halide_cpu_features_storageE, 32

	.type	.L.str.200,@object              # @.str.200
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.200:
	.asciz	"Internal error: wrong structure size passed to halide_can_use_target_features()\n"
	.size	.L.str.200, 81

	.type	.Lstr,@object                   # @str
	.section	.rodata,"a",@progbits
	.p2align	5
.Lstr:
	.asciz	"processed"
	.size	.Lstr, 10

	.type	.Lstr.203,@object               # @str.203
	.p2align	5
.Lstr.203:
	.asciz	"matrix_7000"
	.size	.Lstr.203, 12

	.type	.Lstr.204,@object               # @str.204
	.p2align	5
.Lstr.204:
	.asciz	"matix_3200"
	.size	.Lstr.204, 11

	.type	.Lstr.205,@object               # @str.205
	.p2align	5
.Lstr.205:
	.asciz	"input"
	.size	.Lstr.205, 6

	.type	.Lstr.206,@object               # @str.206
	.p2align	5
.Lstr.206:
	.asciz	"Input buffer input"
	.size	.Lstr.206, 19

	.type	.Lstr.207,@object               # @str.207
	.p2align	5
.Lstr.207:
	.asciz	"Input buffer matix_3200"
	.size	.Lstr.207, 24

	.type	.Lstr.208,@object               # @str.208
	.p2align	5
.Lstr.208:
	.asciz	"Input buffer matrix_7000"
	.size	.Lstr.208, 25

	.type	.Lstr.209,@object               # @str.209
	.p2align	5
.Lstr.209:
	.asciz	"Output buffer processed"
	.size	.Lstr.209, 24

	.type	.Lstr.210,@object               # @str.210
	.p2align	5
.Lstr.210:
	.asciz	"input.stride.0"
	.size	.Lstr.210, 15

	.type	.Lstr.211,@object               # @str.211
	.p2align	5
.Lstr.211:
	.asciz	"1"
	.size	.Lstr.211, 2

	.type	.Lstr.212,@object               # @str.212
	.p2align	5
.Lstr.212:
	.asciz	"matix_3200.stride.0"
	.size	.Lstr.212, 20

	.type	.Lstr.213,@object               # @str.213
	.p2align	5
.Lstr.213:
	.asciz	"matrix_7000.stride.0"
	.size	.Lstr.213, 21

	.type	.Lstr.214,@object               # @str.214
	.p2align	5
.Lstr.214:
	.asciz	"processed.stride.0"
	.size	.Lstr.214, 19

	.type	.Lstr.215,@object               # @str.215
	.p2align	5
.Lstr.215:
	.asciz	"v1"
	.size	.Lstr.215, 3

	.type	.Lstr.216,@object               # @str.216
	.p2align	5
.Lstr.216:
	.asciz	"v0"
	.size	.Lstr.216, 3

	.type	.Lstr.217,@object               # @str.217
	.p2align	5
.Lstr.217:
	.asciz	"v2"
	.size	.Lstr.217, 3

	.type	.Lstr.218,@object               # @str.218
	.p2align	5
.Lstr.218:
	.asciz	"f1"
	.size	.Lstr.218, 3

	.type	.Lstr.219,@object               # @str.219
	.p2align	5
.Lstr.219:
	.asciz	"deinterleaved"
	.size	.Lstr.219, 14

	.type	.Lstr.220,@object               # @str.220
	.p2align	5
.Lstr.220:
	.asciz	"f7"
	.size	.Lstr.220, 3

	.type	.Lstr.221,@object               # @str.221
	.p2align	5
.Lstr.221:
	.asciz	"f13"
	.size	.Lstr.221, 4

	.type	.Lstr.222,@object               # @str.222
	.p2align	5
.Lstr.222:
	.asciz	"f28"
	.size	.Lstr.222, 4

	.type	.Lstr.223,@object               # @str.223
	.p2align	5
.Lstr.223:
	.asciz	"processed.s0.v1.v3.v3.$n.$n.$n.$n"
	.size	.Lstr.223, 34

	.type	.L__unnamed_1,@object           # @0
	.p2align	3
.L__unnamed_1:
	.quad	0                               # 0x0
	.size	.L__unnamed_1, 8

	.type	.L__unnamed_2,@object           # @1
	.p2align	3
.L__unnamed_2:
	.quad	2592                            # 0xa20
	.size	.L__unnamed_2, 8

	.type	.L__unnamed_3,@object           # @2
	.p2align	3
.L__unnamed_3:
	.quad	0                               # 0x0
	.size	.L__unnamed_3, 8

	.type	.L__unnamed_4,@object           # @3
	.p2align	3
.L__unnamed_4:
	.quad	1968                            # 0x7b0
	.size	.L__unnamed_4, 8

	.type	.L__unnamed_5,@object           # @4
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.L__unnamed_5:
	.quad	.L__unnamed_1
	.quad	.L__unnamed_2
	.quad	.L__unnamed_3
	.quad	.L__unnamed_4
	.size	.L__unnamed_5, 32

	.type	.L__unnamed_6,@object           # @5
	.section	.rodata,"a",@progbits
	.p2align	3
.L__unnamed_6:
	.quad	0                               # 0x0
	.size	.L__unnamed_6, 8

	.type	.L__unnamed_7,@object           # @6
	.p2align	3
.L__unnamed_7:
	.quad	4                               # 0x4
	.size	.L__unnamed_7, 8

	.type	.L__unnamed_8,@object           # @7
	.p2align	3
.L__unnamed_8:
	.quad	0                               # 0x0
	.size	.L__unnamed_8, 8

	.type	.L__unnamed_9,@object           # @8
	.p2align	3
.L__unnamed_9:
	.quad	3                               # 0x3
	.size	.L__unnamed_9, 8

	.type	.L__unnamed_10,@object          # @9
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.L__unnamed_10:
	.quad	.L__unnamed_6
	.quad	.L__unnamed_7
	.quad	.L__unnamed_8
	.quad	.L__unnamed_9
	.size	.L__unnamed_10, 32

	.type	.L__unnamed_11,@object          # @10
	.section	.rodata,"a",@progbits
	.p2align	3
.L__unnamed_11:
	.quad	0                               # 0x0
	.size	.L__unnamed_11, 8

	.type	.L__unnamed_12,@object          # @11
	.p2align	3
.L__unnamed_12:
	.quad	4                               # 0x4
	.size	.L__unnamed_12, 8

	.type	.L__unnamed_13,@object          # @12
	.p2align	3
.L__unnamed_13:
	.quad	0                               # 0x0
	.size	.L__unnamed_13, 8

	.type	.L__unnamed_14,@object          # @13
	.p2align	3
.L__unnamed_14:
	.quad	3                               # 0x3
	.size	.L__unnamed_14, 8

	.type	.L__unnamed_15,@object          # @14
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.L__unnamed_15:
	.quad	.L__unnamed_11
	.quad	.L__unnamed_12
	.quad	.L__unnamed_13
	.quad	.L__unnamed_14
	.size	.L__unnamed_15, 32

	.type	.Lstr.224,@object               # @str.224
	.section	.rodata,"a",@progbits
	.p2align	5
.Lstr.224:
	.asciz	"color_temp"
	.size	.Lstr.224, 11

	.type	.L__unnamed_16,@object          # @15
	.p2align	3
.L__unnamed_16:
	.long	0x45674000                      # float 3700
	.long	0x00000000                      # float 0
	.size	.L__unnamed_16, 8

	.type	.Lstr.225,@object               # @str.225
	.p2align	5
.Lstr.225:
	.asciz	"gamma"
	.size	.Lstr.225, 6

	.type	.L__unnamed_17,@object          # @16
	.p2align	3
.L__unnamed_17:
	.long	0x40000000                      # float 2
	.long	0x00000000                      # float 0
	.size	.L__unnamed_17, 8

	.type	.Lstr.226,@object               # @str.226
	.p2align	5
.Lstr.226:
	.asciz	"contrast"
	.size	.Lstr.226, 9

	.type	.L__unnamed_18,@object          # @17
	.p2align	3
.L__unnamed_18:
	.long	0x3f800000                      # float 1
	.long	0x00000000                      # float 0
	.size	.L__unnamed_18, 8

	.type	.Lstr.227,@object               # @str.227
	.p2align	5
.Lstr.227:
	.asciz	"sharpen_strenght"
	.size	.Lstr.227, 17

	.type	.L__unnamed_19,@object          # @18
	.p2align	3
.L__unnamed_19:
	.long	0x3f800000                      # float 1
	.long	0x00000000                      # float 0
	.size	.L__unnamed_19, 8

	.type	.Lstr.228,@object               # @str.228
	.p2align	5
.Lstr.228:
	.asciz	"blackLevel"
	.size	.Lstr.228, 11

	.type	.L__unnamed_20,@object          # @19
	.p2align	3
.L__unnamed_20:
	.long	25                              # 0x19
	.long	0                               # 0x0
	.size	.L__unnamed_20, 8

	.type	.Lstr.229,@object               # @str.229
	.p2align	5
.Lstr.229:
	.asciz	"whiteLevel"
	.size	.Lstr.229, 11

	.type	.L__unnamed_21,@object          # @20
	.p2align	3
.L__unnamed_21:
	.long	1023                            # 0x3ff
	.long	0                               # 0x0
	.size	.L__unnamed_21, 8

	.type	.L__unnamed_22,@object          # @21
	.p2align	3
.L__unnamed_22:
	.quad	0                               # 0x0
	.size	.L__unnamed_22, 8

	.type	.L__unnamed_23,@object          # @22
	.p2align	3
.L__unnamed_23:
	.quad	2592                            # 0xa20
	.size	.L__unnamed_23, 8

	.type	.L__unnamed_24,@object          # @23
	.p2align	3
.L__unnamed_24:
	.quad	0                               # 0x0
	.size	.L__unnamed_24, 8

	.type	.L__unnamed_25,@object          # @24
	.p2align	3
.L__unnamed_25:
	.quad	1968                            # 0x7b0
	.size	.L__unnamed_25, 8

	.type	.L__unnamed_26,@object          # @25
	.p2align	3
.L__unnamed_26:
	.quad	0                               # 0x0
	.size	.L__unnamed_26, 8

	.type	.L__unnamed_27,@object          # @26
	.p2align	3
.L__unnamed_27:
	.quad	3                               # 0x3
	.size	.L__unnamed_27, 8

	.type	.L__unnamed_28,@object          # @27
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.L__unnamed_28:
	.quad	.L__unnamed_22
	.quad	.L__unnamed_23
	.quad	.L__unnamed_24
	.quad	.L__unnamed_25
	.quad	.L__unnamed_26
	.quad	.L__unnamed_27
	.size	.L__unnamed_28, 48

	.type	.L__unnamed_29,@object          # @28
	.p2align	4
.L__unnamed_29:
	.quad	.Lstr.205
	.long	1                               # 0x1
	.long	2                               # 0x2
	.byte	1                               # 0x1
	.byte	16                              # 0x10
	.short	1                               # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L__unnamed_5
	.quad	.Lstr.204
	.long	1                               # 0x1
	.long	2                               # 0x2
	.byte	2                               # 0x2
	.byte	32                              # 0x20
	.short	1                               # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L__unnamed_10
	.quad	.Lstr.203
	.long	1                               # 0x1
	.long	2                               # 0x2
	.byte	2                               # 0x2
	.byte	32                              # 0x20
	.short	1                               # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L__unnamed_15
	.quad	.Lstr.224
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	2                               # 0x2
	.byte	32                              # 0x20
	.short	1                               # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.L__unnamed_16
	.quad	0
	.quad	.Lstr.225
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	2                               # 0x2
	.byte	32                              # 0x20
	.short	1                               # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.L__unnamed_17
	.quad	0
	.quad	.Lstr.226
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	2                               # 0x2
	.byte	32                              # 0x20
	.short	1                               # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.L__unnamed_18
	.quad	0
	.quad	.Lstr.227
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	2                               # 0x2
	.byte	32                              # 0x20
	.short	1                               # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.L__unnamed_19
	.quad	0
	.quad	.Lstr.228
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.short	1                               # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.L__unnamed_20
	.quad	0
	.quad	.Lstr.229
	.long	0                               # 0x0
	.long	0                               # 0x0
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.short	1                               # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.L__unnamed_21
	.quad	0
	.quad	.Lstr
	.long	2                               # 0x2
	.long	3                               # 0x3
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.short	1                               # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L__unnamed_28
	.size	.L__unnamed_29, 640

	.type	.Lstr.230,@object               # @str.230
	.section	.rodata,"a",@progbits
	.p2align	5
.Lstr.230:
	.asciz	"x86-64-linux-avx-avx2-f16c-fma-sse41"
	.size	.Lstr.230, 37

	.type	.Lstr.231,@object               # @str.231
	.p2align	5
.Lstr.231:
	.asciz	"camera_pipe"
	.size	.Lstr.231, 12

	.type	.Lcamera_pipe_metadata_storage,@object # @camera_pipe_metadata_storage
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.Lcamera_pipe_metadata_storage:
	.long	1                               # 0x1
	.long	10                              # 0xa
	.quad	.L__unnamed_29
	.quad	.Lstr.230
	.quad	.Lstr.231
	.size	.Lcamera_pipe_metadata_storage, 32

	.type	.Lswitch.table.halide_type_to_string,@object # @switch.table.halide_type_to_string
	.p2align	3
.Lswitch.table.halide_type_to_string:
	.quad	.L.str.13.76
	.quad	.L.str.14.75
	.quad	.L.str.15.74
	.quad	.L.str.16.73
	.size	.Lswitch.table.halide_type_to_string, 32

	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.ident	"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"
	.section	".note.GNU-stack","",@progbits
