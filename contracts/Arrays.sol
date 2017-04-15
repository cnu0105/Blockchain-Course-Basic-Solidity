pragma solidity ^0.4.8;

contract Arrays {

  // Elementary type array in storage
  int[3]     staticIntArray = [1,2];    //Last element set to 0
  int8[]     dynamicIntArray;
  bool[]     dynamicBoolArray;

  // Byte type storage
  byte    byteType = 1; 

  // byte array
  byte[120] bigArray;

  // Dynamic byte array
  byte[]    byteData;
  // Fixed length byte array
  bytes8    bytes8Data;
  // Dynamic byte array
  bytes     bytesData;




  function testArrayOps() {

    // Allocate memory for 8 elements to the dynamic bool array
    dynamicBoolArray = new bool[](8);

    // Allocate memory and initialize elements in the int array
    // Explicit conversion needed from uint8 to int8
    dynamicIntArray= [1,int8(2),3];

    // This is good
    uint8[] memory memoryArray;
    // Allocation with assignment not allowed for memory arrays
    // memoryArray = [1,2,3];
    memoryArray = new uint8[](8);
    // This will give a compile error - 
    // push() not available for memory array
    // memoryArray.push(1);
    // memoryArray.length=6;
    
    // This is OK
    byteData[0] = 8;

    // This is not allowed - its READ Only
    // bytes8Data[6] = 0;

    // This is OK
    bytesData[6] = 9;

    // Dynamic array - bytes - These are OK
    bytesData.length = 10;
    bytesData.push(1);

    
  }
}
