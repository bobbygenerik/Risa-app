package p011;

import android.view.KeyEvent;
import android.view.View;
import android.widget.SeekBar;
import androidx.preference.SeekBarPreference;
import p053.AbstractC1436;

/* renamed from: ʻᐧ.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnKeyListenerC0860 implements View.OnKeyListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f3674;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f3675;

    public /* synthetic */ ViewOnKeyListenerC0860(int i, Object obj) {
        this.f3674 = i;
        this.f3675 = obj;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        SeekBar seekBar;
        switch (this.f3674) {
            case 0:
                if (keyEvent.getAction() != 0) {
                    return false;
                }
                SeekBarPreference seekBarPreference = (SeekBarPreference) this.f3675;
                if ((seekBarPreference.f1401 || (i != 21 && i != 22)) && i != 23 && i != 66 && (seekBar = seekBarPreference.f1402) != null) {
                    return seekBar.onKeyDown(i, keyEvent);
                }
                return false;
            default:
                if (i == 4) {
                    return ((AbstractC1436) this.f3675).m6788().m6666(-1, 0);
                }
                return false;
        }
    }
}
