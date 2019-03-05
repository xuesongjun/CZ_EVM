/*********************************************************/
/*********************************************************/

module iic_slave_module(
    input   		i_fpga_clk   ,
    input   		i_rst_n      ,
// I2C                       
    input   		i_i2c_scl    ,
    inout   		io_i2c_sda   ,    
//FPGA->MCU
    input [ 7: 0]monitor_0x0080	,                                                               
    input [ 7: 0]monitor_0x0081	,                                                               
    input [ 7: 0]monitor_0x0082	,                                                               
    input [ 7: 0]monitor_0x0083	,                                                               
    input [ 7: 0]monitor_0x0084	,                                                               
    input [ 7: 0]monitor_0x0085	,                                                               
    input [ 7: 0]monitor_0x0086	,                                                               
    input [ 7: 0]monitor_0x0087	,                                                               
    input [ 7: 0]monitor_0x0088	,                                                               
    input [ 7: 0]monitor_0x0089	,                                                               
    input [ 7: 0]monitor_0x008a	,                                                               
    input [ 7: 0]monitor_0x008b	,                                                               
    input [ 7: 0]monitor_0x008c	,                                                               
    input [ 7: 0]monitor_0x008d	,                                                               
    input [ 7: 0]monitor_0x008e	,                                                               
    input [ 7: 0]monitor_0x008f ,                                                               
    input [ 7: 0]monitor_0x0090 ,                                                               
    input [ 7: 0]monitor_0x0091 ,                                                               
    input [ 7: 0]monitor_0x0092 ,                                                               
    input [ 7: 0]monitor_0x0093 ,                                                               
    input [ 7: 0]monitor_0x0094 ,                                                               
    input [ 7: 0]monitor_0x0294 ,                                                               
    input [ 7: 0]monitor_0x0095 ,                                                               
    input [ 7: 0]monitor_0x0295 ,                                                               
    input [ 7: 0]monitor_0x0096 ,                                                               
    input [ 7: 0]monitor_0x0196 ,                                                               
    input [ 7: 0]monitor_0x0296 ,                                                               
    input [ 7: 0]monitor_0x0396 ,                                                               
    input [ 7: 0]monitor_0x0097 ,                                                               
    input [ 7: 0]monitor_0x0197 ,                                                               
    input [ 7: 0]monitor_0x0297 , 
    input [ 7: 0]monitor_0x0394 , 
  	 input [ 7: 0]monitor_0x0395 ,                                                                  
    input [ 7: 0]monitor_0x0397 ,                                                               
    input [ 7: 0]monitor_0x0098 ,                                                               
    input [ 7: 0]monitor_0x0198 ,                                                               
    input [ 7: 0]monitor_0x0298 ,                                                               
    input [ 7: 0]monitor_0x0398 ,                                                               
    input [ 7: 0]monitor_0x0099 ,                                                               
    input [ 7: 0]monitor_0x0199 ,
    input [ 7: 0]monitor_0x0299 ,    
    input [ 7: 0]monitor_0x0399 ,
    input [ 7: 0]monitor_0x009a ,
    input [ 7: 0]monitor_0x019a ,
    input [ 7: 0]monitor_0x029a ,
    input [ 7: 0]monitor_0x039a ,                             
    input [ 7: 0]monitor_0x009b ,
    input [ 7: 0]monitor_0x019b , 
    input [ 7: 0]monitor_0x029b ,
    input [ 7: 0]monitor_0x039b ,
    input [ 7: 0]monitor_0x009c ,
    input [ 7: 0]monitor_0x019c ,    
    input [ 7: 0]monitor_0x029c ,
    input [ 7: 0]monitor_0x039c ,
    input [ 7: 0]monitor_0x009d ,
    input [ 7: 0]monitor_0x009e ,
    input [ 7: 0]monitor_0x019d , 
    input [ 7: 0]monitor_0x029d ,                                                               
    input [ 7: 0]monitor_0x039d ,                                                               
    input [ 7: 0]monitor_0x00a0 ,                                                               
    input [ 7: 0]monitor_0x01a0 ,                                                               
    input [ 7: 0]monitor_0x02a0 ,                                                               
    input [ 7: 0]monitor_0x00a1 ,                                                               
    input [ 7: 0]monitor_0x01a1 ,                                                               
    input [ 7: 0]monitor_0x02a1 ,                                                               
    input [ 7: 0]monitor_0x02a2 ,                                                               
    input [ 7: 0]monitor_0x02a3 ,                                                               
    input [ 7: 0]monitor_0x00a4 ,                                                               
    input [ 7: 0]monitor_0x01a4 ,                                                               
    input [ 7: 0]monitor_0x02a4 ,                                                               
    input [ 7: 0]monitor_0x03a4 ,                                                               
	input [ 7: 0]monitor_0x00a5 ,                                                               
	input [ 7: 0]monitor_0x01a5 ,                                                               
	input [ 7: 0]monitor_0x02a5 ,                                                               
	input [ 7: 0]monitor_0x03a5 ,                                                               
    input [ 7: 0]monitor_0x00a6 ,                                                               
    input [ 7: 0]monitor_0x01a6 ,                                                               
    input [ 7: 0]monitor_0x02a6 ,                                                               
    input [ 7: 0]monitor_0x03a6 ,                                                               
    input [ 7: 0]monitor_0x00a7 ,                                                               
    input [ 7: 0]monitor_0x01a7 ,                                                               
    input [ 7: 0]monitor_0x02a7 ,                                                               
    input [ 7: 0]monitor_0x03a7 ,                                                               
    input [ 7: 0]monitor_0x00a8 ,                                                               
    input [ 7: 0]monitor_0x01a8 ,                                                               
    input [ 7: 0]monitor_0x02a8 ,                                                               
    input [ 7: 0]monitor_0x03a8 ,                                                               
    input [ 7: 0]monitor_0x00a9 ,
    input [ 7: 0]monitor_0x01a9 ,
    input [ 7: 0]monitor_0x02a9 ,
    input [ 7: 0]monitor_0x03a9 ,
    input [ 7: 0]monitor_0x00aa ,
    input [ 7: 0]monitor_0x01aa ,
    input [ 7: 0]monitor_0x02aa ,
    input [ 7: 0]monitor_0x03aa ,
    input [ 7: 0]monitor_0x00ab ,
 
    input [ 7: 0]monitor_0x01ab ,
    input [ 7: 0]monitor_0x01ac ,
    input [ 7: 0]monitor_0x02ab ,
    input [ 7: 0]monitor_0x02ac ,
    input [ 7: 0]monitor_0x03ab ,
    input [ 7: 0]monitor_0x03ac ,
    input [ 7: 0]monitor_0x03ad ,
 
    input [ 7: 0]monitor_0x02ad ,
    input [ 7: 0]monitor_0x00ae ,
    input [ 7: 0]monitor_0x00b0 ,
    input [ 7: 0]monitor_0x01b0 ,
    input [ 7: 0]monitor_0x03b0 ,
    input [ 7: 0]monitor_0x00b1 ,
    input [ 7: 0]monitor_0x01b1 ,
    input [ 7: 0]monitor_0x03b1 ,
    input [ 7: 0]monitor_0x00b2 ,
	input [ 7: 0]monitor_0x01b2 ,
	input [ 7: 0]monitor_0x03b2 ,
	input [ 7: 0]monitor_0x00b3 ,
	input [ 7: 0]monitor_0x01b3 ,
    input [ 7: 0]monitor_0x03b3 ,
    input [ 7: 0]monitor_0x03b4 ,
    input [ 7: 0]monitor_0x03b5 ,
    input [ 7: 0]monitor_0x03b6 ,
    input [ 7: 0]monitor_0x03b7 ,
    input [ 7: 0]monitor_0x03b8 ,
    input [ 7: 0]monitor_0x03b9 ,
    input [ 7: 0]monitor_0x03ba ,
    input [ 7: 0]monitor_0x03bb ,
    input [ 7: 0]monitor_0x00bb ,    
    input [ 7: 0]monitor_0x00bc ,  
    input [ 7: 0]monitor_0x00bd , 
    input [ 7: 0]monitor_0x00be , 
    input [ 7: 0]monitor_0x00bf , 
    input [ 7: 0]monitor_0x01bc ,  
    input [ 7: 0]monitor_0x01bd , 
    input [ 7: 0]monitor_0x01be , 
    input [ 7: 0]monitor_0x01bf , 
    input [ 7: 0]monitor_0x02bc ,  
    input [ 7: 0]monitor_0x02bd , 
    input [ 7: 0]monitor_0x02be , 
    input [ 7: 0]monitor_0x02bf ,        
	input [ 7: 0]monitor_0x00c0 ,
	input [ 7: 0]monitor_0x00c1 ,
	input [ 7: 0]monitor_0x00c2 ,
	input [ 7: 0]monitor_0x00c3 ,
    input [ 7: 0]monitor_0x00c4 ,
    input [ 7: 0]monitor_0x00c5 ,
    input [ 7: 0]monitor_0x00c6 ,
    input [ 7: 0]monitor_0x00c7 ,
    input [ 7: 0]monitor_0x00c8 , 
    input [ 7: 0]monitor_0x01c8 ,    
    input [ 7: 0]monitor_0x02c8 ,
    input [ 7: 0]monitor_0x03c8 ,
    input [ 7: 0]monitor_0x00c9 ,
	input [ 7: 0]monitor_0x00ca ,
	input [ 7: 0]monitor_0x00cb ,
	input [ 7: 0]monitor_0x00cc ,
	input [ 7: 0]monitor_0x00cd ,  
	input [ 7: 0]monitor_0x00ce ,
	input [ 7: 0]monitor_0x01ce ,		 
    input [ 7: 0]monitor_0x01c9 ,
	input [ 7: 0]monitor_0x01ca ,
	input [ 7: 0]monitor_0x01cb ,
	input [ 7: 0]monitor_0x01cc ,
	input [ 7: 0]monitor_0x01cd ,    
    input [ 7: 0]monitor_0x02c9 ,
    input [ 7: 0]monitor_0x03c9 ,
 
    
    
    
    
    
     
    input [ 7: 0]monitor_0x03c0 ,
    input [ 7: 0]monitor_0x03c1 ,
    input [ 7: 0]monitor_0x03c2 ,
    input [ 7: 0]monitor_0x03c3 ,
    input [ 7: 0]monitor_0x03c4 ,
    input [ 7: 0]monitor_0x03c5 ,
    input [ 7: 0]monitor_0x03c6 ,
    input [ 7: 0]monitor_0x03c7 ,
    input [ 7: 0]monitor_0x03ef ,   
    input [ 7: 0]monitor_0x00b4 , 
    input [ 7: 0]monitor_0x00b5 ,
    input [ 7: 0]monitor_0x00b6 ,    
    input [ 7: 0]monitor_0x01b4 ,
    input [ 7: 0]monitor_0x01b5 ,
    input [ 7: 0]monitor_0x02b4 ,
    input [ 7: 0]monitor_0x02b5 ,
    input [ 7: 0]monitor_0x00ff ,
    input [ 7: 0]monitor_0x00ac ,
    input [ 7: 0]monitor_0x00ad ,
    input [ 7: 0]monitor_0x00af , 
    input [ 7: 0]monitor_0x02af ,
    input [ 7: 0]monitor_0x02b0 ,
	input [ 7: 0]monitor_0x02b1 ,
	input [ 7: 0]monitor_0x02b2 ,
	input [ 7: 0]monitor_0x02b3 ,       
//MCU->FPGA   
    output reg[ 7: 0]userreg_0x0000  ,                                                                  
    output reg[ 7: 0]userreg_0x0001  , 
    output reg[ 7: 0]userreg_0x0010  , 
    output reg[ 7: 0]userreg_0x0011  , 
	 output reg[ 7: 0]userreg_0x0210  ,  
	 output reg[ 7: 0]userreg_0x0211  ,     
    output reg[ 7: 0]userreg_0x0012  ,                                                                  
    output reg[ 7: 0]userreg_0x0112  ,                                                                  
    output reg[ 7: 0]userreg_0x0212  ,                                                                  
    output reg[ 7: 0]userreg_0x0312  ,                                                                  
    output reg[ 7: 0]userreg_0x0013  ,                                                                  
    output reg[ 7: 0]userreg_0x0113  ,                                                                  
    output reg[ 7: 0]userreg_0x0213  ,                                                                  
    output reg[ 7: 0]userreg_0x0313  ,                                                                  
    output reg[ 7: 0]userreg_0x0014  ,                                                                  
    output reg[ 7: 0]userreg_0x0114  ,                                                                  
    output reg[ 7: 0]userreg_0x0214  ,                                                                  
    output reg[ 7: 0]userreg_0x0314  ,                                                                  
    output reg[ 7: 0]userreg_0x0015  ,                                                                  
    output reg[ 7: 0]userreg_0x0115  ,                                                                  
    output reg[ 7: 0]userreg_0x0215  ,                                                                  
    output reg[ 7: 0]userreg_0x0315  ,                                                                  
    output reg[ 7: 0]userreg_0x0016  ,                                                                  
    output reg[ 7: 0]userreg_0x0116  ,                                                                  
    output reg[ 7: 0]userreg_0x0216  ,                                                                  
    output reg[ 7: 0]userreg_0x0316  ,                                                                  
    output reg[ 7: 0]userreg_0x0017  ,                                                                  
    output reg[ 7: 0]userreg_0x0117  ,                                                                  
    output reg[ 7: 0]userreg_0x0217  ,                                                                  
    output reg[ 7: 0]userreg_0x0317  ,                                                                  
    output reg[ 7: 0]userreg_0x0018  ,                                                                  
    output reg[ 7: 0]userreg_0x0118  ,                                                                  
    output reg[ 7: 0]userreg_0x0218  ,                                                                  
    output reg[ 7: 0]userreg_0x0318  ,                                                                  
    output reg[ 7: 0]userreg_0x0019  ,                                                                  
    output reg[ 7: 0]userreg_0x0119  ,                                                                  
    output reg[ 7: 0]userreg_0x0219  ,                                                                  
    output reg[ 7: 0]userreg_0x0319  ,                                                                  
    output reg[ 7: 0]userreg_0x001a  ,                                                                  
    output reg[ 7: 0]userreg_0x011a  ,                                                                  
    output reg[ 7: 0]userreg_0x021a  ,                                                                  
    output reg[ 7: 0]userreg_0x031a  ,                                                                  
    output reg[ 7: 0]userreg_0x001b  ,                                                                  
    output reg[ 7: 0]userreg_0x011b  ,                                                                  
    output reg[ 7: 0]userreg_0x021b  ,                                                                  
    output reg[ 7: 0]userreg_0x031b  ,                                                                  
    output reg[ 7: 0]userreg_0x001c  ,                                                                  
    output reg[ 7: 0]userreg_0x011c  ,                                                                  
    output reg[ 7: 0]userreg_0x021c  ,                                                                  
    output reg[ 7: 0]userreg_0x031c  ,                                                                  
    output reg[ 7: 0]userreg_0x001d  ,                                                                  
    output reg[ 7: 0]userreg_0x011d  ,                                                                  
    output reg[ 7: 0]userreg_0x021d  ,                                                                  
    output reg[ 7: 0]userreg_0x031d  ,                                                                  
    output reg[ 7: 0]userreg_0x001e  ,                                                                  
    output reg[ 7: 0]userreg_0x011e  ,                                                                  
    output reg[ 7: 0]userreg_0x021e  ,       
    output reg[ 7: 0]userreg_0x021f  ,                                                           
    output reg[ 7: 0]userreg_0x031e  ,         
 	 output reg[ 7: 0]userreg_0x031f  ,                                                          
    output reg[ 7: 0]userreg_0x0020  ,           
    output reg[ 7: 0]userreg_0x0021  ,                                                         
	 output reg[ 7: 0]userreg_0x0120  ,           
	 output reg[ 7: 0]userreg_0x0121  ,                                                       
	 output reg[ 7: 0]userreg_0x0220  , 
	 output reg[ 7: 0]userreg_0x0221  ,                                                               
    output reg[ 7: 0]userreg_0x0320  ,                                                                  
    output reg[ 7: 0]userreg_0x0321  , 
    output reg[ 7: 0]userreg_0x0349  ,                                                                     
    output reg[ 7: 0]userreg_0x0022  , 
    output reg[ 7: 0]userreg_0x0122  ,                                                                     
    output reg[ 7: 0]userreg_0x0222  ,                                                                  
    output reg[ 7: 0]userreg_0x0322  ,                                                                  
    output reg[ 7: 0]userreg_0x0023  ,                                                                  
    output reg[ 7: 0]userreg_0x0223  ,                                                                  
    output reg[ 7: 0]userreg_0x0024  ,                                                                  
    output reg[ 7: 0]userreg_0x0224  ,                                                                  
    output reg[ 7: 0]userreg_0x0324  ,
    output reg[ 7: 0]userreg_0x0244  ,
    output reg[ 7: 0]userreg_0x0245  ,   
    output reg[ 7: 0]userreg_0x0246  ,
    output reg[ 7: 0]userreg_0x0344  ,
    output reg[ 7: 0]userreg_0x0346  ,
    output reg[ 7: 0]userreg_0x0345  ,
    output reg[ 7: 0]userreg_0x0272  ,
    output reg[ 7: 0]userreg_0x0271  ,
    output reg[ 7: 0]userreg_0x0270  ,
    output reg[ 7: 0]userreg_0x014c  ,                                                                 
    output reg[ 7: 0]userreg_0x0348  ,                                                           
    output reg[ 7: 0]userreg_0x0347  ,   
                                                                                                          
    output reg[ 7: 0]userreg_0x0030  ,  
    output reg[ 7: 0]userreg_0x0031  ,                                                                  
    output reg[ 7: 0]userreg_0x0130  ,                                                                  
    output reg[ 7: 0]userreg_0x0230  ,                                                                  
    output reg[ 7: 0]userreg_0x0330  ,  
    output reg[ 7: 0]userreg_0x0034  ,
    output reg[ 7: 0]userreg_0x0134  ,        
    output reg[ 7: 0]userreg_0x0334  ,
    output reg[ 7: 0]userreg_0x0336  ,
    output reg[ 7: 0]userreg_0x0337  ,
    output reg[ 7: 0]userreg_0x0338  ,
    output reg[ 7: 0]userreg_0x0339  ,
    output reg[ 7: 0]userreg_0x033a  ,
    output reg[ 7: 0]userreg_0x003b  ,
    output reg[ 7: 0]userreg_0x033b  ,    
	 output reg[ 7: 0]userreg_0x003c  ,
	 output reg[ 7: 0]userreg_0x033c  ,
	 output reg[ 7: 0]userreg_0x003d  ,
	 output reg[ 7: 0]userreg_0x033d  ,
	 output reg[ 7: 0]userreg_0x033e  ,
	 output reg[ 7: 0]userreg_0x033f  ,
	 output reg[ 7: 0]userreg_0x0040  ,
	 output reg[ 7: 0]userreg_0x0140  ,
	 output reg[ 7: 0]userreg_0x0240  ,
	 output reg[ 7: 0]userreg_0x0041  ,
	 output reg[ 7: 0]userreg_0x0141  ,
	 output reg[ 7: 0]userreg_0x0241  ,
	 output reg[ 7: 0]userreg_0x0042  ,
	 output reg[ 7: 0]userreg_0x0043  ,
	 output reg[ 7: 0]userreg_0x0044  ,
	 output reg[ 7: 0]userreg_0x0144  ,
	 output reg[ 7: 0]userreg_0x0045  ,
	 output reg[ 7: 0]userreg_0x0046  ,
	 output reg[ 7: 0]userreg_0x0047  ,
	 output reg[ 7: 0]userreg_0x0048  ,
	 output reg[ 7: 0]userreg_0x0049  ,
	 output reg[ 7: 0]userreg_0x004a  ,
	 output reg[ 7: 0]userreg_0x014a  ,
	 output reg[ 7: 0]userreg_0x024a  ,
	 output reg[ 7: 0]userreg_0x004b  ,
	 output reg[ 7: 0]userreg_0x014b  ,
	 output reg[ 7: 0]userreg_0x024b  ,
	 output reg[ 7: 0]userreg_0x004c  ,
	 output reg[ 7: 0]userreg_0x004e	 , 
	 output reg[ 7: 0]userreg_0x004f	 , 
	 output reg[ 7: 0]userreg_0x014e	 , 
	 output reg[ 7: 0]userreg_0x014f	 , 
	 output reg[ 7: 0]userreg_0x024e	 , 
	 output reg[ 7: 0]userreg_0x024f	 , 
	 output reg[ 7: 0]userreg_0x0050  ,
	 output reg[ 7: 0]userreg_0x0250  ,
	 output reg[ 7: 0]userreg_0x0350  ,		
	 output reg[ 7: 0]userreg_0x0051  ,
	 output reg[ 7: 0]userreg_0x0251  ,
	output reg[ 7: 0]userreg_0x0351  ,
	output reg[ 7: 0]userreg_0x0052  ,
	output reg[ 7: 0]userreg_0x0252  ,
	output reg[ 7: 0]userreg_0x0352  ,
	output reg[ 7: 0]userreg_0x0053  ,
	output reg[ 7: 0]userreg_0x0153  ,
	output reg[ 7: 0]userreg_0x0253  ,
	output reg[ 7: 0]userreg_0x0353  ,
	output reg[ 7: 0]userreg_0x0054  ,
	output reg[ 7: 0]userreg_0x0154  ,
	output reg[ 7: 0]userreg_0x0254  ,
	output reg[ 7: 0]userreg_0x0354  ,
	output reg[ 7: 0]userreg_0x0055  ,
	output reg[ 7: 0]userreg_0x0056  ,
	output reg[ 7: 0]userreg_0x0057  ,	
	output reg[ 7: 0]userreg_0x0155  ,
	output reg[ 7: 0]userreg_0x0255  ,
	output reg[ 7: 0]userreg_0x0355  ,  
	output reg[ 7: 0]userreg_0x005e  ,  
	output reg[ 7: 0]userreg_0x005f  , 	
	output reg[ 7: 0]userreg_0x015e  ,  
	output reg[ 7: 0]userreg_0x015f  , 	
	output reg[ 7: 0]userreg_0x025e  ,  
	output reg[ 7: 0]userreg_0x025f  , 	
	output reg[ 7: 0]userreg_0x035e  , 
	output reg[ 7: 0]userreg_0x035f  , 		
	
	output reg[ 7: 0]userreg_0x005d  ,
	output reg[ 7: 0]userreg_0x015d  ,	
	output reg[ 7: 0]userreg_0x0060  ,                                                                     
	output reg[ 7: 0]userreg_0x0061  ,                                                                     
	output reg[ 7: 0]userreg_0x0062  ,                                                                     
	output reg[ 7: 0]userreg_0x0262  ,                                                                     
	output reg[ 7: 0]userreg_0x0063  ,                                                                     
	output reg[ 7: 0]userreg_0x0064  ,                                                                     
	output reg[ 7: 0]userreg_0x0164  ,                                                                     
	output reg[ 7: 0]userreg_0x0065  ,
	output reg[ 7 :0]userreg_0x0066	 ,   
	output reg[ 7 :0]userreg_0x0067	 ,  
	output reg[ 7 :0]userreg_0x0068	 ,    
	output reg[ 7 :0]userreg_0x0069	 , 
	output reg[ 7 :0]userreg_0x006a	 , 
	output reg[ 7 :0]userreg_0x006b	 , 
	output reg[ 7 :0]userreg_0x0166	 ,  
	output reg[ 7 :0]userreg_0x0167	 ,  
	output reg[ 7 :0]userreg_0x0168	 , 
	output reg[ 7 :0]userreg_0x0169	 ,
	output reg[ 7 :0]userreg_0x016a	 ,
	output reg[ 7 :0]userreg_0x016b	 ,         	                                                                     
	output reg[ 7: 0]userreg_0x006c  ,                                                                     
	output reg[ 7: 0]userreg_0x016c  ,                                                                     
	output reg[ 7: 0]userreg_0x006d  ,                                                                     
	output reg[ 7: 0]userreg_0x016d  ,                                                                     
	output reg[ 7: 0]userreg_0x006e  ,                                                                     
	output reg[ 7: 0]userreg_0x016e  ,                                                                     
	output reg[ 7: 0]userreg_0x006f  ,                                                                     
	output reg[ 7: 0]userreg_0x016f  ,                                                                     
	output reg[ 7: 0]userreg_0x026f  ,                                                                     
	output reg[ 7: 0]userreg_0x036f  ,                                                                     
	output reg[ 7: 0]userreg_0x0070  ,                                                                     
	output reg[ 7: 0]userreg_0x0071  ,                                                                     
	output reg[ 7: 0]userreg_0x0072  ,                                                                     
	output reg[ 7: 0]userreg_0x0073  ,                                                                     
	output reg[ 7: 0]userreg_0x0074  ,                                                                     
	output reg[ 7: 0]userreg_0x0075  ,                                                                     
	output reg[ 7: 0]userreg_0x0076  ,                                                                     
	output reg[ 7: 0]userreg_0x0077  ,                                                                     
	output reg[ 7: 0]userreg_0x0277  ,                                                                     
	output reg[ 7: 0]userreg_0x0078  ,                                                                     
	output reg[ 7: 0]userreg_0x0278  ,                                                                     
	output reg[ 7: 0]userreg_0x0079  ,                                                                     
	output reg[ 7: 0]userreg_0x0279  ,                                                                     
	output reg[ 7: 0]userreg_0x007a  ,                                                                     
	output reg[ 7: 0]userreg_0x027a  ,                                                                     
	output reg[ 7: 0]userreg_0x007b  ,                                                                     
	output reg[ 7: 0]userreg_0x027b  ,                                                                     
	output reg[ 7: 0]userreg_0x007c  ,                                                                     
	output reg[ 7: 0]userreg_0x027c  ,                                                                     
	output reg[ 7: 0]userreg_0x007d  ,   
	output reg[ 7: 0]userreg_0x007e  ,                                                                  
	output reg[ 7: 0]userreg_0x027d  ,                                                                     
	output reg[ 7: 0]userreg_0x027e  ,                                                                     
	output reg[ 7: 0]userreg_0x027f  ,
	output reg[ 7: 0]userreg_0x003a  ,
	output reg[ 7: 0]userreg_0x013a  ,		
	output reg[ 7: 0]userreg_0x023a	 ,
	output reg[ 7: 0]userreg_0x023b	 ,
	output reg[ 7: 0]userreg_0x0331  ,
	output reg[ 7: 0]userreg_0x0332  ,
	output reg[ 7: 0]userreg_0x0333  ,
	output reg[ 7: 0]userreg_0x004d  ,
	output reg[ 7: 0]userreg_0x0340  ,    
	output reg[ 7: 0]userreg_0x0341  , 
	output reg[ 7: 0]userreg_0x0342  , 
	output reg[ 7: 0]userreg_0x0343  ,
	output reg[ 7: 0]userreg_0x001f  ,
 	output reg[ 7: 0]userreg_0x0025 ,
	output reg[ 7: 0]userreg_0x0026 ,
	output reg[ 7: 0]userreg_0x0125 ,
	output reg[ 7: 0]userreg_0x0126 ,
	output reg[ 7: 0]userreg_0x0225 ,
	output reg[ 7: 0]userreg_0x0226 ,
	output reg[ 7: 0]userreg_0x0325 ,
	output reg[ 7: 0]userreg_0x0027 ,	
	output reg[ 7: 0]userreg_0x0028 ,	
	output reg[ 7: 0]userreg_0x0128 ,
	output reg[ 7: 0]userreg_0x0228 ,
	output reg[ 7: 0]userreg_0x0328 ,  
	output reg[ 7: 0]userreg_0x0029 ,	 	
	output reg[ 7: 0]userreg_0x002a ,
	output reg[ 7: 0]userreg_0x012a ,
	output reg[ 7: 0]userreg_0x022a ,		
	output reg[ 7: 0]userreg_0x0127	,		
	output reg[ 7: 0]userreg_0x0227	,
	output reg[ 7: 0]userreg_0x0229	,		
	output reg[ 7: 0]userreg_0x0326                                    			                                                                       	       
    );

