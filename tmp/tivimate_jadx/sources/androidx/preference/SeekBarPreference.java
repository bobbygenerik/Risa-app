package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.widget.SeekBar;
import android.widget.TextView;
import ar.tvplayer.tv.R;
import p011.AbstractC0869;
import p011.C0854;
import p011.C0856;
import p011.C0870;
import p011.ViewOnKeyListenerC0860;

/* loaded from: classes.dex */
public class SeekBarPreference extends Preference {

    /* renamed from: ʼـ, reason: contains not printable characters */
    public TextView f1396;

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public int f1397;

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public final boolean f1398;

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public boolean f1399;

    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public final C0854 f1400;

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public final boolean f1401;

    /* renamed from: ˑ, reason: contains not printable characters */
    public SeekBar f1402;

    /* renamed from: י, reason: contains not printable characters */
    public int f1403;

    /* renamed from: יﹳ, reason: contains not printable characters */
    public final boolean f1404;

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public int f1405;

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public int f1406;

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public final ViewOnKeyListenerC0860 f1407;

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.56r, 0);
        this.f1400 = new C0854(this);
        this.f1407 = new ViewOnKeyListenerC0860(0, this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0869.f3707, R.attr.56r, 0);
        this.f1397 = obtainStyledAttributes.getInt(3, 0);
        int i = obtainStyledAttributes.getInt(1, 100);
        int i2 = this.f1397;
        i = i < i2 ? i2 : i;
        if (i != this.f1406) {
            this.f1406 = i;
            mo815();
        }
        int i3 = obtainStyledAttributes.getInt(4, 0);
        if (i3 != this.f1403) {
            this.f1403 = Math.min(this.f1406 - this.f1397, Math.abs(i3));
            mo815();
        }
        this.f1401 = obtainStyledAttributes.getBoolean(2, true);
        this.f1404 = obtainStyledAttributes.getBoolean(5, false);
        this.f1398 = obtainStyledAttributes.getBoolean(6, false);
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    /* renamed from: ˏי */
    public final void mo817(Object obj) {
        if (obj == null) {
            obj = 0;
        }
        int intValue = ((Integer) obj).intValue();
        if (m841() && m842() == null) {
            intValue = this.f1375.m3047().getInt(this.f1353, intValue);
        }
        m853(intValue, true);
    }

    @Override // androidx.preference.Preference
    /* renamed from: יـ */
    public final Parcelable mo818() {
        super.mo818();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.f1367) {
            return absSavedState;
        }
        C0870 c0870 = new C0870();
        c0870.f3715 = this.f1405;
        c0870.f3716 = this.f1397;
        c0870.f3714 = this.f1406;
        return c0870;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final void m853(int i, boolean z) {
        int i2 = this.f1397;
        if (i < i2) {
            i = i2;
        }
        int i3 = this.f1406;
        if (i > i3) {
            i = i3;
        }
        if (i != this.f1405) {
            this.f1405 = i;
            TextView textView = this.f1396;
            if (textView != null) {
                textView.setText(String.valueOf(i));
            }
            if (m841()) {
                int i4 = ~i;
                if (m841() && m842() == null) {
                    i4 = this.f1375.m3047().getInt(this.f1353, i4);
                }
                if (i != i4) {
                    if (m842() != null) {
                        throw new UnsupportedOperationException("Not implemented on this data store");
                    }
                    SharedPreferences.Editor m3048 = this.f1375.m3048();
                    m3048.putInt(this.f1353, i);
                    if (!this.f1375.f3640) {
                        m3048.apply();
                    }
                }
            }
            if (z) {
                mo815();
            }
        }
    }

    @Override // androidx.preference.Preference
    /* renamed from: ᵔʾ */
    public final void mo813(C0856 c0856) {
        super.mo813(c0856);
        c0856.f10176.setOnKeyListener(this.f1407);
        this.f1402 = (SeekBar) c0856.m3054(R.id.6av);
        TextView textView = (TextView) c0856.m3054(R.id.6qo);
        this.f1396 = textView;
        if (this.f1404) {
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
            this.f1396 = null;
        }
        SeekBar seekBar = this.f1402;
        if (seekBar == null) {
            return;
        }
        seekBar.setOnSeekBarChangeListener(this.f1400);
        this.f1402.setMax(this.f1406 - this.f1397);
        int i = this.f1403;
        if (i != 0) {
            this.f1402.setKeyProgressIncrement(i);
        } else {
            this.f1403 = this.f1402.getKeyProgressIncrement();
        }
        this.f1402.setProgress(this.f1405 - this.f1397);
        int i2 = this.f1405;
        TextView textView2 = this.f1396;
        if (textView2 != null) {
            textView2.setText(String.valueOf(i2));
        }
        this.f1402.setEnabled(mo830());
    }

    @Override // androidx.preference.Preference
    /* renamed from: ᵔﹳ */
    public final Object mo820(TypedArray typedArray, int i) {
        return Integer.valueOf(typedArray.getInt(i, 0));
    }

    @Override // androidx.preference.Preference
    /* renamed from: ﹳᐧ */
    public final void mo821(Parcelable parcelable) {
        if (!parcelable.getClass().equals(C0870.class)) {
            super.mo821(parcelable);
            return;
        }
        C0870 c0870 = (C0870) parcelable;
        super.mo821(c0870.getSuperState());
        this.f1405 = c0870.f3715;
        this.f1397 = c0870.f3716;
        this.f1406 = c0870.f3714;
        mo815();
    }
}
