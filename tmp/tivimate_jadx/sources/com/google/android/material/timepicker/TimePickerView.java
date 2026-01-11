package com.google.android.material.timepicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import ar.tvplayer.tv.R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class TimePickerView extends ConstraintLayout {

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public static final /* synthetic */ int f2948 = 0;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final Chip f2949;

    public TimePickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        ViewOnClickListenerC0692 viewOnClickListenerC0692 = new ViewOnClickListenerC0692(this);
        LayoutInflater.from(context).inflate(R.layout.4o1, this);
        ClockFaceView clockFaceView = (ClockFaceView) findViewById(R.id.7bl);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(R.id.5au);
        materialButtonToggleGroup.f2661.add(new Object());
        Chip chip = (Chip) findViewById(R.id.798);
        Chip chip2 = (Chip) findViewById(R.id.4tb);
        this.f2949 = chip2;
        clockFaceView.f2921 = new C0686(this);
        ViewOnTouchListenerC0688 viewOnTouchListenerC0688 = new ViewOnTouchListenerC0688(new GestureDetector(getContext(), new C0684(this)));
        chip.setOnTouchListener(viewOnTouchListenerC0688);
        chip2.setOnTouchListener(viewOnTouchListenerC0688);
        chip.setTag(R.id.544, 12);
        chip2.setTag(R.id.544, 10);
        chip.setOnClickListener(viewOnClickListenerC0692);
        chip2.setOnClickListener(viewOnClickListenerC0692);
        chip.setAccessibilityClassName("android.view.View");
        chip2.setAccessibilityClassName("android.view.View");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            this.f2949.sendAccessibilityEvent(8);
        }
    }
}
