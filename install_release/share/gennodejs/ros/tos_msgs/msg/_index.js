
"use strict";

let VehicleLoad = require('./VehicleLoad.js');
let CraneWarnning = require('./CraneWarnning.js');
let VehicleTarget = require('./VehicleTarget.js');
let WorkDisplay = require('./WorkDisplay.js');
let HeartBeat = require('./HeartBeat.js');
let TruckTarget = require('./TruckTarget.js');
let VehicleStopAccurate = require('./VehicleStopAccurate.js');
let TruckLogin = require('./TruckLogin.js');
let TruckArrived = require('./TruckArrived.js');
let Container = require('./Container.js');
let TruckStop = require('./TruckStop.js');
let TruckCommand = require('./TruckCommand.js');
let Ack = require('./Ack.js');
let StopInfo = require('./StopInfo.js');
let TruckAlignment = require('./TruckAlignment.js');
let TargetInfo = require('./TargetInfo.js');
let YardCraneStatus = require('./YardCraneStatus.js');

module.exports = {
  VehicleLoad: VehicleLoad,
  CraneWarnning: CraneWarnning,
  VehicleTarget: VehicleTarget,
  WorkDisplay: WorkDisplay,
  HeartBeat: HeartBeat,
  TruckTarget: TruckTarget,
  VehicleStopAccurate: VehicleStopAccurate,
  TruckLogin: TruckLogin,
  TruckArrived: TruckArrived,
  Container: Container,
  TruckStop: TruckStop,
  TruckCommand: TruckCommand,
  Ack: Ack,
  StopInfo: StopInfo,
  TruckAlignment: TruckAlignment,
  TargetInfo: TargetInfo,
  YardCraneStatus: YardCraneStatus,
};
