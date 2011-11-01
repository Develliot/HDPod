/**
 * 
 * Copyright 2011 ConnectSolutions
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *   http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *  
 */ 
package
{
	import flash.events.EventDispatcher;

	public class CustomClient extends EventDispatcher
	{
		public var datarate:Number;
		
		public function CustomClient()
		{
		}
		
		public function onMetaData(info:Object):void {
			datarate = info.videodatarate;
			trace("metadata: duration=" + info.duration + " width=" + info.width + " height=" + info.height + " framerate=" + info.framerate + " datarate=" + info.videodatarate);
		}
		public function onCuePoint(info:Object):void {
			trace("cuepoint: time=" + info.time + " name=" + info.name + " type=" + info.type);
		}
	}
}