   uint64_t desc_tx[20] = {
        0x0000000040000020,0x00000000400000a0,0x0000000000000053,0x8000000000000000,
        0x0000000040000040,0x0000000040000100,0x000000000000004f,0x8000000000000000,
        0x0000000040000060,0x0000000040000160,0x0000000000000060,0x8000000000000000,
        0x0000000040000080,0x00000000400001c0,0x0000000000000022,0x8000000000000000,
        0x0000000040000000,0x0000000040000200,0x00000000000000e9,0x8000000000000001};

//接收描述符 5个
    uint64_t desc_rx[20] = {
        0x0000000050000020,0x00000000500000a0,0x0000000000000000,0x8000000000000000,
        0x0000000050000040,0x00000000500001a0,0x0000000000000000,0x8000000000000000,
        0x0000000050000060,0x00000000500002a0,0x0000000000000000,0x8000000000000000,
        0x0000000050000080,0x00000000500003a0,0x0000000000000000,0x8000000000000000,
        0x0000000050000000,0x00000000500004a0,0x0000000000000000,0x8000000000000001};


    uint64_t tx_data[76] = {
    0x0008af4e00321200,0x010006080b041927,0x06400040fa1a3c00,0xa8c0bc08a8c0518d,
    0x773fbc0c58a36408,0x02a0000000000b03,0x0402000024361072,0xd8000a080204b405,
    0x4d485c5ffc5b8406,0x67cd981b8b8ab36e,0x3692233c79900bd0,0x030100000000f119, //pkt1
    0x00080000005e0001,0x004500080b041927,0x06400040fa1a3c00,0xa8c0bc08a8c0518d,
    0x773fbc0c58a36408,0x02a0000000000b03,0x0402000024361072,0xd8000a080204b405,
    0x07609f0027ae9efa,0x030100000000f119,0x030100000000f119,0xd8000a080204b405, //pkt2
    0x0008ffffffffffff,0x010006080b041927,0x11400040b824bb00,0xa8c06508a8c08283,
    0xa700c5f4a1004208,0x0301029c8130dc5f,0x0003020001020e30,0x030102030104e3ff,
    0x00800d0435303704,0x2130f999e180881f,0x02022701025b27ae,0x696d64410504e202, //pkt3
    0x1200af4e00321200,0x01000608f0ffff32,0x11400040b824bb00,0xa8c06508a8c08283,
    0xa700c5f4a1004208,0x0301029c8130dc5f,0x0003020001020e30,0x030102030104e3ff, //pkt4
    0x0000af4e00321200,0x0100060810111213,0x11400040a408f300,0xa8c06508a8c05e9f,
    0xdf00c5f4a1004208,0x030102d48130f765,0x0003020001020e30,0x030102030104e3ff,
    0x00800d0435303704,0x2130f999e180881f,0x02022701025b27ae,0x696d644105044602,
    0x4e85a82f8b0c046e,0x04f57a6696c72520,0x46ddca961c0d7408,0x119ef11385810471,
    0x5c675ac71d6a4fbf,0xaa9e459dcf398c6f,0xaac8f2ac727f21fa,0x111e5328740baabc,
    0x59bdf48663eb3cf4,0x9baccfe95d9d836c,0x61bd17463a3b1fc7,0x9229902f88e26f27,
    0x07609f0027ae9efa,0x23a45409bb86a3fc,0xd47e2465ca844d69,0x06eea33a0e785db0,
    0x51369bbb1d0e6def,0xa4233e3dc4eb60cb,0xd0e23e5aa819aa14,0x111e5328740baabc}; //pkt5

    printk(KERN_NOTICE "T/RxBuffer Init...\n");
    memset(p_db->io_r_base, 0, DMA_BUFFER_SIZE);
    memset(p_db->io_t_base, 0, DMA_BUFFER_SIZE);
    memset(p_db->reg_status, 0, DMA_REG_SIZE);

    printk(KERN_NOTICE "TxBuffer[0]: 0x%lx\n", *(p_db->io_t_base));
    printk(KERN_NOTICE "RxBuffer[0]: 0x%lx\n", *(p_db->io_r_base));
    printk(KERN_NOTICE "CtrlREG[0]: 0x%lx\n", *(p_db->reg_status));
    printk(KERN_NOTICE "RecvData[0]: 0x%lx\n", *(p_db->io_r_testaddr));

    printk(KERN_NOTICE "Write send_d to txbuf...\n");
    for (i = 0; i < 20; i++) {
        *(p_db->io_t_base) = desc_tx[i];
        p_db->io_t_base++;
    }

    printk(KERN_NOTICE "Write recv_d to rx_buf...\n");
    for (i = 0; i < 20; i++) {
        (*p_db->io_r_base) = desc_rx[i];
        p_db->io_r_base++;
    }

    printk(KERN_NOTICE "Write data to tx_buf...\n");
    for (i = 0; i < 20; i++) {
        (*p_db->io_t_base) = tx_data[i];
        p_db->io_t_base++;
    }


    printk(KERN_NOTICE "Set Ctrl reg...\n");

    //配置发送相关寄存器
    *(p_db->reg_status) = 0x0000000000002883;    //Reg0
    p_db->reg_status++;
    *(p_db->reg_status) = DMA_TRANSMIT_LIST_START;
    p_db->reg_status += 2;
    *(p_db->reg_status) = 0xffffffffffffffff;

    //配置接受相关寄存器
    p_db->reg_status = status;
    p_db->reg_status += 2;                                                                             
    *(p_db->reg_status) = DMA_RECEIVE_LIST_START;
    p_db->reg_status += 2;
    *(p_db->reg_status) = 0xffffffffffffffff;

    p_db->reg_status = status;
    p_db->io_t_base = txbuf;
    p_db->io_r_base = rxbuf;
    printk(KERN_NOTICE "Set over...\n");

    printk(KERN_NOTICE "SendData[0]: 0x%lx\n", *(p_db->io_t_testaddr));
    printk(KERN_NOTICE "RecvData[0]: 0x%lx\n", *(p_db->io_r_testaddr));
