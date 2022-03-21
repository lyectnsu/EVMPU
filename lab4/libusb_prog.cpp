#include <iostream>
#include <libusb-1.0/libusb.h>
#include <stdio.h>
using namespace std;


void printdev(libusb_device *dev){
    libusb_device_descriptor desc; // дескриптор устройства
    libusb_config_descriptor *config; // дескриптор конфигурации объекта

    const libusb_interface *inter;
    const libusb_interface_descriptor *interdesc;
    const libusb_endpoint_descriptor *epdesc;

    int r = libusb_get_device_descriptor(dev, &desc);
    
    if (r < 0){
        fprintf(
            stderr,
            "ERROR: device descriptor not received, code: %d.\n",
            r
        );
        return;
    }

    // получить конфигурацию устройства
    libusb_get_config_descriptor(dev, 0, &config);

    printf(
        "%.2d %.2d %.4d %.4d %.3d |  |  |  |  |  |\n",
        (int)desc.bNumConfigurations,
        (int)desc.bDeviceClass,
        desc.idVendor,
        desc.idProduct,
        (int)config->bNumInterfaces
    );

    for(int i=0; i<(int)config->bNumInterfaces; i++){
        inter = &config->interface[i];

        printf(
            "|  |  |    |    |   %.2d %.2d |  |  |  |\n",
            inter->num_altsetting,
            (int)desc.bDeviceClass
        );

        for(int j=0; j<inter->num_altsetting; j++) {
            interdesc = &inter->altsetting[j];

            printf(
                "|  |  |    |    |   |  | %.2d %.2d |  |\n",
                (int)interdesc->bInterfaceNumber,
                (int)interdesc->bNumEndpoints
            );

            for(int k=0; k<(int)interdesc->bNumEndpoints; k++) {
                epdesc = &interdesc->endpoint[k];

                printf(
                    "|  |  |    |    |   |  |  |  | %.2d %.9d\n",
                    (int)epdesc->bDescriptorType,
                    (int)(int)epdesc->bEndpointAddress
                );
            }
        }
    }
    libusb_free_config_descriptor(config);
}


