//
//  CoreBluetoothView.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 7/8/24.
//

import SwiftUI
import CoreBluetooth

/* this class should be going in its own Viewmodel file in
 the viewModels directory correct? */
class BluetoothViewModel: NSObject, ObservableObject {
    private var centralManager: CBCentralManager?
    private var peripherals:[CBPeripheral] = []
    @Published var peripheralNames: [String] = []
    
    override init(){
        super.init()
        self.centralManager = CBCentralManager(delegate: self, queue: .main)
    }
}


struct CoreBluetoothView: View {
    @ObservedObject private var bluetoothViewModel = BluetoothViewModel()


    var body: some View {
        
/*
 TODOS:
    1. I want to see the button in the view first ✅
    2. I want to connect the bluetooth search to a button press ✅ == changed to having both in view and implementing
    3. On press the button should disappear and then either show the
    bluetooth device list || go to a view that has a bluetooth device
    list. ✅ == changed to on button press the bluetooth function initiates and then the list should appear
 
 */
        
//        bluetoothDeviceList
        
        
        
        bluetoothDeviceList
        searchForBluetoothDevicesButton
        Spacer()
    }
}

#Preview {
    CoreBluetoothView()
}


extension CoreBluetoothView {
    private var searchForBluetoothDevicesButton: some View {
        Button {
            //            put core bluetooth func here
            bluetoothViewModel.toggleBluetooth()
        
                } label: {
                    Text("Search for  bluetooth devices")
                        .textCase(.uppercase)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                }
    }
    
    private var bluetoothDeviceList: some View {
        List{
            Section {
                ForEach(bluetoothViewModel.peripheralNames, id: \.self){ peripheral in
                    Text(peripheral)
                }
            } header: {
                
                Text("Bluetooth devices")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            Text("Currently no devices")
        }
    }
}

extension BluetoothViewModel: CBCentralManagerDelegate {
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        if central.state == .poweredOn {
            self.centralManager?.scanForPeripherals(withServices: nil)
        }
    }
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        if peripherals.contains(peripheral){
            self.peripherals.append(peripheral)
            self.peripheralNames.append(peripheral.name ?? "Unnamed device ")
        }
    }
    
    func toggleBluetooth(){
        if centralManager?.state == .poweredOn {
            centralManager?.stopScan()
            centralManager = nil
        } else {
            centralManager = CBCentralManager(delegate: self, queue: nil)
        }
    }
    
   
    
}
