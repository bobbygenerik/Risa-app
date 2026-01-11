package p011;

import android.widget.SeekBar;
import android.widget.TextView;
import androidx.preference.SeekBarPreference;

/* renamed from: ʻᐧ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0854 implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ SeekBarPreference f3656;

    public C0854(SeekBarPreference seekBarPreference) {
        this.f3656 = seekBarPreference;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        SeekBarPreference seekBarPreference = this.f3656;
        if (!z || (!seekBarPreference.f1398 && seekBarPreference.f1399)) {
            int i2 = i + seekBarPreference.f1397;
            TextView textView = seekBarPreference.f1396;
            if (textView != null) {
                textView.setText(String.valueOf(i2));
                return;
            }
            return;
        }
        int progress = seekBar.getProgress() + seekBarPreference.f1397;
        if (progress != seekBarPreference.f1405) {
            seekBarPreference.m845(Integer.valueOf(progress));
            seekBarPreference.m853(progress, false);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        this.f3656.f1399 = true;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        int progress;
        SeekBarPreference seekBarPreference = this.f3656;
        seekBarPreference.f1399 = false;
        int progress2 = seekBar.getProgress();
        int i = seekBarPreference.f1397;
        if (progress2 + i == seekBarPreference.f1405 || (progress = seekBar.getProgress() + i) == seekBarPreference.f1405) {
            return;
        }
        seekBarPreference.m845(Integer.valueOf(progress));
        seekBarPreference.m853(progress, false);
    }
}
