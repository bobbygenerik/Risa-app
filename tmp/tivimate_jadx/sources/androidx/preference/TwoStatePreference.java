package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import p011.C0863;

/* loaded from: classes.dex */
public abstract class TwoStatePreference extends Preference {

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public CharSequence f1414;

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public boolean f1415;

    /* renamed from: י, reason: contains not printable characters */
    public boolean f1416;

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public boolean f1417;

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public CharSequence f1418;

    public TwoStatePreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0);
    }

    @Override // androidx.preference.Preference
    /* renamed from: ˈٴ */
    public final boolean mo816() {
        return (this.f1415 ? this.f1417 : !this.f1417) || super.mo816();
    }

    @Override // androidx.preference.Preference
    /* renamed from: ˉˆ */
    public final void mo814() {
        boolean z = !this.f1417;
        m845(Boolean.valueOf(z));
        m857(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* renamed from: ˉٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m856(android.view.View r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof android.widget.TextView
            if (r0 != 0) goto L5
            goto L4c
        L5:
            android.widget.TextView r5 = (android.widget.TextView) r5
            boolean r0 = r4.f1417
            r1 = 0
            if (r0 == 0) goto L1b
            java.lang.CharSequence r0 = r4.f1414
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L1b
            java.lang.CharSequence r0 = r4.f1414
            r5.setText(r0)
        L19:
            r0 = r1
            goto L2e
        L1b:
            boolean r0 = r4.f1417
            if (r0 != 0) goto L2d
            java.lang.CharSequence r0 = r4.f1418
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L2d
            java.lang.CharSequence r0 = r4.f1418
            r5.setText(r0)
            goto L19
        L2d:
            r0 = 1
        L2e:
            if (r0 == 0) goto L3e
            java.lang.CharSequence r2 = r4.mo825()
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 != 0) goto L3e
            r5.setText(r2)
            r0 = r1
        L3e:
            if (r0 != 0) goto L41
            goto L43
        L41:
            r1 = 8
        L43:
            int r0 = r5.getVisibility()
            if (r1 == r0) goto L4c
            r5.setVisibility(r1)
        L4c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.TwoStatePreference.m856(android.view.View):void");
    }

    @Override // androidx.preference.Preference
    /* renamed from: ˏי */
    public void mo817(Object obj) {
        if (obj == null) {
            obj = Boolean.FALSE;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        if (m841() && m842() == null) {
            booleanValue = this.f1375.m3047().getBoolean(this.f1353, booleanValue);
        }
        m857(booleanValue);
    }

    @Override // androidx.preference.Preference
    /* renamed from: יـ */
    public final Parcelable mo818() {
        super.mo818();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.f1367) {
            return absSavedState;
        }
        C0863 c0863 = new C0863();
        c0863.f3677 = this.f1417;
        return c0863;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public void m857(boolean z) {
        boolean z2 = this.f1417 != z;
        if (z2 || !this.f1416) {
            this.f1417 = z;
            this.f1416 = true;
            if (m841()) {
                boolean z3 = !z;
                if (m841() && m842() == null) {
                    z3 = this.f1375.m3047().getBoolean(this.f1353, z3);
                }
                if (z != z3) {
                    if (m842() != null) {
                        throw new UnsupportedOperationException("Not implemented on this data store");
                    }
                    SharedPreferences.Editor m3048 = this.f1375.m3048();
                    m3048.putBoolean(this.f1353, z);
                    if (!this.f1375.f3640) {
                        m3048.apply();
                    }
                }
            }
            if (z2) {
                mo839(mo816());
                mo815();
            }
        }
    }

    @Override // androidx.preference.Preference
    /* renamed from: ᵔﹳ */
    public final Object mo820(TypedArray typedArray, int i) {
        return Boolean.valueOf(typedArray.getBoolean(i, false));
    }

    @Override // androidx.preference.Preference
    /* renamed from: ﹳᐧ */
    public final void mo821(Parcelable parcelable) {
        if (!parcelable.getClass().equals(C0863.class)) {
            super.mo821(parcelable);
            return;
        }
        C0863 c0863 = (C0863) parcelable;
        super.mo821(c0863.getSuperState());
        m857(c0863.f3677);
    }
}