//initial
//begin
//	userreg_0x004c = 8'hff;
//	userreg_0x0010 = 8'h64;
//	userreg_0x0011 = 8'h00;	
//	userreg_0x0210 = 8'h64;
//	userreg_0x0211 = 8'h00;	
//	userreg_0x0270 = 8'h00;	
//	userreg_0x0271 = 8'h68;
//	userreg_0x0272 = 8'h01;		
//end
    
//================================================================================
// 1.INPUT BUFFER                                                                  
//================================================================================ 
//    parameter DEVICEID = 7'b010_1010 ;
		parameter DEVICEID  = 7'b1010100;
// SIGNAL DECLARATIONS END                                 
    reg     scl_r ,scl_r_r ,sda_r ,sda_r_r ;            //Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¦Â´Â¢2Ã¯Â¿Â½Ã¯Â¿Â½
    wire    [15:0] reg_add ;
    reg     [15:0] reg1    ;
    reg     [7:0] reg2 ,reg3 ;
    reg     sda_en ;
    reg     return_reg ;

// ASSIGN STATEMENTS
    reg [5:0] iic_state_r ;

    reg [5:0] iic_state /*syn_state_machine = 1*/;
    parameter iic_idle = 0 ,         //Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½
              iic_waitread = 38 ,      //startÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂµÃÂ´Ã¯Â¿Â½
