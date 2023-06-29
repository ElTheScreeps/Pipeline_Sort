# Pipeline_Sort

![Sort_Pipeline Diagram](https://github.com/ElTheScreeps/Pipeline_Sort/assets/115155585/ba20429f-f5b4-4e7c-bf16-5369804a6b25)

The interface of the circuit for maximum determination is presented in the following tables.

| Parameter Name            | Default Value | Value Domain  | Description                                                                    |
|           :---:           |     :---:     |    :---:      |                                     :---:                                      |
| DATA_WIDTH                | 8             | ≥ 1           | Size of the data                                                               |

| Port Name                 | Direction     | Size          | Description                                                                    |
|           :---:           |     :---:     |    :---:      |                                     :---:                                      |
| clk                       | IN            | 1             | Clock signal                                                                   |
| rst_n                     | IN            | 1             | Asynchronous reset signal, active low                                          |
| client_val                | IN            | 1             | Valid signal from the client                                                   |
| client_rdy                | OUT           | 1             | Ready signal for the client                                                    |
| client_data               | IN            | 8 * DATA_WIDTH| Data from the client, interpreted as 8 separate data of DATA_WIDTH bits each   |
| sort_val                  | OUT           | 1             | Valid data delivered                                                           |
| sort_rdy                  | IN            | 1             | Module is ready to accept data                                                 |
| sort_data                 | OUT           | DATA_WIDTH    | Data representing the maximum, DATA_WIDTH bits                                 |

The sorting algorithm used is bubble sort..

How to use this files:

1. Downlaod the files;
2. Put them in a directory;
3. Open Modelsim;
4. Change directory to the directory who contain the files;
5. Create a project and add the files;
6. Compile the files and start stimulate.
