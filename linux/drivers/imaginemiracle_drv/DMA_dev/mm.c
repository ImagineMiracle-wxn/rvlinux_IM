#include <stdio.h>
#include <malloc.h>


#define DMA_BUFFER_DBARR_SIZE(N)     (4 * N)
#define DMA_PACKETS_NUM(N)           (N < 64 ? 1 : ((N / 64) + ((N % 64 == 0) ? 0 : 1)))

int alloc_dma_desc_buf(long long int **desc_tx, long long int **desc_rx, int data_len)
{
    return 0;
}


int main(int argc, char *argv[])
{

    int a = DMA_PACKETS_NUM(664),
        B = DMA_BUFFER_DBARR_SIZE(a);

    long long int *desc_tx = NULL,
         *desc_rx = NULL;

    long long int txbuf_d_naddr = 0x0000000040000000,
         txbuf_d_last_naddr = 0x0000000040000000,

         rxbuf_d_naddr = 0x0000000050000000,
         rxbuf_d_last_naddr = 0x0000000050000000,
         db_step = 32,

         txbuf_d_daddr = 0x0000000040000060,
         rxbuf_d_daddr = 0x0000000050000060,
         daddr_step   = 64,

         buf_d_lenaddr = 0x0000000000000040,
         buf_status    = 0x8000000000000000;
    long long int pnum = DMA_PACKETS_NUM(664),
         len = DMA_BUFFER_DBARR_SIZE(pnum);                                                                                                  
    long long int i = 0;

    desc_tx = (long long int *)calloc(len, sizeof(long long int));
    desc_rx = (long long int *)calloc(len, sizeof(long long int));

    for (i = 0; i < len;) {
        rxbuf_d_naddr += db_step;
        txbuf_d_naddr += db_step;
        desc_rx[i] = rxbuf_d_naddr;
        desc_tx[i] = txbuf_d_naddr;
        printf("%d---dr[%d]:%016lx, dt[%d]:%016lx, ", j, i, desc_rx[i], i, desc_tx[i]);
        i++;

        rxbuf_d_daddr += daddr_step;
        txbuf_d_daddr += daddr_step;
        desc_rx[i] = rxbuf_d_daddr;
        desc_tx[i] = txbuf_d_daddr;
        printf("dr[%d]:%016lx, dt[%d]:%016lx, ", i, desc_rx[i], i, desc_tx[i]);
        i++;

        desc_rx[i] = buf_d_lenaddr;
        desc_tx[i] = buf_d_lenaddr;
        printf("dr[%d]:%016lx, dt[%d]:%016lx, ", i, desc_rx[i], i, desc_tx[i]);
        i++;

        desc_rx[i] = buf_status;
        desc_tx[i] = buf_status;
        printf("dr[%d]:%016lx, dt[%d]:%016lx\n", i, desc_rx[i], i, desc_tx[i]);
        i++;
    }
    desc_rx[len - 1] = buf_status + 1;
    desc_rx[len - 4] = rxbuf_d_last_naddr;
    desc_tx[len - 1] = buf_status + 1;
    desc_tx[len - 4] = txbuf_d_last_naddr;



    printf("Hello world[pnum: %d buf_len: %d]\n", pnum, len);


    if (desc_tx && desc_rx) {
        printf("desc_tx:\n");
        for(int i = 0; i < len;) {
            printf("0x%016lx, 0x%016lx, 0x%016lx, 0x%016lx\n", desc_tx[i], desc_tx[i + 1], desc_tx[i + 2], desc_tx[i + 3]);
            i += 4;
        }

        printf("desc_rx:\n");
        for(int i = 0; i < len;) {
            printf("0x%016lx, 0x%016lx, 0x%016lx, 0x%016lx\n", desc_rx[i], desc_rx[i + 1], desc_rx[i + 2], desc_rx[i + 3]);
            i += 4;
        }
    }


    return 0;
}