//----------------------------------------------------------------------
              iic_readid1 = 1 ,      //FPGAÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¡DEVICEÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ·bit6
              iic_readid2 = 2 ,      //FPGAÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¡DEVICEÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ·bit5
              iic_readid3 = 3 ,      //FPGAÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¡DEVICEÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ·bit4
              iic_readid4 = 4 ,      //FPGAÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¡DEVICEÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ·bit3
              iic_readid5 = 5 ,      //FPGAÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¡DEVICEÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ·bit2
              iic_readid6 = 6 ,      //FPGAÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¡DEVICEÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ·bit1
              iic_readid7 = 7 ,      //FPGAÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¡DEVICEÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ·bit0
              iic_read_rw = 8 ,      //FPGAÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¡ r/wÃ¯Â¿Â½ÃÂºÃ¯Â¿Â½
//----------------------------------------------------------------------
              iic_read_ack = 9 ,     //FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ackÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂºÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ¡Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ·
              iic_readadd1 = 10 ,    //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½ÃÂµÃ¯Â¿Â½ÃÂ·bit7
              iic_readadd2 = 11 ,    //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½ÃÂµÃ¯Â¿Â½ÃÂ·bit6
              iic_readadd3 = 12 ,    //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½ÃÂµÃ¯Â¿Â½ÃÂ·bit5
              iic_readadd4 = 13 ,    //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½ÃÂµÃ¯Â¿Â½ÃÂ·bit4
              iic_readadd5 = 14 ,    //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½ÃÂµÃ¯Â¿Â½ÃÂ·bit3
              iic_readadd6 = 15 ,    //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½ÃÂµÃ¯Â¿Â½ÃÂ·bit2
              iic_readadd7 = 16 ,    //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½ÃÂµÃ¯Â¿Â½ÃÂ·bit1
              iic_readadd8 = 17 ,    //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½ÃÂµÃ¯Â¿Â½ÃÂ·bit0
 
              iic_res_read = 18 ,    //FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ackÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¡Ã¯Â¿Â½Ã¯Â¿Â½restartÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ¼
                            
              //Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ·Ã¯Â¿Â½ÃÂ¹ÃÂª16bits
              iic_readadd9 = 40 ,    //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½ÃÂµÃ¯Â¿Â½ÃÂ·bit15
              iic_readadd10 = 41 ,    //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½ÃÂµÃ¯Â¿Â½ÃÂ·bit14
              iic_readadd11 = 42 ,    //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½ÃÂµÃ¯Â¿Â½ÃÂ·bit13
              iic_readadd12 = 43 ,    //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½ÃÂµÃ¯Â¿Â½ÃÂ·bit12
              iic_readadd13 = 44 ,    //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½ÃÂµÃ¯Â¿Â½ÃÂ·bit11
              iic_readadd14 = 45 ,    //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½ÃÂµÃ¯Â¿Â½ÃÂ·bit10
              iic_readadd15 = 46 ,    //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½ÃÂµÃ¯Â¿Â½ÃÂ·bit9
              iic_readadd16 = 47 ,    //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½ÃÂµÃ¯Â¿Â½ÃÂ·bit8              

			  iic_res_read1 = 48 ,    //FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ackÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¡Ã¯Â¿Â½Ã¯Â¿Â½restartÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ¼ Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ¡Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ»Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ·Ã¯Â¿Â½Ã¯Â¿Â½

              iic_readdata1 = 19 ,   //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½bit7
              iic_readdata2 = 20 ,   //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½bit6
              iic_readdata3 = 21 ,   //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½bit5
              iic_readdata4 = 22 ,   //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½bit4
              iic_readdata5 = 23 ,   //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½bit3
              iic_readdata6 = 24 ,   //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½bit2
              iic_readdata7 = 25 ,   //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½bit1
              iic_readdata8 = 26 ,   //IICÃ¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½bit0
              iic_read_over_ack = 27 ,
//----------------------------------------------------------------------
              iic_return_ack = 28 ,   //FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ackÃ¯Â¿Â½ÃÂºÃÂ¸Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½
              iic_returndata1 = 29 ,  //FPGAÃ¯Â¿Â½Ã¯Â¿Â½IICÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½bit7
              iic_returndata2 = 30 ,  //FPGAÃ¯Â¿Â½Ã¯Â¿Â½IICÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½bit6
              iic_returndata3 = 31 ,  //FPGAÃ¯Â¿Â½Ã¯Â¿Â½IICÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½bit5
              iic_returndata4 = 32 ,  //FPGAÃ¯Â¿Â½Ã¯Â¿Â½IICÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½bit4
              iic_returndata5 = 33 ,  //FPGAÃ¯Â¿Â½Ã¯Â¿Â½IICÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½bit3
              iic_returndata6 = 34 ,  //FPGAÃ¯Â¿Â½Ã¯Â¿Â½IICÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½bit2
              iic_returndata7 = 35 ,  //FPGAÃ¯Â¿Â½Ã¯Â¿Â½IICÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½bit1
              iic_returndata8 = 36 ,  //FPGAÃ¯Â¿Â½Ã¯Â¿Â½IICÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½bit0
              iic_return_over_ack = 37 ,  //Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ´ÃÂ¬ÃÂ£ÃÂ¹
//----------------------------------------------------------------------
              iic_wait_stop = 39 ;    //Ã¯Â¿Â½ÃÂ´Ã¯Â¿Â½stopÃ¯Â¿Â½ÃÂºÃ¯Â¿Â½

// MAIN CODE
  
//    assign o_iic_state = iic_state;

    assign  io_i2c_sda = sda_en ?  return_reg :1'bz  ;  //FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ±Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½,Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½
//-------ÃÂ¢:FPGAÃ¯Â¿Â½Ã¯Â¿Â½IICÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ´Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ»Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½sdaÃÂ¦Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ»Ã¯Â¿Â½Ã¯Â¿Â½sclÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂµÃÂ©


////////////////////////////////////////////////////////////////////////
//2.Ã¯Â¿Â½Ã¯Â¿Â½clk8Ã¯Â¿Â½ÃÂ¼Ã¯Â¿Â½sclÃ¯Â¿Â½Ã¯Â¿Â½sdaÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½
////////////////////////////////////////////////////////////////////////

//////////////////////////////////////Ã¯Â¿Â½ÃÂ´Ã¯Â¿Â½scl2Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ±Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ¶Ã¯Â¿Â½sclÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½
always@( posedge i_fpga_clk or negedge i_rst_n )
    if ( !i_rst_n ) begin scl_r <= 0 ; scl_r_r <= 0 ; end
    else begin scl_r <= i_i2c_scl ;    scl_r_r <= scl_r ; end

////////////////////////////ÃÂ¿Ã¯Â¿Â½Ã¯Â¿Â½clkÃ¯Â¿Â½Ã¯Â¿Â½ÃÂªÃ¯Â¿Â½ÃÂ´Ã¯Â¿Â½sdaÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ½,Ã¯Â¿Â½ÃÂ±Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ¶Ã¯Â¿Â½startÃ¯Â¿Â½Ã¯Â¿Â½stop
always@( posedge i_fpga_clk or negedge i_rst_n )
    if ( !i_rst_n ) begin sda_r <= 0 ; sda_r_r <= 0 ; end
    else begin sda_r <= io_i2c_sda ;    sda_r_r <= sda_r ; end

    reg sda_3r;//Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ±3Ã¯Â¿Â½Ã¯Â¿Â½clkÃÂ±Ã¯Â¿Â½Ã¯Â¿Â½2006-11-13
