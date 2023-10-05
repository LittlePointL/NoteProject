-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: notedb
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `notecontent`
--

DROP TABLE IF EXISTS `notecontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notecontent` (
  `uid` int NOT NULL AUTO_INCREMENT COMMENT '唯一标识符主键',
  `subjectid` int NOT NULL COMMENT '对应的科目 id',
  `content` json DEFAULT NULL COMMENT '笔记内容',
  PRIMARY KEY (`uid`),
  KEY `subjectid` (`subjectid`),
  CONSTRAINT `notecontent_ibfk_1` FOREIGN KEY (`subjectid`) REFERENCES `subjectinfo` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notecontent`
--

LOCK TABLES `notecontent` WRITE;
/*!40000 ALTER TABLE `notecontent` DISABLE KEYS */;
INSERT INTO `notecontent` VALUES (5,1,'[{\"#pragma once\": \"//预处理声明,表示这个文件被包含之后不能再次包含\\n//防止头文件被重复包含和编译,头文件重复包含会增加程序大小,重复编译增加编译时间\\n#ifndef\\n#define \\n\\n#endif\\n\\n### #include\\n\\n#include<>//到系统指定目录寻找头文件\\n#include\\\" \\\"//到项目所在目录寻找头文件\"}, {\"main\": \"//return 给出一个返回值利于后续给出自定义异常\\nint main(int argc,char *argv[])\\n//argc: 程序运行时发送给 main 函数的命令行参数的个数\\n//argv[ ]: 字符指针数组,发送给 main 函数的几个参数\"}, {\"编译过程\": \"预处理:头文件包含,宏替换,条件编译,删除注释\\n编译:词法,语法,语义分析等\\n汇编:将汇编文件转换成二进制目标文件\\n链接:将项目中的各个二进制文件+所需的库+启动代码链接成可执行文件\"}, {\"#define 和 const\": \"#define\\n编译器处理方式:预处理阶段展开,不能对宏定义进行调式\\n类型和安全检查:没有类型,不做任何类型检查\\n存储方式:仅仅是代码展开,在多个地方进行字符串替换,不会分配内存,存储于程序的代码段中\\n定义域:不受定义域限制\\n编译器处理方式:在预处理阶段展开,不能对宏定义进行调式\\n\\nconst\\n编译器处理方式:编译阶段使用\\n类型和安全检查:有具体类型,在编译阶段会执行类型检查\\n存储方式:会分配内存,但只维持一份拷贝,存储于程序的数据段中\\n定义域:只在定义域内有效\\n编译器处理方式:在编译阶段使用\"}, {\"全局&局部变量\": \"\\n全局变量是整个程序都可访问的变量,?存期在整个程序从运?到结束\\n局部变量存在于模块中,只有所在模块可以访问,其他模块不可直接访问,模块结束局部变量消失,所占据的内存释放\\n操作系统和编译器,可能是通过内存分配的位置来知道的\\n全局变量分配在全局数据段并且在程序开始运?的时候被加载\\n局部变量则分配在堆栈??\"}, {\"typedef 和 define\": \"\\ntypedef\\n?法:定义?种数据类型的别名\\n执?时间:编译过程的?部分\\n类型检查:是\\n作?域:作?域限定\\ndefine\\n?法:定义常量,以及书写复杂使?频繁的宏\\n执?时间:是预编译的部分,发?在编译之前,只是简单的进?字符串的替换\\n类型检查:否\\n作?域:不受作?域约束\"}, {\"static\": \"\\n静态局部变量:调用多次时只有第一次才经历变量定义和初始化\\n静态全局变量:只初始化一次,作用域在当前文件/模块中\\n静态函数:只在本模块或文件中使用。被限定了范围\"}, {\"sizeof\": \"\\n参数可以是数据类型也可以是变量\\n编译器在编译时就计算出了 sizeof 的结果\\n数据类型占内存的大小\\n字符串字面量长度+1\\n数组做参数不退化\"}, {\"strlen\": \"\\n只能以结尾为\\\"\\u0000\\\"的字符串作为参数\\n必须在运行时才能计算出来\\n字符串长度\\n字符串字面量长度\\n数组做参数退化为指针\"}, {\"union\": \"\\n允许在同一内存位置存储不同数据类型的变量,这使得可以在一段内存中交替存储不同类型的数据\\n所有成员共享同一块内存,因此占用的内存空间等于最大成员的大小\\n在任何给定时刻只能存储其中一个成员的值,因此节省内存\\n不提供类型检查,访问成员时,必须确保使用正确的类型,否则可能导致数据损坏或错误\\n优化内存占用和处理底层二进制数据\"}, {\"内存分配空间\": \"\\n称已经分配给用户的内存区统称为\\\"占用块\\\"\\n还未分配出去的内存区统称为\\\"空闲块\\\"\\n栈:非静态局部变量,函数参数,返回值向下增长,空间有限\\n堆:程序运行时动态内存分配向上增长,空间很大\\n数据段:全局数据,静态数据\\n代码段:可执行的代码,只读常量\\n内存映射段:高效的I/O映射方式,用于装载一个共享的动态内存库\\n\"}, {\"内存分配方式\": \"\\n静态存储区域:内存在程序编译的时候就已经分配好,这块内存在程序的整个运行期间都存在\\n表现形式:全局变量,static 变量\\n\\n在栈上创建:在执行函数时,都可以在栈上创建,函数执行结束时这些存储单元自动被释放,栈内存分配运算内置于处理器的指令集中,效率很高,但是分配的内存容量有限\\n表现形式:函数内局部变量的存储单元\\n\\n从堆上分配:亦称动态内存分配,申请任意多少的内存,程序员自己负责在何时用 free 或 delete 释放内存,动态内存的生存期由程序员决定,使用非常灵活\\n表现形式:程序在运行的时候用 malloc 或 new\"}, {\"内存错误\": \"\\n内存分配未成功,却使用了它\\n内存分配虽然成功,但是尚未初始化就引用它\\n内存分配成功并且已经初始化,但操作越过了内存的边界\\n忘记了释放内存,造成内存泄露\\n释放了内存却继续使用它\"}, {\"内存对策\": \"\\n定义指针时,先初始化为 nullptr\\n用 malloc 或 new 申请内存之后,立即检查指针值是否为 nullptr\\n为数组和动态内存赋初值,防止将未被初始化的内存作为右值使用\\n避免数字或指针的下标越界\\n动态内存的申请与释放必须配对,防止内存泄漏\\n用 free 或 delete 释放了内存之后，立即将指针设置为 nullptr\\n使用智能指针\"}, {\"内存泄露\": \"\\nnew 和 malloc 申请资源使用后,没有用delete和free释放\\n子类继承父类时,父类析构函数不是虚函数\\nWindows 句柄资源使用后没有释放\"}, {\"堆和栈\": \"\\n栈由系统自动分配\\n堆需要程序员自己申请,并指明大小\\n栈2Windows 是向低地址扩展的数据结构,是一块连续的内存的区域,且空间较小\\n堆向高地址扩展的数据结构,是不连续的内存区域,因为系统是用链表来存储空闲内存地址,空间较大\\n栈由系统自动分配速度较快,但是程序员是无法控制的\\n堆是由动态分配释放的内存,一般速度较慢\\n栈存储非静态局部变量和形参和返回值\\n堆存储的具体内容由程序员自己分配\\n\"}, {\"volatile\": \"\\n用于告诉编译器该变量的值可能随时发生变化,因此在编译器优化的过程中不能对该变量进行优化\\n通常情况下,编译器为了提高程序的执行效率,会对变量进行一些优化,如缓存变量的值,重新排序指令等\\n使用 volatile 关键字修饰的变量,在每次使用时都会从内存中读取最新的值,而不是使用之前缓存的值同\\n在对该变量进行赋值时,也会立即写入到内存中,而不是先缓存起来\\n\"}, {\"特殊指针\": \"\\nNULL指针:指示指针未指向有效位置\\n悬空指针:没有指向正确位置的指针\\n野指针:没有被初始化的指针\\n\\n//常量指针修饰 type 值\\n//内容不可以改,指向可以改,不可用直接 *ptr 改变内容\\nconst type * ptr\\n\\n//指针常量修饰 ptr 指针\\n//内容可以改,指向不可以改,可用直接 *ptr 改变内容\\ntype * const ptr\"}, {\"void 指针\": \"\\nvoid 指针是一个万能指针,不是空指针\\n\\n它可以表示任意一个类型的指针\\n\\n使用场景\\n用空指针终止对递归数组结构的间接引用\\n用空指针作为函数调用失败时的返回值\\n用空指针作为警戒值\"}, {\"结构体内存对齐\": \"\\nstruct 存在内存对齐\\n1.平台原因\\n不是所有的硬件平台都能访问任意地址上任意数据的,某些硬件平台只能在某些地址处取某些特定类型的数据,否则抛出硬件异常\\n2.性能原因\\n数据结构应该尽可能地在自然边界上对齐\\n访问未对齐的内存,处理器需要做两次内存访问,而对齐的内存仅需要一次访问\\n\\n对齐具体的做法是\\n让占用空间小的成员尽量集中在一起\\n先声明的字节大小并需填充之后首个大于自己本身的字节数据\\n结构体成员的起始地址为系统默认对齐字节数和成员大小较小的整数倍\\n对齐完毕之后结构体的大小一定是结构体最大数据的整数倍\"}, {\"变量位移操作\": \"\\n//将 x 最右边的 n 位清零\\nx & ( ~0 << n )\\n//获取 x 的第 n 位值\\n( x >> n & 1 )\\n//获取 x 的第 n 位的幂值\\nx & ( 1 << ( n - 1 ) )\\n//仅将第 n 位置 1 \\nx | ( 1 << n )`\\n//将 x 最高位至第 n 位清零\\nx & ( ( 1 << n ) - 1 )\\n//将第 n 位至第 0 位清 0\\nx & ( ~ ( ( 1<< ( n+1 ) ) - 1 ) )\"}, {\"静动态链接库\": \"\\n静态链接库\\n描述:是在编译链接时直接将需要的执行代码拷贝到调用处\\n优点:程序在发布时不需要依赖库,可以独立执行\\n缺点:程序的体积会相对较大\\n动态链接库\\n描述:通过记录一系列符号和参数,在程序运行或加载时传递给操作系统\\n优点:多个程序可以共享同一个动态库,节省资源\\n缺点:由于运行时加载,可能影响程序的前期执行性能\"}]'),(6,2,'[{\"区分\": \"\\n#ifdef __cplusplus\\ncout<<\\\"C++\\\";\\n#else\\ncout<<\\\"C\\\";\\n#endif\"}, {\"C和C++的区别\": \"\\nC\\n面向过程的语言\\nC中的malloc/free库函数\\n只有指针\\n只有结构体\\n只有函数重载\\nC++\\n面向对象的语言\\n引入new/delete运算符\\n引入引用的概念\\n引入类的概念\\n引入动态联编\\n\"}, {\"C++的优势\": \"\\nC++保留有指针操作,其他编程语言差不多都舍弃或者不显式使用指针了\\n由程序员自己显式管理内存空间释放分配\\n所以C++的操作是直接取址操作贴近于硬件,性能上高于其他编程语言\\nC++可以嵌入任何现代处理器中,几乎所有的操作系统都支持C++,跨平台性非常好\"}, {\"C++和Java\": \"\\n1. 和JAVA相比,C++具有极高的风格自由,而JAVA的编写格式就显得格外束缚\\n2. JAVA是纯面向对象语言,所有的函数,变量均是在类里面完成\\n3. 而C++因为兼容C语言,保留有面向过程,比如仍然保留有全局变量这个概念\\n4. C++支持多继承;JAVA不支持多继承\\n5. C++自己管理内存;JAVA内置有GC机制\\n6. C++还有运算符重载;JAVA中没有\\n7. C++支持强制自动转型;JAVA中不行\\n8. JAVA: Web网站,Andriod,大数据;C++: 游戏开发,音视频开发,驱动开发\"}, {\"面向对象\": \"\\n封装：将客观事物封装成抽象的类，而类可以把自己的数据和方法暴露给可信的类或者对象，对不可信的类或对象则进行信息隐藏\\n继承：可以使用现有类的所有功能，并且无需重新编写原来类即可对功能进行扩展\\n多态：一个类实例的相同方法在不同情形下有不同的表现形式，使得不同内部结构的对象可以共享相同的外部接口\"}, {\"命名空间\": \"\\nusing namespace std;\\n\\n//使用命名空间namespace std\\n{\\n/*不推荐这样子使用的原因是一次性引入所有的std命名空间会造成命名空间污染\\n\\n这是不符合namespace 的最小包含原则初衷的*/\\n}\"}, {\"指针和引用\": \"\\n引用必须被初始化,指针不必\\n引用初始化以后不能被改变,指针可以改变所指的对象\\n不存在指向空值的引用,但是存在指向空值的指针\"}, {\"new 和 delete \": \"\\nnew/delete 是 C++ 关键字,需要编译器支持\\nnew 操作符申请内存分配时无需指定内存块的大小,编译器会根据类型信息自行计算\\n返回的是对象类型的指针,无需类型转换\\n分配失败抛出 bac_alloc 异常\\n构造析构\\n允许重载\\n从自由存储区上为对象动态分配内存空间\\n自由存储是 C++ 中通过 new 与 delete 动态分配和释放对象的存储区,是一个逻辑概念\\n堆是 C 语言和操作系统的术语,是操作系统维护的一块动态分配内存,是一个物理概念\\nnew 所申请的内存区域在C++中称为自由存储区,藉由堆实现的自由存储,可以说new所申请的内存区域在堆上\"}, {\"深拷贝和浅拷贝\": \"\\n浅拷贝是类自带的拷贝构造函数:将拷贝对象数据成员的值直接赋值给新的对象\\n深拷贝是要自己显式定义拷贝构造函数,将在堆区开辟的数据成员手动复制赋值\\n\\n当数据成员中有指针时,浅拷贝不可行,两类指针将指向同一个地址\\n在其中一个对象析构之后,另一个指针会发生指针悬挂的现象\\n如果一个类拥有指针类型的成员变量,那么绝大部分情况下就需要深拷贝\\n深拷贝出来的对象的数据成员是指向完全不同的内存地址\\n\"}, {\"构造行为以及顺序\": \"\\n1. 虚基类构造函数被调用,以继承顺序从左到右（如果存在虚基类）\\n2. 上一层非虚基类构造函数被调用,以继承顺序从左到右而非成员初值列上写的顺序;显示调用或默认构造（如果存在非虚基类）\\n3. 虚表指针指向适当虚表(如果类存在虚表指针)\\n4. 类数据成员初始化,以声明的顺序而非成员初值列上写的顺序\\n5. 执行用户所写代码\"}, {\"析构行为以及顺序\": \"\\n1. 析构函数本体被执行(用户代码)\\n2. 数据成员的析构函数,以声明顺序的逆序(如果有)\\n3. 虚表指针被重设指向上一层基类虚表（如果有）\\n4. 上一层非虚基类析构函数被调用,以继承顺序的逆序\\n5. 如果当前析构的类是最尾端的类且有虚基类,调用虚基类析构函数\"}, {\"static\": \"\\n局部变量:静态存储区分配内存,首次初始化一次,其生命周期与程序相同\\n全局变量:静态存储区分配内存,文件外是不可见的\\n函数:文件外是不可见的\\n成员变量:所有对象都只维持一份拷贝,可以实现不同对象间的数据共享\\n成员函数:不接受this指针,只能访问类的静态成员\"}, {\"空类\": \"\\n1. 缺省构造函数\\n2. 缺省拷贝构造函数\\n3. 省析构函数\\n4. 赋值运算符\\n5. 取址运算符\\n6. 取址运算符const\\n7. 移动构造函数\\n8. 拷贝移动构造函数\"}, {\"类大小\": \"\\n类只是一种类型定义,对象才有大小这个概念\\n因为空类也可以被实例化,所以必须被优化成1字节\\n类的大小与普通数据成员,成员常量,虚函数,虚继承有关\\n类大小与普通成员函数,静态成员函数,静态数据成员,静态常量数据成员完全无关\\nclass 遵循和 struct 相同的内存对齐原则\"}, {\"虚函数\": \"\\n指向虚函数表的指针永远在对象的最前面\\n每当创建一个包含有虚函数的类或从包含虚函数的类派生一个类时,编译器就会为这个类创建一个虚函数表保存该类的所有虚函数的地址\\n虚函数表的作用就是保存自己类中所有虚函数的地址\\n在每个带有虚函数的类中,编译器有一个内置指针--虚指针,指向这个对象的虚函数表首地址\\n当构造该派生类对象时,其虚指针被初始化指向该派生类的虚函数表\\n在使用函数的时候根据实例化对象所指向的对象调用在虚函数表中相应的同名函数\\n这是完整的动态联编的过程\"}, {\"虚析构函数\": \"\\n不是虚析构\\n由于类的多态性,基类指针可以指向派生类对象,如果删除该基类的指针,由于编译器实施静态绑定,在删除基类指针只调用基类的析构函数而不调用派生类析构函数,派生类的对象析构不完全\\n造成内存泄露\\n是虚析构\\n如果删除该基类的指针,就会调用该指针指向的派生类析构函数,而派生类的析构函数又自动调用基类的析构函数\\n整个派生类的对象完全被释放\"}, {\"运算符重载\": \"\\n/*\\n以下运算符不能重载\\n成员访问运算符\\n.\\n\\n成员指针访问运算符\\n->\\n\\n作用域运算符\\n::\\n\\nsizeof 运算符\\nsizeof()\\n\\n三目运算符\\n?:\\n\\n不能重载为类的友元函数\\n=\\n()\\n[]\\n->\\n*/\"}, {\"菱形继承\": \"\\nvbptr virtual base pointer 虚基类表\\n当菱形继承时,有两份相同的数据,需要加以作用域区分\\n由于菱形继承导致数据有两份,资源浪费\\n在菱形继承加上虚继承即可解决\"}, {\"__declspec\": \"\\n//visual studio 生成 dll\\n//宏定义导出\\n#ifdef BHDLL__\\n/*\\n如果没有定义DLLH 就定义 DLLH __declspec(dllexport)\\n*/\\n#define BHDLL __declspec(dllexport)//导出\\n#else\\n#define BHDLL __declspec(dllimport)//导入\\n#endif // DLLH__//如果没有定义DLLH 就定义 DLLH \\n\\n//导出类\\nclass BHDLL dllH\\n{\\npublic:\\n  int mul(int a, int b);\\n  int div(int a, int b);\\n};\"}, {\"动态调用 dll\": \"\\n//是 Windows 操作系统中用于 DLL 管理的函数\\nFreeLibrary();\\nLoadLibraryEx();\\n\\nLoadLibraryEx\\nLoadLibraryEx 函数用于加载 DLL 到当前进程的地址空间,使得进程可以使用 DLL 中的函数和数据\\n它可以接受多个标志参数,以确定如何加载 DLL\\n如果加载成功,函数返回 DLL 的句柄,否则返回 NULL\\nFreeLibrary\\nFreeLibrary 函数用于从当前进程中卸载一个已加载的 DLL\\n当不再需要使用某个 DLL 时,可以释放它占用的内存资源,并允许其他进程或线程加载或卸载它\\n如果成功卸载 DLL,则返回非零值,否则返回零\"}, {\"STL 容器\": \"\\nvector\\n实现原理:动态数组\\n内存大小:自动调整大小\\n插入特点:可能引起重新分配,尾部快速\\n删除特点:可能引起重新分配,尾部快速\\n访问特点:随机访问高效\\n使用场景频繁进行随机访问,动态添加和删除元素\\nlist\\n实现原理:链表\\n内存大小:不需要连续内存\\n插入特点:高效\\n删除特点:高效\\n访问特点:很慢,不支持随机访问\\n使用场景:频繁插入和删除元素,不需要随机访问的场景\\ndeque\\n实现原理:双端队列\\n内存大小:自动调整大小\\n插入特点:队头和队尾高效\\n删除特点:队头和队尾高效\\n访问特点:支持随机访问\\n使用场景:频繁在头部或尾部添加或删除操作,同时需要随机访问的场景\\nset\\n实现原理:基于红黑树的不重复有序集合\\n内存大小:不需要连续内存\\n插入特点:高效\\n删除特点:高效\\n访问特点:很慢\\n使用场景:需要维护一组有序,不重复元素\\nmap\\n实现原理:基于红黑树的有序不重复键值对集合\\n内存大小:不需要连续内存\\n插入特点:高效\\n删除特点:高效\\n访问特点:很慢\\n使用场景:需要通过唯一键快速查找和访问对应值\"}, {\"强制类型转换\": \"\\nstatic_cast: 基本类型转换\\n用于非多态类型的转换(静态转换),编译器隐式执行的任何类型转换都可以用 static_cast,但它不能用于两个不相关的类型进行转换\\nreinterpret_cast: 不同类型的指针\\n为操作数的位模式提供较低层次的重新解释,用于将一种类型转换为另一种不同的类型\\nconst_cast: 去掉 const 属性\\n用于删除变量的 const 属性,方便赋值\\ndynamic_cast: 多态类之间的类型转换用 dynamic_cast\\n向上转型: 子类对象指针->父类指针/引用(不需要转换,赋值兼容性规则)\\n向下转型: 父类对象指针->子类指针/引用(用 dynamic_cast )转型是安全的\"}, {\"左值右值\": \"\\n| 左值:存储在内存中,有明确储存地址,可以使用&运算符的值\\n| 右值:可以提供数据值的数据,不可以取地址\\n| 纯右值:非引用返回的临时变量,运算表达式产生的临时变量\\n| 将亡值:与右值引用相关的表达式,T&& 类型函数的返回值,std::move 的返回值\"}, {\"移动语义\": \"\\n右值引用具有移动语义:\\n    移动语义可以将资源(堆,系统对象等)通过浅拷贝从一个对象转移到另一个对象这样就能减少不必要的临时对象的创建,拷贝以及销毁\\n    可以大幅提高 C++ 应用程序的性能\"}, {\"完美转发\": \"\\n从一个函数传递给另一个函数的形参属性不变\\n/*\\n移动语义允许在不进行深拷贝的情况下,将资源从一个对象转移到另一个对象,从而提高了性能\\n*/\\n\\n//将值强制转化为右值\\ntemplate<class T> constexpr \\ntypename std::remove_reference<T>::type&& move(T&& t) noexcept{\\n\\n}\\n\\n/*\\n保持参数的值类别进行转发\\n*/\\n\\n//将左右值引用转化成左右值\\ntemplate<class T> T&& forward(typename std::remove_reference<T>::type& t) noexcept{\\n    \\n}\"}]'),(7,3,'[{\"JDK\": \"\\nJDK: Java Development Kit ,Java 开发工具包,提供了 Java 的开发环境和运行环境\\nJRE: Java Runtime Environment ,Java 运行环境,为 Java 的运行提供了所需环境\\n具体来说 JDK 其实包含了 JRE,同时还包含了编译 Java 源码的编译器 Javac,还包含了很多 Java 程序调试和分析的工具\"}, {\"特点\": \"\\n跨平台性:Java 的一大特点是它的跨平台性,一次编写，到处运行,这意味着可以编写一次 Java 代码,然后在不同操作系统上运行,只需安装适当的 Java 虚拟机\\n面向对象:Java 是一种面向对象的编程语言,它支持面向对象的编程概念,如封装,继承和多态\\n安全性:Java 具有内置的安全性功能,可以防止许多常见的安全漏洞,如缓冲区溢出和内存泄漏\\n强类型:Java 是一种强类型语言,要求在编译时进行严格的类型检查,这有助于减少程序错误\\n多线程支持:Java 提供了多线程编程的支持.使开发者能够编写多任务并行执行的程序\\n大量的库和框架:Java 拥有丰富的标准库,还有许多第三方库和框架可供开发者使用,加速开发过程\\n自动内存管理:Java 使用垃圾回收器自动管理内存,开发者不需要手动分配和释放内存,有助于减少内存泄漏问题\"}, {\"应用领域\": \"\\nWeb应用程序开发:Java 是构建企业级Web应用的热门选择,使用 Java 的框架和技术,如 Spring 和 Java EE,开发人员可以构建强大,可伸缩和安全的 Web 应用\\n移动应用开发:Java 在 Android 平台上是主要的编程语言,开发者可以使用 Java编写 Android 应用程序,覆盖了移动应用领域\\n桌面应用程序:Java 提供了跨平台的 GUI 开发能力,使用 Swing 或 JavaFX 等工具可以创建桌面应用程序,这些应用程序可以在不同操作系统上运行\\n嵌入式系统:Java 可以用于嵌入式系统的开发,尤其是具有高性能要求的嵌入式系统\\n大数据和云计算:Java 在大数据处理和云计算领域有着广泛的应用,例如使用 Hadoop 和 Spark 等框架进行数据分析和处理\\n游戏开发:虽然不如 C++ 等语言在游戏开发中流行,但 Java 仍然用于开发一些移动游戏和桌面游戏\\n企业应用:Java 在构建企业级应用方面非常强大,可以用于开发 ERP 系统,CRM 系统和电子商务平台等\\n科学计算:Java 也用于科学计算领域,特别是在需要跨平台支持的情况下\"}, {\"final,finally,finalize\": \"\\nfinal\\n修饰类时,意味着它不能再派生出新的子类,即不能被继承;修饰变量时,该变量使用中不被改变,必须在声明时给定初值,在引用中只能读取不可修改,即为常量;修饰方法时,也同样只能使用,不能在子类中被重写\\nfinally\\n通常放在 try…catch 的后面构造最终执行代码块,这就意味着程序无论正常执行还是发生异常,这里的代码只要 JVM 不关闭都能执行,可以将释放外部资源的代码写在finally块中\\nfinalize:Object 类中定义的方法, Java 中允许使用 finalize() 方法在垃圾收集器将对象从内存中清除出去之前做必要的清理工作\"}, {\"面向对象\": \"\\n继承:程序中的继承性是指子类拥有父类的全部特征和行为,这是类之间的一种关系 Java 只支持单继承\\n封装:Java 语言的基本封装单位是类.由于类的用途是封装复杂性,所以类的内部有隐藏实现复杂性的机制\\n多态性:一个接口,多个方法,多态性体现在父类中定义的属性和方法被子类继承后,可以具有不同的属性或表现方式\\n\\n[public][abstract|final]class<class_name>[extends<class_name>][implements<interface_name>] {\\n}\"}, {\"生命周期\": \"\\n1. 加载 (loading)\\n2. 验证 (Verifaction)\\n3. 准备 (Preparation)\\n4. 解析 (Resolution)\\n5. 初始化 (Initialization)\\n6. 使用 (Using)\\n7. 卸载 (Unloading)\"}, {\"访问控制符\": \"\\n类的访问控制符:是否可以 被 程序里的其他部分访问的修饰符\\n每个 Java 程序的主类都必须是 public 类\\n|  | private| friendly| protected| public| \\n| ---- | ---- | ---- | ---- | ---- | \\n| 同一包中的其他类  | 不可访问 | 可访问 | 可访问 | 可访问 | \\n| 不同包中的子类  | 不可访问 | 不可访问 | 可访问 | 可访问 | \\n| 不同包中的非子类  | 不可访问 |不可访问 | 不可访问 | 可访问 | \"}, {\"static\": \"\\n成员变量\\n内存区域:堆内存\\n生命周期:与对象共存亡,随着对象创建而存在,随着对象被回收而释放\\n静态变量\\n内存区域:方法区\\n生命周期:与类共存亡,随着类的加载而存在,随着类的消失而消失\"}, {\"abstract 和 interface\": \"\\nabstract:\\nabstract() 必须存在于抽象类中\\nabstract() 没有方法体\\n子类必须重写父类所有的抽象方法\\ninterface:\\nimplements 用来实现接口  \\n可以实现多个接口  \\n接口只能继承接口  \\n接口没有构造方法,不能被实例化  \\n子类必须重写父类所有的抽象方法  \\n接口中声明的变量其实都是常量\\n变量将隐式地声明为 public static final  \\n只有一个抽象方法是函数式接口\"}, {\"Object 方法\": \"\\n//返回该对象的字符串表示\\nString toString()\\n//创建并返回此对象的一个副本\\nprotected Object clone()\\n//指示某个其他对象是否与此对象\\\"相等\\nboolean equals(Object obj)\\n//返回该对象的哈希码值\\nint hashCode()\\n//当垃圾回收器确定不存在对该对象的更多引用时，由对象的垃圾回收器调用此方法。\\nprotected void finalize()\\n//返回一个对象的运行时类\\nClass<? extendsObject> getClass()\\n//唤醒在此对象监视器上等待的单个线程\\nvoid notify()\\n//唤醒在此对象监视器上等待的所有线程\\nvoid notifyAll()\\n//导致当前的线程等待,直到其他线程调用此对象的 notify()\\nvoid wait()\"}, {\"深拷贝和浅拷贝\": \"\\n浅拷贝:\\n对于基础数据类型:直接复制数据值\\n对于引用数据类型:只是复制了对象的引用地址,新旧对象指向同一个内存地址\\n深拷贝:\\n对于基础数据类型:直接复制数据值\\n对于引用数据类型:开辟新的内存空间,在新的内存空间里复制一个一模一样的对象,新老对象不共享内存\\n\\n深拷贝相比于浅拷贝速度较慢并且花销较大\"}, {\"反射\": \"\\n在运行状态中\\n对于任意一个类都能够知道这个类的所有属性和方法\\n对于任意一个对象都能够调用它的任意方法和属性\\n程序在运行时能够获取自身的信息\\n只要给定类的名字,就可以通过反射机制来获得类的所有信息\\n优点\\n运行时动态获取类的实例\\n大大提高系统的灵活性和扩展性\\n缺点\\n会消耗一定的系统资源.\\n调用方法时可以忽略权限检查\\n\"}, {\"注解\": \"\\n代码里的特殊标记\\n可以在编译,类加载和运行时被读取,执行相应的处理\\n@Override;//检测方法是重写方法\\n@Deprecated;//元素已过时\\n@SuppressWarnings;//抑制编译器的警告\\n@SafeVarargs;//指定方法参数为泛型\\n@FunctionalInterface;//接口必须是函数式接口\\n\"}, {\"Spring\": \"\\n泛指以 Spring Framework 为核心的 Spring 技术栈\\n分层的面向切面的 Java 应用程序的一站式轻量级解决方案\\nSpring Data:相对统一的方式访问位于不同类型数据库中的数据\\nSpring Batch:方便开发出健壮高效的批处理应用程序\\nSpring Security:定制化的身份验证和访问控制框架\\nSpring Mobile:简化移动端 Web 应用的开发\\nSpring Boot:简化 Spring 应用的搭建及开发过程\\nSpring Cloud:分布式系统开发工具包\\n\"}, {\"IoC 和 AOP\": \"\\nIoC : 控制反转\\n把创建对象过程交给 Spring 进行管理\\nAOP : 面向切面编程\\n将那些与业务无关,却为业务模块所共同调用的逻辑封装起来,降低模块间的耦合度\\n\"}, {\"启动流程\": \"\\n1. 初始化Spring容器,注册内置的 BeanPostProcessor 的 BeanDefinition 到容器中\\n2. 将配置类的 BeanDefinition 注册到容器中\\n3. 调用 refresh() 方法刷新容器\\n\"}, {\"生命周期\": \"\\n1. 实例化 Bean\\n2. 依赖注入\\n3. 处理 Aware 接口\\n4. BeanPostProcessor\\n5. InitializingBean\\n6. init-method\\n7. BeanPostProcessor\\n8. DisposableBean\\n9. destroy-method\\n\"}, {\"scope\": \"\\nsingleton:默认值 单例模式\\nprototype:原型模式 创建一个新的 Bean 实例\\nrequest:HTTP 请求 创建一个 Bean 实例\\nsession:同一个 HTTP Session 共享一个 Bean 实例\\napplication:同一个 Web 应用共享一个 Bean 实例\\n\"}, {\"类注解 Bean\": \"\\n@Component:表示容器中的一个组件 Bean\\n@Repository:数据访问层\\n@Service:业务层\\n@Controller:控制层\\n\"}, {\"AOP\": \"\\n切面(Aspect) : 切面是通知和切点的结合。通知和切点共同定义了切面的全部内容\\n连接点(Join point) : 指方法,在 Spring AOP 中,一个连接点插入到应用的正常流程之中，并添加新的行为\\n通知(Advice) : 切面的工作被称为通知\\n切入点(Pointcut) : 切点的定义会匹配通知所要织入的一个或多个连接点\\n引入(Introduction) : 引入允许向现有类添加新方法或属性\\n目标对象(Target Object) : 被一个或者多个切面(aspect)所通知(advise)的对象,通常是一个代理对象\\n织入(Weaving) : 把切面应用到目标对象并创建新的代理对象的过程\\n\"}, {\"通知\": \"\\n切面的工作被称为通知,实际上是程序执行时要通过 SpringAOP 框架触发的代码段\\n\\n前置通知(Before)：在目标方法被调用之前调用通知功能\\n后置通知(After)：在目标方法完成之后调用通知,此时不会关心方法的输出是什么\\n返回通知(After-returning)：在目标方法成功执行之后调用通知\\n异常通知(After-throwing)：在目标方法抛出异常后调用通知\\n环绕通知(Around)：通知包裹了被通知的方法,在被通知的方法调用之前和调用之后执行自定义的行为\\n\"}, {\"设计模式\": \"\\n工厂模式:Spring 使用工厂模式,通过 BeanFactory 和 ApplicationContext 来创建对象\\n单例模式:Bean 默认为单例模式\\n策略模式:针对不同的文件,实现了不同方式的资源获取策略\\n代理模式:Spring的AOP 功能用到了 JDK 的动态代理和 CGLIB 字节码生成技术\\n模板方法:可以将相同部分的代码放在父类中,而将不同的代码放入不同的子类中,用来解决代码重复的问题\\n适配器模式:Spring AOP 的增强或通知使用到了适配器模式\\n观察者模式:Spring 事件驱动模型就是观察者模式的一个经典应用\\n桥接模式:可以根据客户的需求能够动态切换不同的数据源\\n\"}, {\"SpringMVC\": \"\\nSpring MVC是一个基于 Java 的实现了 MVC 设计模式的请求驱动类型的轻量级 Web 框架\\n通过把 Model,View,Controller 分离,将 web 层进行职责解耦,把复杂的 web 应用分成逻辑清晰的几部分\\n简化开发,减少出错,方便组内开发人员之间的配合\\n\"}, {\"MVC\": \"\\nModel-View-Controller (模型-视图-控制器)\\nModel:对请求进行处理,并将结果返回给 Controller\\nView:将请求的处理结果进行渲染,展示在客户端浏览器上\\nController:Model 和 View 交互的纽带\\n\"}, {\"访问接口\": \"\\n/*\\n修饰方法或类作为前端访问接口\\n*/\\n@RequestMapping//通用\\n@PostMapping//提交\\n@PutMapping//更新\\n@DeleteMapping//删除\\n@GetMapping//获取\\n\\nRequestMapping 形参\\n\\nValue:URL 集合\\nname:注释\\nmethod:访问方法 POST,GET,PUT\\nparams:访问接口需要的请求参数集合\\nheaders:请求头信息\\n\"}, {\"数据统一\": \"\\n//注解实现将 conreoller 方法返回对象转化为 json 对象响应给客户\\n@ResponseBody \\n\\n//注解实现接收 http 请求的 json 数据,将 json 转换为 java 对象\\n@RequestBody\\n\"}, {\"返回类型\": \"\\nString\\n模型数据:通过 Model 或 ModelMap 添加数据,以供视图渲染使用\\nJSON:可以使用 @ResponseBody 注解将 Java 对象转换为 JSON 格式,并返回给客户端\\nHTTP状态码:可以使用 ResponseEntity 设置 HTTP 状态码和响应内容\\nView:Controller 可以返回 HTML 模板或页面,通常使用 ModelAndView 或 String 类型返回视图名称\\nXML:Controller 可以返回 XML 数据,通常使用 @ResponseBody 注解并配置适当的消息转换器\\n文件:可以返回文件,例如图片,PDF 等,通常使用 ResponseEntity<byte[]> 或  StreamingResponseBody\\n重定向:可以使用 redirect: 前缀来执行重定向操作\\n\"}, {\"MVC 组件\": \"\\n前端控制器 DispatcherServlet : 接收请求,响应结果,相当于转发器\\n处理器映射器 HandlerMapping : 根据请求的URL来查找 Handler\\n处理器适配器 HandlerAdapter : 负责执行 Handler\\n处理器 Handler : 处理器,需要程序员开发\\n视图解析器 ViewResolver : 进行视图的解析,根据视图逻辑名将 ModelAndView 解析成真正的 view\\n视图 View : View 是一个接口，,它的实现类支持不同的视图类型\\n\"}, {\"SpringMVC 的流程\": \"\\n1. 用户发送请求至前端控制器 DispatcherServlet\\n2. DispatcherServlet 收到请求后,调用 HandlerMapping 处理器映射器,请求获取 Handler\\n3. 处理器映射器根据请求 url 找到具体的处理器Handler,生成处理器对象及处理器拦截器,一并返回给 DispatcherServlet\\n4. DispatcherServlet 调用 HandlerAdapter 处理器适配器,请求执行 Handler\\n5. HandlerAdapter 经过适配调用 具体处理器进行处理业务逻辑\\n6. Handler 执行完成返回 ModelAndView\\n7. HandlerAdapter 将 Handler 执行结果 ModelAndView 返回给 DispatcherServlet\\n8. DispatcherServlet 将 ModelAndView 传给 ViewResolver 视图解析器进行解析\\n9. ViewResolver 解析后返回具体 View\\n10. DispatcherServlet 对 View 进行渲染视图\\n11. DispatcherServlet 响应用户\\n\"}, {\"Restful 访问方式\": \"\\nSELECT\\n传统 url : http://localhost:8080/biancheng/getUserById?id=1\\nRestful : http://localhost:8080/biancheng/user/1 \\n\"}]');
/*!40000 ALTER TABLE `notecontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjectinfo`
--

DROP TABLE IF EXISTS `subjectinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjectinfo` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `subjectname` varchar(255) NOT NULL COMMENT '科目名称',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjectinfo`
--

LOCK TABLES `subjectinfo` WRITE;
/*!40000 ALTER TABLE `subjectinfo` DISABLE KEYS */;
INSERT INTO `subjectinfo` VALUES (1,'C语言'),(2,'C++'),(3,'Java'),(4,'Vue');
/*!40000 ALTER TABLE `subjectinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-05  1:36:48