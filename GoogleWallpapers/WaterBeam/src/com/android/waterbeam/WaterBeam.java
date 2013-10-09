package com.android.waterbeam;

import android.app.Activity;
import android.os.Bundle;

public class WaterBeam extends Activity {

    private WaterBeamView mView;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mView = new WaterBeamView(this);
        setContentView(mView);
    }
}