always@( posedge i_fpga_clk or negedge i_rst_n )
    if ( !i_rst_n ) begin sda_3r <= 0 ;  end
    else begin sda_3r <= sda_r_r ;     end

/*//////////////////////////    sclÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂªÃ¯Â¿Â½ÃÂ´Ã¯Â¿Â½sdaÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ½,Ã¯Â¿Â½ÃÂ±Ã¯Â¿Â½ÃÂ´ÃÂ¬ÃÂªÃ¯Â¿Â½Ã¯Â¿Â½
always@( posedge i_fpga_clk or negedge i_rst_n )
    if ( !i_rst_n ) sda_r <= 0 ;
    else if ( scl_r == 1 && scl_r_r == 0 ) sda_r <= io_i2c_sda ;  //posedge i_i2c_scl
*/
////////////////////////////////////////////////////////////////////////
//3.ÃÂ´ÃÂ¬Ã¯Â¿Â½Ã¯Â¿Â½ÃÂªÃ¯Â¿Â½Ã¯Â¿Â½
////////////////////////////////////////////////////////////////////////
//2006-11-13 Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ¶Ã¯Â¿Â½ÃÂ¡Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½sclÃ¯Â¿Â½ÃÂ½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ£Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ¡sdaÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ±3Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ±Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½sda_3r
always@( posedge i_fpga_clk or negedge i_rst_n )
    if ( !i_rst_n ) iic_state <= iic_idle ;
    else if ( scl_r_r == 1 && scl_r == 1 &&  sda_r_r ==1 && sda_r ==0 )
         iic_state <= iic_waitread ;             //Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂµÃ¯Â¿Â½start
    else if ( scl_r_r == 1 && scl_r == 1 &&  sda_r_r ==0 && sda_r ==1 )
         iic_state <= iic_idle ;                 //Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂµÃ¯Â¿Â½stop
    else if ( scl_r_r == 1 && scl_r == 0 ) begin
        case ( iic_state )                       //sclÃ¯Â¿Â½ÃÂ½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ±Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ´ÃÂ¬
//------------------------------------------------------Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ´ÃÂ¬
        //iic_idle :
            //if ( iic_start == 1 ) iic_state <= iic_readid1 ;
            //else iic_state <= iic_idle ;
//--------------------------------------------FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ·
        iic_waitread : iic_state <= iic_readid1 ;
        iic_readid1 : if ( sda_3r != DEVICEID[6] )iic_state <= iic_idle ;
            else iic_state <= iic_readid2 ;
        iic_readid2 : if ( sda_3r != DEVICEID[5] )iic_state <= iic_idle ;
            else iic_state <= iic_readid3 ;
        iic_readid3 : if ( sda_3r != DEVICEID[4] )iic_state <= iic_idle ;
            else iic_state <= iic_readid4 ;
        iic_readid4 : if ( sda_3r != DEVICEID[3] )iic_state <= iic_idle ;
            else iic_state <= iic_readid5 ;
        iic_readid5 : if ( sda_3r != DEVICEID[2] )iic_state <= iic_idle ;
            else iic_state <= iic_readid6 ;
        iic_readid6 : if ( sda_3r != DEVICEID[1] )iic_state <= iic_idle ;
            else iic_state <= iic_readid7 ;
        iic_readid7 : if ( sda_3r != DEVICEID[0] )iic_state <= iic_idle ;
            else iic_state <= iic_read_rw ;
//------------------------------------------------Ã¯Â¿Â½ÃÂ¶Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ¶Ã¯Â¿Â½ÃÂ¡Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ´Ã¯Â¿Â½Ã¯Â¿Â½
        iic_read_rw :
            if ( sda_3r == 1 ) iic_state <= iic_return_ack ;
            else iic_state <= iic_read_ack ;   //FPGAÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¡Ã¯Â¿Â½ÃÂ¼Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½IICÃ¯Â¿Â½Ã¯Â¿Â½w
//----------------------------------------------------------------------
//R-----------------------------------------------FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ¼ÃÂ´Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½
        iic_return_ack  : iic_state <= iic_returndata1 ;             //
        iic_returndata1 : iic_state <= iic_returndata2 ;             //
        iic_returndata2 : iic_state <= iic_returndata3 ;             //
        iic_returndata3 : iic_state <= iic_returndata4 ;             //
        iic_returndata4 : iic_state <= iic_returndata5 ;             //
        iic_returndata5 : iic_state <= iic_returndata6 ;             //
        iic_returndata6 : iic_state <= iic_returndata7 ;             //
        iic_returndata7 : iic_state <= iic_returndata8 ;             //
        iic_returndata8 : iic_state <= iic_return_over_ack ;         //
//R--------------------------------------ackÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¬ÃÂ±Ã¯Â¿Â½ÃÂ±Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ´Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½stop
        iic_return_over_ack :
            if ( sda_r == 1 ) iic_state <= iic_wait_stop ;
            else iic_state <= iic_returndata1 ;  //iic_return_over_ack ;
        iic_wait_stop : iic_state <= iic_wait_stop ;
//----------------------------------------------------------------------
//W-----------------------------------------------FPGAÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¡Ã¯Â¿Â½ÃÂ´Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ·
        iic_read_ack : iic_state <= iic_readadd1 ;                   //
        iic_readadd1 : iic_state <= iic_readadd2 ;
        iic_readadd2 : iic_state <= iic_readadd3 ;
        iic_readadd3 : iic_state <= iic_readadd4 ;
        iic_readadd4 : iic_state <= iic_readadd5 ;
        iic_readadd5 : iic_state <= iic_readadd6 ;
        iic_readadd6 : iic_state <= iic_readadd7 ;
        iic_readadd7 : iic_state <= iic_readadd8 ;
        iic_readadd8 : iic_state <= iic_res_read ;
//W-----------------------------------------------FPGAÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¡Ã¯Â¿Â½ÃÂ´Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ· Ã¯Â¿Â½Ã¯Â¿Â½8ÃÂ»Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ·
        iic_res_read : iic_state <= iic_readadd9 ;                   //
        iic_readadd9 : iic_state <= iic_readadd10 ;
        iic_readadd10 : iic_state <= iic_readadd11 ;
        iic_readadd11 : iic_state <= iic_readadd12 ;
        iic_readadd12 : iic_state <= iic_readadd13 ;
        iic_readadd13 : iic_state <= iic_readadd14 ;
        iic_readadd14 : iic_state <= iic_readadd15 ;
        iic_readadd15 : iic_state <= iic_readadd16 ;
        iic_readadd16 : iic_state <= iic_res_read1 ;        
        
//W-----------------------------------Ã¯Â¿Â½ÃÂ¶Ã¯Â¿Â½restartÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ¼ÃÂ´Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½
        iic_res_read1 : iic_state <= iic_readdata1 ;                  //
//----------------------------------------------------------------------
//W-----------------------------------------------FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ¼ÃÂ´Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½
        iic_readdata1 : iic_state <= iic_readdata2 ;
        iic_readdata2 : iic_state <= iic_readdata3 ;
        iic_readdata3 : iic_state <= iic_readdata4 ;
        iic_readdata4 : iic_state <= iic_readdata5 ;
        iic_readdata5 : iic_state <= iic_readdata6 ;
        iic_readdata6 : iic_state <= iic_readdata7 ;
        iic_readdata7 : iic_state <= iic_readdata8 ;
        iic_readdata8 : iic_state <= iic_read_over_ack ;
//---------------------------------------ackÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¬ÃÂ±Ã¯Â¿Â½ÃÂ±Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ´Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½stop
        iic_read_over_ack : iic_state <= iic_wait_stop ;             //
            //if ( sda_r == 0 && io_i2c_sda == 1 ) iic_state <= iic_idle ;
            //else iic_state <= iic_read_stop ;
//----------------------------------------------------------------------
//----------------------------------------------------------------------
        default : iic_state <= iic_idle ;

        endcase
    end

////////////////////////////////////////////////////////////////////////
//4.ÃÂ´ÃÂ¬Ã¯Â¿Â½ÃÂ²Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½
////////////////////////////////////////////////////////////////////////

always@( posedge i_fpga_clk or negedge i_rst_n)
    if ( !i_rst_n ) begin
        sda_en <= 0 ; return_reg <= 0 ;
        reg1 <= 0 ; reg2 <= 0 ;
    end
    else begin  //if ( scl_r == 1 && i_i2c_scl == 0 )
        case ( iic_state )
//------------------------------------------------------Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ´ÃÂ¬
        iic_idle : begin sda_en <= 0 ; end
        iic_waitread : begin sda_en <= 0 ; end
//--------------------------------------------FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ·
        iic_readid1 : begin sda_en <= 0 ; end
        iic_readid2 : begin sda_en <= 0 ; end
        iic_readid3 : begin sda_en <= 0 ; end
        iic_readid4 : begin sda_en <= 0 ; end
        iic_readid5 : begin sda_en <= 0 ; end
        iic_readid6 : begin sda_en <= 0 ; end
        iic_readid7 : begin sda_en <= 0 ; end
//------------------------------------------------Ã¯Â¿Â½ÃÂ¶Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ¶Ã¯Â¿Â½ÃÂ¡Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ´Ã¯Â¿Â½Ã¯Â¿Â½
        iic_read_rw : begin sda_en <= 0 ; end
//----------------------------------------------------------------------
//------------------------------------------------FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ¼ÃÂ´Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½
        iic_return_ack :  begin return_reg <= 0       ;sda_en <= 1 ;end
        iic_returndata1 : begin return_reg <= reg3[7] ;sda_en <= 1 ;end
        iic_returndata2 : begin return_reg <= reg3[6] ;sda_en <= 1 ;end
        iic_returndata3 : begin return_reg <= reg3[5] ;sda_en <= 1 ;end
        iic_returndata4 : begin return_reg <= reg3[4] ;sda_en <= 1 ;end
        iic_returndata5 : begin return_reg <= reg3[3] ;sda_en <= 1 ;end
        iic_returndata6 : begin return_reg <= reg3[2] ;sda_en <= 1 ;end
        iic_returndata7 : begin return_reg <= reg3[1] ;sda_en <= 1 ;end
        iic_returndata8 : begin return_reg <= reg3[0] ;sda_en <= 1 ;end

//---------------------------------------ackÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¬ÃÂ±Ã¯Â¿Â½ÃÂ±Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ´Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½
        iic_return_over_ack : begin return_reg <= 0 ;sda_en <= 0 ;end
       // iic_wait : begin return_reg <= 0 ; sda_en <= 0 ; end
//----------------------------------------------------------------------
//------------------------------------------------FPGAÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¡Ã¯Â¿Â½ÃÂ´Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ·
        iic_read_ack : begin return_reg <= 0  ;sda_en <= 1 ;end
        iic_readadd1 : begin reg1[7] <= sda_3r ;sda_en <= 0 ;end
        iic_readadd2 : begin reg1[6] <= sda_3r ;sda_en <= 0 ;end
        iic_readadd3 : begin reg1[5] <= sda_3r ;sda_en <= 0 ;end
        iic_readadd4 : begin reg1[4] <= sda_3r ;sda_en <= 0 ;end
        iic_readadd5 : begin reg1[3] <= sda_3r ;sda_en <= 0 ;end
        iic_readadd6 : begin reg1[2] <= sda_3r ;sda_en <= 0 ;end
        iic_readadd7 : begin reg1[1] <= sda_3r ;sda_en <= 0 ;end
        iic_readadd8 : begin reg1[0] <= sda_3r ;sda_en <= 0 ;end
//-------------------------ackÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¬ÃÂ±Ã¯Â¿Â½ÃÂ¶Ã¯Â¿Â½restartÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ¼ÃÂ´Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½
        iic_res_read : begin return_reg <= 0 ;sda_en <= 1 ;end
//------------------------------------------------FPGAÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¡Ã¯Â¿Â½ÃÂ´Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ· Ã¯Â¿Â½Ã¯Â¿Â½8ÃÂ»
        iic_readadd9 : begin reg1[15] <= sda_3r ;sda_en <= 0 ;end
        iic_readadd10 : begin reg1[14] <= sda_3r ;sda_en <= 0 ;end
        iic_readadd11 : begin reg1[13] <= sda_3r ;sda_en <= 0 ;end
        iic_readadd12 : begin reg1[12] <= sda_3r ;sda_en <= 0 ;end
        iic_readadd13 : begin reg1[11] <= sda_3r ;sda_en <= 0 ;end
        iic_readadd14 : begin reg1[10] <= sda_3r ;sda_en <= 0 ;end
        iic_readadd15 : begin reg1[9] <= sda_3r ;sda_en <= 0 ;end
        iic_readadd16 : begin reg1[8] <= sda_3r ;sda_en <= 0 ;end        
