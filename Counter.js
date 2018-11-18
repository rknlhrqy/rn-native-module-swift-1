import { NativeModules, NativeEventEmitter } from 'react-native';

class Counter extends NativeEventEmitter {
  constructor(nativeModule) {
    super(nativeModule);

    this.initialCount = nativeModule.initialCount;
    this.getCount = nativeModule.getCount;
    this.increment = nativeModule.increment;
    this.decrement = async () => {
      try{
        const res = await nativeModule.decrement();
        console.log(res);
      }catch(error){
        console.log(error.message, error.code);
      }
    };
  }
}

export default new Counter(NativeModules.Counter);
