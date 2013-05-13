	.file	"code.cpp"
	.intel_syntax noprefix
	.text
	.p2align 4,,15
	.globl	_Z8th_yieldv
	.type	_Z8th_yieldv, @function
_Z8th_yieldv:
.LFB0:
	.cfi_startproc
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	call	_Z21storeAndGoToSchedulerv
	.cfi_endproc
.LFE0:
	.size	_Z8th_yieldv, .-_Z8th_yieldv
	.ident	"GCC: (SUSE Linux) 4.7.2 20130108 [gcc-4_7-branch revision 195012]"
	.section	.comment.SUSE.OPTs,"MS",@progbits,1
	.string	"Ospwg"
	.section	.note.GNU-stack,"",@progbits