//-------------------------ackÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¬ÃÂ±Ã¯Â¿Â½ÃÂ¶Ã¯Â¿Â½restartÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½FPGAÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ¼ÃÂ´Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½
        iic_res_read1 : begin return_reg <= 0 ;sda_en <= 1 ;end        
//----------------------------------------------------------------------
//------------------------------------------------Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ¡Ã¯Â¿Â½ÃÂ´Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½
        iic_readdata1 : begin reg2[7] <= sda_3r ;sda_en <= 0 ;end
        iic_readdata2 : begin reg2[6] <= sda_3r ;sda_en <= 0 ;end
        iic_readdata3 : begin reg2[5] <= sda_3r ;sda_en <= 0 ;end
        iic_readdata4 : begin reg2[4] <= sda_3r ;sda_en <= 0 ;end
        iic_readdata5 : begin reg2[3] <= sda_3r ;sda_en <= 0 ;end
        iic_readdata6 : begin reg2[2] <= sda_3r ;sda_en <= 0 ;end
        iic_readdata7 : begin reg2[1] <= sda_3r ;sda_en <= 0 ;end
        iic_readdata8 : begin reg2[0] <= sda_3r ;sda_en <= 0 ;end
//---------------------------------------ackÃ¯Â¿Â½Ã¯Â¿Â½ÃÂ¬ÃÂ±Ã¯Â¿Â½ÃÂ±Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ´Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½
        iic_read_over_ack : begin return_reg <= 0 ;sda_en <= 1 ;end
//----------------------------------------------------------------------
        iic_wait_stop : begin return_reg <= 0 ;sda_en <= 0 ;end
//-------------------------------------------------------------
        default : begin return_reg <= 0 ;sda_en <= 0 ;end

    endcase

//----------(Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½ÃÂºÃ¯Â¿Â½ÃÂ¹Ã¯Â¿Â½Ã¯Â¿Â½reg1ÃÂ»Ã¯Â¿Â½Ã¯Â¿Â½ÃÂ»Ã¯Â¿Â½Ã¯Â¿Â½1
    iic_state_r <= iic_state ;
//----------Ã¯Â¿Â½Ã¯Â¿Â½----------------------------------------------------------   
    if ( iic_state == iic_returndata8 && iic_state_r == iic_returndata7 )
        reg1 <= reg1 + 1 ;
//----------ÃÂ´----------------------------------------------------------
     else if(iic_state_r == iic_read_over_ack && iic_state == iic_readdata1)
        reg1 <= reg1 + 1 ;        
    
//----------)

    end

    assign  reg_add = reg1 ;
    
wire [7:0] fpga_run_indi;
assign fpga_run_indi = userreg_0x0001 + 1'b1;    

