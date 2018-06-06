package org.cyanogenmod.hardware;

import org.cyanogenmod.hardware.util.FileUtils;

import java.io.File;
import java.io.DataOutputStream;
import java.io.IOException;

public class TapToWake {

    private static String CONTROL_PATH = "/sys/android_touch/doubletap2wake";

    public static boolean isSupported() {
	return new File(CONTROL_PATH).exists();
    }

    public static boolean isEnabled() {
	return "1".equals(FileUtils.readOneLine(CONTROL_PATH));
    }

    public static boolean setEnabled(boolean state)  {
	DataOutputStream os;
	Process suProcess;
	try {
		suProcess = Runtime.getRuntime().exec("sh");
		os = new DataOutputStream(suProcess.getOutputStream());
		if(state)
		{
                        os.writeBytes("echo 1 > /sys/android_touch/doubletap2wake\n");
		}
                else 
		{
                        os.writeBytes("echo 0 > /sys/android_touch/doubletap2wake\n");
                }
		os.flush();
		return state;
	    } 
	    catch (IOException exception) 
	    {
	        exception.printStackTrace();
		return false;
	    }
	}
}
