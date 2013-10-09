package com.android.sunbeam;

import android.app.Activity;
import android.os.Bundle;

public class SunBeam extends Activity {

    private SunBeamView mView;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mView = new SunBeamView(this);
        setContentView(mView);
    }
}