////////////////////////////////////////////////////////
always@( posedge i_fpga_clk or negedge i_rst_n)
    if ( !i_rst_n )  reg3 <= 0 ;
    else if ( scl_r_r == 1 && scl_r == 0 ) begin
        case ( reg_add )               // 
                16'h0000: reg3 <= userreg_0x0000;
                16'h0001: reg3 <= fpga_run_indi ; 
                16'h0010: reg3 <= userreg_0x0010;
                16'h0011: reg3 <= userreg_0x0011;
                16'h0210: reg3 <= userreg_0x0210;
                16'h0211: reg3 <= userreg_0x0211;                            
                16'h0012: reg3 <= userreg_0x0012;
                16'h0112: reg3 <= userreg_0x0112;
                16'h0212: reg3 <= userreg_0x0212;
                16'h0312: reg3 <= userreg_0x0312;
                16'h0013: reg3 <= userreg_0x0013;
                16'h0113: reg3 <= userreg_0x0113;
                16'h0213: reg3 <= userreg_0x0213;
                16'h0313: reg3 <= userreg_0x0313;
                16'h0014: reg3 <= userreg_0x0014;
                16'h0114: reg3 <= userreg_0x0114;
                16'h0214: reg3 <= userreg_0x0214;
                16'h0314: reg3 <= userreg_0x0314;
                16'h0015: reg3 <= userreg_0x0015;
                16'h0115: reg3 <= userreg_0x0115;
                16'h0215: reg3 <= userreg_0x0215;
                16'h0315: reg3 <= userreg_0x0315;
                16'h0016: reg3 <= userreg_0x0016;
                16'h0116: reg3 <= userreg_0x0116;
                16'h0216: reg3 <= userreg_0x0216;
                16'h0316: reg3 <= userreg_0x0316;
                16'h0017: reg3 <= userreg_0x0017;
                16'h0117: reg3 <= userreg_0x0117;
                16'h0217: reg3 <= userreg_0x0217;
                16'h0317: reg3 <= userreg_0x0317;
                16'h0018: reg3 <= userreg_0x0018;
                16'h0118: reg3 <= userreg_0x0118;
                16'h0218: reg3 <= userreg_0x0218;
                16'h0318: reg3 <= userreg_0x0318;
                16'h0019: reg3 <= userreg_0x0019;
                16'h0119: reg3 <= userreg_0x0119;
                16'h0219: reg3 <= userreg_0x0219;
                16'h0319: reg3 <= userreg_0x0319;
                16'h001a: reg3 <= userreg_0x001a;
                16'h011a: reg3 <= userreg_0x011a;
                16'h021a: reg3 <= userreg_0x021a;
                16'h031a: reg3 <= userreg_0x031a;
                16'h001b: reg3 <= userreg_0x001b;
                16'h011b: reg3 <= userreg_0x011b;
                16'h021b: reg3 <= userreg_0x021b;
                16'h031b: reg3 <= userreg_0x031b;
                16'h001c: reg3 <= userreg_0x001c;
                16'h011c: reg3 <= userreg_0x011c;
					 16'h021c: reg3 <= userreg_0x021c;
					 16'h031c: reg3 <= userreg_0x031c;
                16'h001d: reg3 <= userreg_0x001d;
                16'h011d: reg3 <= userreg_0x011d;
                16'h021d: reg3 <= userreg_0x021d;
                16'h031d: reg3 <= userreg_0x031d;
                16'h001e: reg3 <= userreg_0x001e;
                16'h011e: reg3 <= userreg_0x011e;
                16'h021e: reg3 <= userreg_0x021e;
                16'h021f: reg3 <= userreg_0x021f;
                16'h031e: reg3 <= userreg_0x031e;
                16'h031f: reg3 <= userreg_0x031f;    
                            
                16'h0020: reg3 <= userreg_0x0020;
                16'h0021: reg3 <= userreg_0x0021;
                16'h0120: reg3 <= userreg_0x0120;     
                16'h0121: reg3 <= userreg_0x0121;
                16'h0220: reg3 <= userreg_0x0220;   
					 16'h0221: reg3 <= userreg_0x0221;  
                16'h0320: reg3 <= userreg_0x0320;
                16'h0321: reg3 <= userreg_0x0321;
                16'h0349: reg3 <= userreg_0x0349;                
                16'h0022: reg3 <= userreg_0x0022; 
                16'h0122: reg3 <= userreg_0x0122;                
                16'h0222: reg3 <= userreg_0x0222;
                16'h0322: reg3 <= userreg_0x0322;
                16'h0023: reg3 <= userreg_0x0023;
                16'h0223: reg3 <= userreg_0x0223;
                16'h0024: reg3 <= userreg_0x0024;
                16'h0224: reg3 <= userreg_0x0224;
                16'h0324: reg3 <= userreg_0x0324;
                16'h0244: reg3 <= userreg_0x0244; 
                16'h0245: reg3 <= userreg_0x0245; 
                16'h0246: reg3 <= userreg_0x0246; 
                16'h0344: reg3 <= userreg_0x0344; 
                16'h0346: reg3 <= userreg_0x0346; 
                16'h0345: reg3 <= userreg_0x0345; 
                16'h0272: reg3 <= userreg_0x0272; 
                16'h0271: reg3 <= userreg_0x0271; 
                16'h0270: reg3 <= userreg_0x0270; 
                16'h014c: reg3 <= userreg_0x014c; 
                16'h0348: reg3 <= userreg_0x0348; 
                16'h0347: reg3 <= userreg_0x0347; 
                         
                16'h0030: reg3 <= userreg_0x0030; 
                16'h0031: reg3 <= userreg_0x0031;   
                16'h0130: reg3 <= userreg_0x0130;
                16'h0230: reg3 <= userreg_0x0230;
                16'h0330: reg3 <= userreg_0x0330;
                16'h0034: reg3 <= userreg_0x0034;
                16'h0134: reg3 <= userreg_0x0134;                                
                16'h0334: reg3 <= userreg_0x0334;
                16'h0336: reg3 <= userreg_0x0336;
                16'h0337: reg3 <= userreg_0x0337;
                16'h0338: reg3 <= userreg_0x0338;
                16'h0339: reg3 <= userreg_0x0339;
                16'h033a: reg3 <= userreg_0x033a;
                16'h003b: reg3 <= userreg_0x003b;
                16'h033b: reg3 <= userreg_0x033b;
                16'h003c: reg3 <= userreg_0x003c;
                16'h033c: reg3 <= userreg_0x033c;
                16'h003d: reg3 <= userreg_0x003d;
                16'h033d: reg3 <= userreg_0x033d;
                16'h033e: reg3 <= userreg_0x033e;
                16'h033f: reg3 <= userreg_0x033f;
                16'h0040: reg3 <= userreg_0x0040;
                16'h0140: reg3 <= userreg_0x0140;
                16'h0240: reg3 <= userreg_0x0240;
                16'h0041: reg3 <= userreg_0x0041;
                16'h0141: reg3 <= userreg_0x0141;
                16'h0241: reg3 <= userreg_0x0241;
                16'h0042: reg3 <= userreg_0x0042;
                16'h0043: reg3 <= userreg_0x0043;
                16'h0044: reg3 <= userreg_0x0044;
                16'h0144: reg3 <= userreg_0x0144;
                16'h0045: reg3 <= userreg_0x0045;
                16'h0046: reg3 <= userreg_0x0046;
                16'h0047: reg3 <= userreg_0x0047;
                16'h0048: reg3 <= userreg_0x0048;
                16'h0049: reg3 <= userreg_0x0049;
                16'h004a: reg3 <= userreg_0x004a;
                16'h014a: reg3 <= userreg_0x014a;
                16'h024a: reg3 <= userreg_0x024a;
                16'h004b: reg3 <= userreg_0x004b;
                16'h014b: reg3 <= userreg_0x014b;
                16'h024b: reg3 <= userreg_0x024b;
                16'h004c: reg3 <= userreg_0x004c; 
                16'h004e: reg3 <= userreg_0x004e; 
                16'h004f: reg3 <= userreg_0x004f;
                16'h014e: reg3 <= userreg_0x014e;
                16'h014f: reg3 <= userreg_0x014f;
                16'h024e: reg3 <= userreg_0x024e;
                16'h024f: reg3 <= userreg_0x024f;                                         
                16'h0050: reg3 <= userreg_0x0050;
                16'h0250: reg3 <= userreg_0x0250;
                16'h0350: reg3 <= userreg_0x0350;                                
					 16'h0051: reg3 <= userreg_0x0051;
					 16'h0251: reg3 <= userreg_0x0251;
                16'h0351: reg3 <= userreg_0x0351;
                16'h0052: reg3 <= userreg_0x0052;
                16'h0252: reg3 <= userreg_0x0252;
                16'h0352: reg3 <= userreg_0x0352;
                16'h0053: reg3 <= userreg_0x0053;
                16'h0153: reg3 <= userreg_0x0153;
                16'h0253: reg3 <= userreg_0x0253;
                16'h0353: reg3 <= userreg_0x0353;
                16'h0054: reg3 <= userreg_0x0054;
                16'h0154: reg3 <= userreg_0x0154;
                16'h0254: reg3 <= userreg_0x0254;
                16'h0354: reg3 <= userreg_0x0354;
                16'h0055: reg3 <= userreg_0x0055;
                16'h0056: reg3 <= userreg_0x0056;
                16'h0057: reg3 <= userreg_0x0057;                
                16'h0155: reg3 <= userreg_0x0155;
                16'h0255: reg3 <= userreg_0x0255; 
				16'h0355: reg3 <= userreg_0x0355;  
				16'h005e: reg3 <= userreg_0x005e;	
				16'h005f: reg3 <= userreg_0x005f;	
				16'h015e: reg3 <= userreg_0x015e;	
				16'h015f: reg3 <= userreg_0x015f;	
				16'h025e: reg3 <= userreg_0x025e;	
				16'h025f: reg3 <= userreg_0x025f;	
				16'h035e: reg3 <= userreg_0x035e;				
				16'h035f: reg3 <= userreg_0x035f;				
				16'h005d: reg3 <= userreg_0x005d;
				16'h015d: reg3 <= userreg_0x015d;				
				16'h0060: reg3 <= userreg_0x0060;
				16'h0061: reg3 <= userreg_0x0061;
				16'h0062: reg3 <= userreg_0x0062;
				16'h0262: reg3 <= userreg_0x0262;
				16'h0063: reg3 <= userreg_0x0063;
				16'h0064: reg3 <= userreg_0x0064;
				16'h0164: reg3 <= userreg_0x0164;
				16'h0065: reg3 <= userreg_0x0065;   
				
				16'h0066: reg3 <= userreg_0x0066;
				16'h0067: reg3 <= userreg_0x0067;
				16'h0068: reg3 <= userreg_0x0068;
				16'h0069: reg3 <= userreg_0x0069;
				16'h006a: reg3 <= userreg_0x006a;
				16'h006b: reg3 <= userreg_0x006b;
				16'h0166: reg3 <= userreg_0x0166;
				16'h0167: reg3 <= userreg_0x0167;
				16'h0168: reg3 <= userreg_0x0168;
				16'h0169: reg3 <= userreg_0x0169;
				16'h016a: reg3 <= userreg_0x016a;
				16'h016b: reg3 <= userreg_0x016b;				
																		
				16'h006c: reg3 <= userreg_0x006c;
				16'h016c: reg3 <= userreg_0x016c;
				16'h006d: reg3 <= userreg_0x006d;
				16'h016d: reg3 <= userreg_0x016d;
				16'h006e: reg3 <= userreg_0x006e;
				16'h016e: reg3 <= userreg_0x016e;
				16'h006f: reg3 <= userreg_0x006f;
				16'h016f: reg3 <= userreg_0x016f;
				16'h026f: reg3 <= userreg_0x026f;
				16'h036f: reg3 <= userreg_0x036f;
				16'h0070: reg3 <= userreg_0x0070;
				16'h0071: reg3 <= userreg_0x0071;
				16'h0072: reg3 <= userreg_0x0072;
				16'h0073: reg3 <= userreg_0x0073;
				16'h0074: reg3 <= userreg_0x0074;
				16'h0075: reg3 <= userreg_0x0075;
				16'h0076: reg3 <= userreg_0x0076;
				16'h0077: reg3 <= userreg_0x0077;
				16'h0277: reg3 <= userreg_0x0277;
				16'h0078: reg3 <= userreg_0x0078;
				16'h0278: reg3 <= userreg_0x0278;
				16'h0079: reg3 <= userreg_0x0079;
				16'h0279: reg3 <= userreg_0x0279;
				16'h007a: reg3 <= userreg_0x007a;
				16'h027a: reg3 <= userreg_0x027a;
				16'h007b: reg3 <= userreg_0x007b;
				16'h027b: reg3 <= userreg_0x027b;
				16'h007c: reg3 <= userreg_0x007c;
				16'h027c: reg3 <= userreg_0x027c;
				16'h007d: reg3 <= userreg_0x007d;      
				16'h007e: reg3 <= userreg_0x007e;
				16'h027d: reg3 <= userreg_0x027d;
				16'h027e: reg3 <= userreg_0x027e;
				16'h027f: reg3 <= userreg_0x027f; 
				16'h003a: reg3 <= userreg_0x003a;
				16'h013a: reg3 <= userreg_0x013a;  				
		        16'h023a: reg3 <= userreg_0x023a;
				16'h023b: reg3 <= userreg_0x023b;
				16'h0331: reg3 <= userreg_0x0331;
				16'h0332: reg3 <= userreg_0x0332;
				16'h0333: reg3 <= userreg_0x0333; 
				16'h004d: reg3 <= userreg_0x004d; 
                16'h0340: reg3 <= userreg_0x0340;   
                16'h0341: reg3 <= userreg_0x0341;
                16'h0342: reg3 <= userreg_0x0342;
                16'h0343: reg3 <= userreg_0x0343;
                16'h001f: reg3 <= userreg_0x001f;
                16'h0025: reg3 <= userreg_0x0025;
                16'h0026: reg3 <= userreg_0x0026;
                16'h0125: reg3 <= userreg_0x0125;
                16'h0126: reg3 <= userreg_0x0126;
                16'h0225: reg3 <= userreg_0x0225;
                16'h0226: reg3 <= userreg_0x0226;
                16'h0325: reg3 <= userreg_0x0325;
                16'h0326: reg3 <= userreg_0x0326; 
                16'h0027: reg3 <= userreg_0x0027;    
                16'h0028: reg3 <= userreg_0x0028;     
                16'h0128: reg3 <= userreg_0x0128;  
                16'h0228: reg3 <= userreg_0x0228;  
                16'h0328: reg3 <= userreg_0x0328;  
                
                16'h0029: reg3 <= userreg_0x0029;  
                16'h002a: reg3 <= userreg_0x002a;
                16'h012a: reg3 <= userreg_0x012a; 
                16'h022a: reg3 <= userreg_0x022a;                                  
                16'h0127: reg3 <= userreg_0x0127;                
                16'h0227: reg3 <= userreg_0x0227;	
                16'h0229: reg3 <= userreg_0x0229;	
  
                
                     
                
                                                       
                16'h0080: reg3 <= monitor_0x0080;
                16'h0081: reg3 <= monitor_0x0081;
                16'h0082: reg3 <= monitor_0x0082;
                16'h0083: reg3 <= monitor_0x0083;
                16'h0084: reg3 <= monitor_0x0084;
                16'h0085: reg3 <= monitor_0x0085;
                16'h0086: reg3 <= monitor_0x0086;
                16'h0087: reg3 <= monitor_0x0087;
                16'h0088: reg3 <= monitor_0x0088;
                16'h0089: reg3 <= monitor_0x0089;
                16'h008a: reg3 <= monitor_0x008a;
                16'h008b: reg3 <= monitor_0x008b;
                16'h008c: reg3 <= monitor_0x008c;
                16'h008d: reg3 <= monitor_0x008d;
                16'h008e: reg3 <= monitor_0x008e;
                16'h008f: reg3 <= monitor_0x008f;
                16'h0090: reg3 <= monitor_0x0090;
                16'h0091: reg3 <= monitor_0x0091;
                16'h0092: reg3 <= monitor_0x0092;
                16'h0093: reg3 <= monitor_0x0093;
                16'h0094: reg3 <= monitor_0x0094;
                16'h0294: reg3 <= monitor_0x0294;
                16'h0095: reg3 <= monitor_0x0095;
                16'h0295: reg3 <= monitor_0x0295;
                16'h0096: reg3 <= monitor_0x0096;
                16'h0196: reg3 <= monitor_0x0196;
                16'h0296: reg3 <= monitor_0x0296;
                16'h0396: reg3 <= monitor_0x0396;
                16'h0097: reg3 <= monitor_0x0097;
                16'h0197: reg3 <= monitor_0x0197;
                16'h0297: reg3 <= monitor_0x0297;           
                16'h0394: reg3 <= monitor_0x0394;
                16'h0395: reg3 <= monitor_0x0395;
                16'h0397: reg3 <= monitor_0x0397;
                16'h0098: reg3 <= monitor_0x0098;
                16'h0198: reg3 <= monitor_0x0198;
                16'h0298: reg3 <= monitor_0x0298;
                16'h0398: reg3 <= monitor_0x0398;
                16'h0099: reg3 <= monitor_0x0099;
                16'h0199: reg3 <= monitor_0x0199;
                16'h0299: reg3 <= monitor_0x0299;
                16'h0399: reg3 <= monitor_0x0399;
                16'h009a: reg3 <= monitor_0x009a;
                16'h019a: reg3 <= monitor_0x019a;
                16'h029a: reg3 <= monitor_0x029a;
                16'h039a: reg3 <= monitor_0x039a;
                16'h009b: reg3 <= monitor_0x009b;
                16'h019b: reg3 <= monitor_0x019b;
                16'h029b: reg3 <= monitor_0x029b;
                16'h039b: reg3 <= monitor_0x039b;
                16'h009c: reg3 <= monitor_0x009c;
                16'h019c: reg3 <= monitor_0x019c;
                16'h029c: reg3 <= monitor_0x029c;
                16'h039c: reg3 <= monitor_0x039c;
                16'h009d: reg3 <= monitor_0x009d;
                16'h009e: reg3 <= monitor_0x009e;                 
                16'h019d: reg3 <= monitor_0x019d;
                16'h029d: reg3 <= monitor_0x029d;
                16'h039d: reg3 <= monitor_0x039d;
                16'h00a0: reg3 <= monitor_0x00a0;
                16'h01a0: reg3 <= monitor_0x01a0;
                16'h02a0: reg3 <= monitor_0x02a0;
                16'h00a1: reg3 <= monitor_0x00a1;
                16'h01a1: reg3 <= monitor_0x01a1;
                16'h02a1: reg3 <= monitor_0x02a1;
                16'h02a2: reg3 <= monitor_0x02a2;
                16'h02a3: reg3 <= monitor_0x02a3;
                16'h00a4: reg3 <= monitor_0x00a4;
                16'h01a4: reg3 <= monitor_0x01a4;
                16'h02a4: reg3 <= monitor_0x02a4;
                16'h03a4: reg3 <= monitor_0x03a4;
                16'h00a5: reg3 <= monitor_0x00a5;
                16'h01a5: reg3 <= monitor_0x01a5;
                16'h02a5: reg3 <= monitor_0x02a5;
                16'h03a5: reg3 <= monitor_0x03a5;
                16'h00a6: reg3 <= monitor_0x00a6;
                16'h01a6: reg3 <= monitor_0x01a6;
                16'h02a6: reg3 <= monitor_0x02a6;
                16'h03a6: reg3 <= monitor_0x03a6;
                16'h00a7: reg3 <= monitor_0x00a7;
                16'h01a7: reg3 <= monitor_0x01a7;
                16'h02a7: reg3 <= monitor_0x02a7;
                16'h03a7: reg3 <= monitor_0x03a7;	
                16'h00a8: reg3 <= monitor_0x00a8;
                16'h01a8: reg3 <= monitor_0x01a8;               
                16'h02a8: reg3 <= monitor_0x02a8;
                16'h03a8: reg3 <= monitor_0x03a8;
                16'h00a9: reg3 <= monitor_0x00a9;
                16'h01a9: reg3 <= monitor_0x01a9;
                16'h02a9: reg3 <= monitor_0x02a9;
                16'h03a9: reg3 <= monitor_0x03a9;
                16'h00aa: reg3 <= monitor_0x00aa;
                16'h01aa: reg3 <= monitor_0x01aa;
                16'h02aa: reg3 <= monitor_0x02aa;
                16'h03aa: reg3 <= monitor_0x03aa; 
                16'h00ab: reg3 <= monitor_0x00ab;
       
                16'h01ab: reg3 <= monitor_0x01ab;
                16'h01ac: reg3 <= monitor_0x01ac;
                16'h02ab: reg3 <= monitor_0x02ab;
                16'h02ac: reg3 <= monitor_0x02ac;
                16'h03ab: reg3 <= monitor_0x03ab;
                16'h03ac: reg3 <= monitor_0x03ac;                                                  
                16'h03ad: reg3 <= monitor_0x03ad;  
                                                                  
                16'h02ad: reg3 <= monitor_0x02ad;
                16'h00ae: reg3 <= monitor_0x00ae;
                16'h00b0: reg3 <= monitor_0x00b0;
                16'h01b0: reg3 <= monitor_0x01b0;
                16'h03b0: reg3 <= monitor_0x03b0;
                16'h00b1: reg3 <= monitor_0x00b1;
                16'h01b1: reg3 <= monitor_0x01b1;
                16'h03b1: reg3 <= monitor_0x03b1;
                16'h00b2: reg3 <= monitor_0x00b2;
                16'h01b2: reg3 <= monitor_0x01b2;
                16'h03b2: reg3 <= monitor_0x03b2;
                16'h00b3: reg3 <= monitor_0x00b3;
                16'h01b3: reg3 <= monitor_0x01b3;
                16'h03b3: reg3 <= monitor_0x03b3;
                16'h03b4: reg3 <= monitor_0x03b4;
                16'h03b5: reg3 <= monitor_0x03b5;
                16'h03b6: reg3 <= monitor_0x03b6;
                16'h03b7: reg3 <= monitor_0x03b7;
                16'h03b8: reg3 <= monitor_0x03b8;
                16'h03b9: reg3 <= monitor_0x03b9;
                16'h03ba: reg3 <= monitor_0x03ba;
                16'h03bb: reg3 <= monitor_0x03bb;
                16'h00bb: reg3 <= monitor_0x00bb;                 
                16'h00bc: reg3 <= monitor_0x00bc;
                16'h00bd: reg3 <= monitor_0x00bd;
                16'h00be: reg3 <= monitor_0x00be;
                16'h00bf: reg3 <= monitor_0x00bf;
                16'h01bc: reg3 <= monitor_0x01bc;
                16'h01bd: reg3 <= monitor_0x01bd;
                16'h01be: reg3 <= monitor_0x01be;
                16'h01bf: reg3 <= monitor_0x01bf;
                16'h02bc: reg3 <= monitor_0x02bc;
                16'h02bd: reg3 <= monitor_0x02bd;
                16'h02be: reg3 <= monitor_0x02be;
                16'h02bf: reg3 <= monitor_0x02bf;

               
                
                16'h00c0: reg3 <= monitor_0x00c0;
                16'h00c1: reg3 <= monitor_0x00c1;
                16'h00c2: reg3 <= monitor_0x00c2;
                16'h00c3: reg3 <= monitor_0x00c3;
                16'h00c4: reg3 <= monitor_0x00c4;
                16'h00c5: reg3 <= monitor_0x00c5;
                16'h00c6: reg3 <= monitor_0x00c6;
                16'h00c7: reg3 <= monitor_0x00c7;
                16'h00c8: reg3 <= monitor_0x00c8; 
                16'h01c8: reg3 <= monitor_0x01c8;
                16'h02c8: reg3 <= monitor_0x02c8;
                16'h03c8: reg3 <= monitor_0x03c8;
                
                  
               16'h00c9: reg3 <= monitor_0x00c9;
					16'h00ca: reg3 <= monitor_0x00ca; 
					16'h00cb: reg3 <= monitor_0x00cb; 
					16'h00cc: reg3 <= monitor_0x00cc; 
					16'h00cd: reg3 <= monitor_0x00cd;
					16'h00ce: reg3 <= monitor_0x00ce;
					16'h01ce: reg3 <= monitor_0x01ce;								 

               16'h01c9: reg3 <= monitor_0x01c9; 
					16'h01ca: reg3 <= monitor_0x01ca; 
					16'h01cb: reg3 <= monitor_0x01cb; 
					16'h01cc: reg3 <= monitor_0x01cc; 
					16'h01cd: reg3 <= monitor_0x01cd; 
                
                16'h02c9: reg3 <= monitor_0x02c9;
                16'h03c9: reg3 <= monitor_0x03c9;                                          
               
                16'h03c0: reg3 <= monitor_0x03c0;
                16'h03c1: reg3 <= monitor_0x03c1;
                16'h03c2: reg3 <= monitor_0x03c2;
                16'h03c3: reg3 <= monitor_0x03c3;
                16'h03c4: reg3 <= monitor_0x03c4;
                16'h03c5: reg3 <= monitor_0x03c5;
                16'h03c6: reg3 <= monitor_0x03c6;
                16'h03c7: reg3 <= monitor_0x03c7;
                16'h03ef: reg3 <= monitor_0x03ef; 
                16'h00b4: reg3 <= monitor_0x00b4;
                16'h00b5: reg3 <= monitor_0x00b5;
                16'h00b6: reg3 <= monitor_0x00b6;                
                16'h01b4: reg3 <= monitor_0x01b4;
                16'h01b5: reg3 <= monitor_0x01b5;   
                16'h02b4: reg3 <= monitor_0x02b4;  
                16'h02b5: reg3 <= monitor_0x02b5;  
                16'h00ff: reg3 <= monitor_0x00ff;   
                16'h00ac: reg3 <= monitor_0x00ac;	
                16'h00ad: reg3 <= monitor_0x00ad;
                16'h00af: reg3 <= monitor_0x00af;
                16'h02af: reg3 <= monitor_0x02af;	
                16'h02b0: reg3 <= monitor_0x02b0; 
                16'h02b1: reg3 <= monitor_0x02b1; 
                16'h02b2: reg3 <= monitor_0x02b2; 
                16'h02b3: reg3 <= monitor_0x02b3; 
                
                
	            
                
                                                
			default : reg3 <= 8'h00;

        endcase											       
    end                                                        