void printStringStuff(libusb_device *dev){
    libusb_device_descriptor desc;

    int r = libusb_get_device_descriptor(dev, &desc);

    if (r < 0){
        cout << "ERROR: device descriptor not received, code: " << r << "\n";
        return;
    }

    unsigned char dev_pn[256];
    unsigned char dev_sn[256];
    unsigned char dev_mf[256];

    libusb_device_handle *dev_handle;

    libusb_open(dev, &dev_handle);
    r = libusb_get_string_descriptor_ascii(dev_handle, desc.iProduct, dev_pn, 256);
    if (r < 0){
        dev_pn[0] = '0';
        dev_pn[1] = '\0';
    }
    r = libusb_get_string_descriptor_ascii(dev_handle, desc.iSerialNumber, dev_sn, 256);
    if (r < 0){
        dev_sn[0] = '0';
        dev_sn[1] = '\0';
    }
    r = libusb_get_string_descriptor_ascii(dev_handle, desc.iManufacturer, dev_mf, 256);
    if (r < 0){
        dev_mf[0] = '0';
        dev_mf[1] = '\0';
    }
    libusb_close(dev_handle);

    bool foundClass = false;

    cout << "Device manufacturer:\n\t" << dev_mf << "\n";
    cout << "Product name:\n\t" << dev_pn << "\n";
    cout << "Device serial number:\n\t" << dev_sn << "\n";
    cout << "Device class\n\t";
     
    if (desc.bDeviceClass == LIBUSB_CLASS_AUDIO) {
        cout << "Audio class.";
        foundClass = true;
    }

    if (desc.bDeviceClass == LIBUSB_CLASS_COMM){
        cout << "Communications class.";
        foundClass = true;
    }


    if (desc.bDeviceClass == LIBUSB_CLASS_HID){
        cout << "Human Interface Device class.";
        foundClass = true;
    }

    if (desc.bDeviceClass == LIBUSB_CLASS_PHYSICAL){
        cout << "Physical.";
        foundClass = true;
    }
    if (desc.bDeviceClass == LIBUSB_CLASS_IMAGE){
        cout << "Image class.";
        foundClass = true;
    }
    if (desc.bDeviceClass == LIBUSB_CLASS_PRINTER){
        cout << "Printer class.";
        foundClass = true;
    }
    if (desc.bDeviceClass == LIBUSB_CLASS_MASS_STORAGE) {  
        cout << "Mass storage class.";
        foundClass = true;
    }
    if (desc.bDeviceClass == LIBUSB_CLASS_HUB)  {
        cout << "Hub class.";
        foundClass = true;
    }
    if (desc.bDeviceClass == LIBUSB_CLASS_DATA) {
        cout << "Data class.";
        foundClass = true;
    }
    if (desc.bDeviceClass == LIBUSB_CLASS_SMART_CARD){
        cout << "Smart Card.";
        foundClass = true;
    }
    if (desc.bDeviceClass == LIBUSB_CLASS_CONTENT_SECURITY)  { 
        cout << "Content Security.";
        foundClass = true;
    }
    if (desc.bDeviceClass == LIBUSB_CLASS_VIDEO){
        cout << "Video.";
        foundClass = true;
    }
    if (desc.bDeviceClass == LIBUSB_CLASS_PERSONAL_HEALTHCARE)    {
        cout << "Personal Healthcare.";
        foundClass = true;
    }   
    if (desc.bDeviceClass == LIBUSB_CLASS_DIAGNOSTIC_DEVICE)  {
        cout << "Diagnostic Device.";
        foundClass = true;
    }
    if (desc.bDeviceClass == LIBUSB_CLASS_WIRELESS){
        cout << "Wireless class.";
        foundClass = true;
    }
    if (desc.bDeviceClass == LIBUSB_CLASS_APPLICATION)   {
        cout << "Application class.";
        foundClass = true;
    }
    if (desc.bDeviceClass == LIBUSB_CLASS_VENDOR_SPEC)  {
        cout << "Class is vendor-specific.";
        foundClass = true;
    }

    if (!foundClass) cout << "Miscellaneous class.";
    cout << "\n";
}

int main(){

    locale::global(locale("en_US.UTF-8"));

    libusb_device **devs; 
    libusb_context *ctx = NULL; // контекст сессии libusb

    int r;
    int cnt;
               
    r = libusb_init(&ctx);

    if(r < 0){
        cout << "Error: initialization failed, code: " << r << "\n";
        return 1;
    }

    libusb_set_option(ctx, LIBUSB_OPTION_LOG_LEVEL, 3);

    cnt = libusb_get_device_list(ctx, &devs);

    if (cnt < 0){
        cout << "Error: The list of USB devices was not received.\n";
        return 1;
    }

    cout << "devices found: " << cnt << "\n";
    cout << "===========================================================\n";
    cout << "* number of possible configurations\n";
    cout << "|  * device class\n";
    cout << "|  |  * manufacturer's ID\n";
    cout << "|  |  |    * device ID\n";
    cout << "|  |  |    |    * number of interfaces\n";
    cout << "|  |  |    |    |   * number of alternative settings\n";
    cout << "|  |  |    |    |   |  * device class\n";
    cout << "|  |  |    |    |   |  |  * interface number\n";
    cout << "|  |  |    |    |   |  |  |  * number of endpoints\n";
    cout << "|  |  |    |    |   |  |  |  |  * descriptor type\n";
    cout << "|  |  |    |    |   |  |  |  |  |  * endpoint address\n";
    cout << "+--+--+----+----+---+--+--+--+--+--+-----------------------\n";

    for(int i = 0; i < cnt; i++) {
        printStringStuff(devs[i]);
        printdev(devs[i]);
    }

    printf("===========================================================\n");

    libusb_free_device_list(devs, 1);
    libusb_exit(ctx);

    return 0;
}