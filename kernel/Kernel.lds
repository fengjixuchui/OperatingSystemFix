/***************************************************
*  OUTPUT_FORMAT("elf64-x86-64","elf64-x86-64","elf64-x86-64")
*    将文件的三种输出格式都设置为x86处理器的64位体系结构
*
*  OUTPUT_ARCH(i386:x86-64)
*    输出文件的体系结构为i386:x86-64
*
*  ENTRY(_start)
*    将_start设置为程序的入口点地址,_start在head.S文件中
*
*
*
***************************************************/

OUTPUT_FORMAT("elf64-x86-64","elf64-x86-64","elf64-x86-64")
OUTPUT_ARCH(i386:x86-64)
ENTRY(_start)
SECTIONS
{

	. = 0xffff800000000000 + 0x100000;
	.text :
	{
		_text = .;
		*(.text)

		_etext = .;
	}
	. = ALIGN(8);
	.data :
	{
		_data = .;
		*(.data)
		
		_edata = .;
	}
	.bss :
	{
		_bss = .;
		*(.bss)
		_ebss = .;
	}

	_end = .;
}