always@( posedge i_fpga_clk or negedge i_rst_n)
    if ( !i_rst_n ) 
       userreg_0x004c<= 8'hff; 
    else  if ( iic_state == iic_read_over_ack )
        case ( reg_add )
                16'h004c: userreg_0x004c<= reg2[ 7: 0];         
        endcase
    else
    	userreg_0x004c <= userreg_0x004c;   
    
                                                               
always@( posedge i_fpga_clk )                                  
     if ( iic_state == iic_read_over_ack )
    begin
        case ( reg_add )
                16'h0000: userreg_0x0000<= reg2[ 7: 0];            
                16'h0001: userreg_0x0001<= reg2[ 7: 0];  
                16'h0010: userreg_0x0010<= reg2[ 7: 0];  
                16'h0011: userreg_0x0011<= reg2[ 7: 0];  
                16'h0210: userreg_0x0210<= reg2[ 7: 0];
                16'h0211: userreg_0x0211<= reg2[ 7: 0];                
                16'h0012: userreg_0x0012<= reg2[ 7: 0];
                16'h0112: userreg_0x0112<= reg2[ 7: 0];
                16'h0212: userreg_0x0212<= reg2[ 7: 0];
                16'h0312: userreg_0x0312<= reg2[ 7: 0];
                16'h0013: userreg_0x0013<= reg2[ 7: 0];
                16'h0113: userreg_0x0113<= reg2[ 7: 0];
                16'h0213: userreg_0x0213<= reg2[ 7: 0];
                16'h0313: userreg_0x0313<= reg2[ 7: 0];
                16'h0014: userreg_0x0014<= reg2[ 7: 0];
                16'h0114: userreg_0x0114<= reg2[ 7: 0];
                16'h0214: userreg_0x0214<= reg2[ 7: 0];
                16'h0314: userreg_0x0314<= reg2[ 7: 0];
                16'h0015: userreg_0x0015<= reg2[ 7: 0];
                16'h0115: userreg_0x0115<= reg2[ 7: 0];
                16'h0215: userreg_0x0215<= reg2[ 7: 0];
                16'h0315: userreg_0x0315<= reg2[ 7: 0];
                16'h0016: userreg_0x0016<= reg2[ 7: 0];
                16'h0116: userreg_0x0116<= reg2[ 7: 0];
                16'h0216: userreg_0x0216<= reg2[ 7: 0];
                16'h0316: userreg_0x0316<= reg2[ 7: 0];
                16'h0017: userreg_0x0017<= reg2[ 7: 0];                
                16'h0117: userreg_0x0117<= reg2[ 7: 0];
                16'h0217: userreg_0x0217<= reg2[ 7: 0];                
                16'h0317: userreg_0x0317<= reg2[ 7: 0];
                16'h0018: userreg_0x0018<= reg2[ 7: 0];
					 16'h0118: userreg_0x0118<= reg2[ 7: 0];
					 16'h0218: userreg_0x0218<= reg2[ 7: 0];					 
                16'h0318: userreg_0x0318<= reg2[ 7: 0]; 
                16'h0019: userreg_0x0019<= reg2[ 7: 0];
                16'h0119: userreg_0x0119<= reg2[ 7: 0];                
                16'h0219: userreg_0x0219<= reg2[ 7: 0];
                16'h0319: userreg_0x0319<= reg2[ 7: 0];
                16'h001a: userreg_0x001a<= reg2[ 7: 0];
                16'h011a: userreg_0x011a<= reg2[ 7: 0];
                16'h021a: userreg_0x021a<= reg2[ 7: 0];                
                16'h031a: userreg_0x031a<= reg2[ 7: 0];
                16'h001b: userreg_0x001b<= reg2[ 7: 0];
                16'h011b: userreg_0x011b<= reg2[ 7: 0];
                16'h021b: userreg_0x021b<= reg2[ 7: 0];
                16'h031b: userreg_0x031b<= reg2[ 7: 0];
                16'h001c: userreg_0x001c<= reg2[ 7: 0];
                16'h011c: userreg_0x011c<= reg2[ 7: 0];
                16'h021c: userreg_0x021c<= reg2[ 7: 0];
                16'h031c: userreg_0x031c<= reg2[ 7: 0];
                16'h001d: userreg_0x001d<= reg2[ 7: 0];
                16'h011d: userreg_0x011d<= reg2[ 7: 0];                
                16'h021d: userreg_0x021d<= reg2[ 7: 0]; 
                16'h031d: userreg_0x031d<= reg2[ 7: 0];                                 
                16'h001e: userreg_0x001e<= reg2[ 7: 0];
                16'h011e: userreg_0x011e<= reg2[ 7: 0];
                16'h021e: userreg_0x021e<= reg2[ 7: 0];
                16'h021f: userreg_0x021f<= reg2[ 7: 0];
                16'h031e: userreg_0x031e<= reg2[ 7: 0];
                16'h031f: userreg_0x031f<= reg2[ 7: 0];     
                           
                16'h0020: userreg_0x0020<= reg2[ 7: 0];     
                16'h0021: userreg_0x0021<= reg2[ 7: 0];                
                16'h0120: userreg_0x0120<= reg2[ 7: 0];
					 16'h0121: userreg_0x0121<= reg2[ 7: 0];  
                16'h0220: userreg_0x0220<= reg2[ 7: 0];     
                16'h0221: userreg_0x0221<= reg2[ 7: 0];         
                16'h0320: userreg_0x0320<= reg2[ 7: 0];
                16'h0321: userreg_0x0321<= reg2[ 7: 0];
                16'h0349: userreg_0x0349<= reg2[ 7: 0];                
                16'h0022: userreg_0x0022<= reg2[ 7: 0];  
                16'h0122: userreg_0x0122<= reg2[ 7: 0];                
                16'h0222: userreg_0x0222<= reg2[ 7: 0];
                16'h0322: userreg_0x0322<= reg2[ 7: 0];
                16'h0023: userreg_0x0023<= reg2[ 7: 0];
                16'h0223: userreg_0x0223<= reg2[ 7: 0];
                16'h0024: userreg_0x0024<= reg2[ 7: 0];
                16'h0224: userreg_0x0224<= reg2[ 7: 0];
                16'h0324: userreg_0x0324<= reg2[ 7: 0];
                16'h0244: userreg_0x0244<= reg2[ 7: 0];
                16'h0245: userreg_0x0245<= reg2[ 7: 0];
                16'h0246: userreg_0x0246<= reg2[ 7: 0];
                16'h0344: userreg_0x0344<= reg2[ 7: 0];
                16'h0346: userreg_0x0346<= reg2[ 7: 0];
                16'h0345: userreg_0x0345<= reg2[ 7: 0];
                16'h0272: userreg_0x0272<= reg2[ 7: 0];
                16'h0271: userreg_0x0271<= reg2[ 7: 0];
                16'h0270: userreg_0x0270<= reg2[ 7: 0];
                16'h014c: userreg_0x014c<= reg2[ 7: 0];
                16'h0348: userreg_0x0348<= reg2[ 7: 0];
                16'h0347: userreg_0x0347<= reg2[ 7: 0];                                         
               
                16'h0030: userreg_0x0030<= reg2[ 7: 0];  
             	 16'h0031: userreg_0x0031<= reg2[ 7: 0];  
                16'h0130: userreg_0x0130<= reg2[ 7: 0];
                16'h0230: userreg_0x0230<= reg2[ 7: 0];
                16'h0330: userreg_0x0330<= reg2[ 7: 0];
                16'h0034: userreg_0x0034<= reg2[ 7: 0];
                16'h0134: userreg_0x0134<= reg2[ 7: 0];
                16'h0334: userreg_0x0334<= reg2[ 7: 0];                                
                16'h0336: userreg_0x0336<= reg2[ 7: 0];
                16'h0337: userreg_0x0337<= reg2[ 7: 0];
                16'h0338: userreg_0x0338<= reg2[ 7: 0];
                16'h0339: userreg_0x0339<= reg2[ 7: 0];
                16'h033a: userreg_0x033a<= reg2[ 7: 0];
                16'h003b: userreg_0x003b<= reg2[ 7: 0];
                16'h033b: userreg_0x033b<= reg2[ 7: 0];
                16'h003c: userreg_0x003c<= reg2[ 7: 0];
                16'h033c: userreg_0x033c<= reg2[ 7: 0];
                16'h003d: userreg_0x003d<= reg2[ 7: 0];
                16'h033d: userreg_0x033d<= reg2[ 7: 0];
                16'h033e: userreg_0x033e<= reg2[ 7: 0];
                16'h033f: userreg_0x033f<= reg2[ 7: 0];
                16'h0040: userreg_0x0040<= reg2[ 7: 0];
                16'h0140: userreg_0x0140<= reg2[ 7: 0];
                16'h0240: userreg_0x0240<= reg2[ 7: 0];
                16'h0041: userreg_0x0041<= reg2[ 7: 0];
                16'h0141: userreg_0x0141<= reg2[ 7: 0];
                16'h0241: userreg_0x0241<= reg2[ 7: 0];
                16'h0042: userreg_0x0042<= reg2[ 7: 0];
                16'h0043: userreg_0x0043<= reg2[ 7: 0];
                16'h0044: userreg_0x0044<= reg2[ 7: 0];
                16'h0144: userreg_0x0144<= reg2[ 7: 0];
                16'h0045: userreg_0x0045<= reg2[ 7: 0];
                16'h0046: userreg_0x0046<= reg2[ 7: 0];
                16'h0047: userreg_0x0047<= reg2[ 7: 0];
                16'h0048: userreg_0x0048<= reg2[ 7: 0];
                16'h0049: userreg_0x0049<= reg2[ 7: 0];
                16'h004a: userreg_0x004a<= reg2[ 7: 0];
                16'h014a: userreg_0x014a<= reg2[ 7: 0];
                16'h024a: userreg_0x024a<= reg2[ 7: 0];
                16'h004b: userreg_0x004b<= reg2[ 7: 0];
                16'h014b: userreg_0x014b<= reg2[ 7: 0];
                16'h024b: userreg_0x024b<= reg2[ 7: 0];
//              16'h004c: userreg_0x004c<= reg2[ 7: 0]; 
                16'h004e: userreg_0x004e<= reg2[ 7: 0];
                16'h004f: userreg_0x004f<= reg2[ 7: 0];
                16'h014e: userreg_0x014e<= reg2[ 7: 0];
                16'h014f: userreg_0x014f<= reg2[ 7: 0];
                16'h024e: userreg_0x024e<= reg2[ 7: 0];
                16'h024f: userreg_0x024f<= reg2[ 7: 0];
                16'h0050: userreg_0x0050<= reg2[ 7: 0]; 
                16'h0250: userreg_0x0250<= reg2[ 7: 0]; 
                16'h0350: userreg_0x0350<= reg2[ 7: 0];                                   
                16'h0051: userreg_0x0051<= reg2[ 7: 0];
                16'h0251: userreg_0x0251<= reg2[ 7: 0];
                16'h0351: userreg_0x0351<= reg2[ 7: 0];
                16'h0052: userreg_0x0052<= reg2[ 7: 0];
                16'h0252: userreg_0x0252<= reg2[ 7: 0];
                16'h0352: userreg_0x0352<= reg2[ 7: 0];
                16'h0053: userreg_0x0053<= reg2[ 7: 0];
                16'h0153: userreg_0x0153<= reg2[ 7: 0];
                16'h0253: userreg_0x0253<= reg2[ 7: 0];
                16'h0353: userreg_0x0353<= reg2[ 7: 0];
                16'h0054: userreg_0x0054<= reg2[ 7: 0];
                16'h0154: userreg_0x0154<= reg2[ 7: 0];
                16'h0254: userreg_0x0254<= reg2[ 7: 0];
                16'h0354: userreg_0x0354<= reg2[ 7: 0];
                16'h0055: userreg_0x0055<= reg2[ 7: 0];
                16'h0056: userreg_0x0056<= reg2[ 7: 0];
                16'h0057: userreg_0x0057<= reg2[ 7: 0];                                
                16'h0155: userreg_0x0155<= reg2[ 7: 0];
                16'h0255: userreg_0x0255<= reg2[ 7: 0];
				  	16'h0355: userreg_0x0355<= reg2[ 7: 0];  
					16'h005e: userreg_0x005e<= reg2[ 7: 0];		
					16'h005f: userreg_0x005f<= reg2[ 7: 0];		
					16'h015e: userreg_0x015e<= reg2[ 7: 0];		
					16'h015f: userreg_0x015f<= reg2[ 7: 0];		
					16'h025e: userreg_0x025e<= reg2[ 7: 0];		
					16'h025f: userreg_0x025f<= reg2[ 7: 0];		
					16'h035e: userreg_0x035e<= reg2[ 7: 0];				
					16'h035f: userreg_0x035f<= reg2[ 7: 0];				
                16'h005d: userreg_0x005d<= reg2[ 7: 0];
                16'h015d: userreg_0x015d<= reg2[ 7: 0];                
                16'h0060: userreg_0x0060<= reg2[ 7: 0];
                16'h0061: userreg_0x0061<= reg2[ 7: 0];
                16'h0062: userreg_0x0062<= reg2[ 7: 0];
                16'h0262: userreg_0x0262<= reg2[ 7: 0];
                16'h0063: userreg_0x0063<= reg2[ 7: 0];
                16'h0064: userreg_0x0064<= reg2[ 7: 0];
                16'h0164: userreg_0x0164<= reg2[ 7: 0];
                16'h0065: userreg_0x0065<= reg2[ 7: 0];

				16'h0066: userreg_0x0066<= reg2[ 7: 0];
				16'h0067: userreg_0x0067<= reg2[ 7: 0];
				16'h0068: userreg_0x0068<= reg2[ 7: 0];
				16'h0069: userreg_0x0069<= reg2[ 7: 0];
				16'h006a: userreg_0x006a<= reg2[ 7: 0];
				16'h006b: userreg_0x006b<= reg2[ 7: 0];
				16'h0166: userreg_0x0166<= reg2[ 7: 0];
				16'h0167: userreg_0x0167<= reg2[ 7: 0];
				16'h0168: userreg_0x0168<= reg2[ 7: 0];
				16'h0169: userreg_0x0169<= reg2[ 7: 0];
				16'h016a: userreg_0x016a<= reg2[ 7: 0];
				16'h016b: userreg_0x016b<= reg2[ 7: 0];

                
                16'h006c: userreg_0x006c<= reg2[ 7: 0];
                16'h016c: userreg_0x016c<= reg2[ 7: 0];
                16'h006d: userreg_0x006d<= reg2[ 7: 0];
                16'h016d: userreg_0x016d<= reg2[ 7: 0];
                16'h006e: userreg_0x006e<= reg2[ 7: 0];
                16'h016e: userreg_0x016e<= reg2[ 7: 0];
                16'h006f: userreg_0x006f<= reg2[ 7: 0];
                16'h016f: userreg_0x016f<= reg2[ 7: 0];
                16'h026f: userreg_0x026f<= reg2[ 7: 0];
                16'h036f: userreg_0x036f<= reg2[ 7: 0];
                16'h0070: userreg_0x0070<= reg2[ 7: 0];
                16'h0071: userreg_0x0071<= reg2[ 7: 0];
                16'h0072: userreg_0x0072<= reg2[ 7: 0];
                16'h0073: userreg_0x0073<= reg2[ 7: 0];
                16'h0074: userreg_0x0074<= reg2[ 7: 0];
                16'h0075: userreg_0x0075<= reg2[ 7: 0];
                16'h0076: userreg_0x0076<= reg2[ 7: 0];
                16'h0077: userreg_0x0077<= reg2[ 7: 0];
                16'h0277: userreg_0x0277<= reg2[ 7: 0];
                16'h0078: userreg_0x0078<= reg2[ 7: 0];
                16'h0278: userreg_0x0278<= reg2[ 7: 0];
                16'h0079: userreg_0x0079<= reg2[ 7: 0];
                16'h0279: userreg_0x0279<= reg2[ 7: 0];
                16'h007a: userreg_0x007a<= reg2[ 7: 0];
                16'h027a: userreg_0x027a<= reg2[ 7: 0];
                16'h007b: userreg_0x007b<= reg2[ 7: 0];
                16'h027b: userreg_0x027b<= reg2[ 7: 0];
				16'h007c: userreg_0x007c<= reg2[ 7: 0];
                16'h027c: userreg_0x027c<= reg2[ 7: 0];
                16'h007d: userreg_0x007d<= reg2[ 7: 0];
                16'h007e: userreg_0x007e<= reg2[ 7: 0];
                16'h027d: userreg_0x027d<= reg2[ 7: 0];
                16'h027e: userreg_0x027e<= reg2[ 7: 0];
                16'h027f: userreg_0x027f<= reg2[ 7: 0];
				16'h003a: userreg_0x003a<= reg2[ 7: 0];
				16'h013a: userreg_0x013a<= reg2[ 7: 0]; 				
              	16'h023a: userreg_0x023a<= reg2[ 7: 0];
              	16'h023b: userreg_0x023b<= reg2[ 7: 0]; 
              	16'h0331: userreg_0x0331<= reg2[ 7: 0]; 
              	16'h0332: userreg_0x0332<= reg2[ 7: 0]; 
              	16'h0333: userreg_0x0333<= reg2[ 7: 0]; 
              	16'h004d: userreg_0x004d<= reg2[ 7: 0];               
                16'h0340: userreg_0x0340<= reg2[ 7: 0];  
                16'h0341: userreg_0x0341<= reg2[ 7: 0];  
                16'h0342: userreg_0x0342<= reg2[ 7: 0];  
                16'h0343: userreg_0x0343<= reg2[ 7: 0];  
                16'h001f: userreg_0x001f<= reg2[ 7: 0];
                16'h0025: userreg_0x0025<= reg2[ 7: 0];
                16'h0026: userreg_0x0026<= reg2[ 7: 0];
                16'h0125: userreg_0x0125<= reg2[ 7: 0];
                16'h0126: userreg_0x0126<= reg2[ 7: 0];
                16'h0225: userreg_0x0225<= reg2[ 7: 0];
                16'h0226: userreg_0x0226<= reg2[ 7: 0];
                16'h0325: userreg_0x0325<= reg2[ 7: 0];
                16'h0326: userreg_0x0326<= reg2[ 7: 0]; 
                16'h0027: userreg_0x0027<= reg2[ 7: 0]; 
                16'h0028: userreg_0x0028<= reg2[ 7: 0];   
                16'h0128: userreg_0x0128<= reg2[ 7: 0];  
                16'h0228: userreg_0x0228<= reg2[ 7: 0];  
                16'h0328: userreg_0x0328<= reg2[ 7: 0];  
                16'h0029: userreg_0x0029<= reg2[ 7: 0];
                16'h002a: userreg_0x002a<= reg2[ 7: 0];
                16'h012a: userreg_0x012a<= reg2[ 7: 0];
                16'h022a: userreg_0x022a<= reg2[ 7: 0];                                
                16'h0127: userreg_0x0127<= reg2[ 7: 0];                 
                16'h0227: userreg_0x0227<= reg2[ 7: 0]; 
                16'h0229: userreg_0x0229<= reg2[ 7: 0]; 
                
                                                                                                                       
           endcase                                           
    end                                                   
                                                          
endmodule


