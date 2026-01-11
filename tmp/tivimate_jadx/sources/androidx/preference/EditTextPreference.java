package androidx.preference;

import android.content.res.TypedArray;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.AbsSavedState;
import p011.C0853;

/* loaded from: classes.dex */
public class EditTextPreference extends DialogPreference {

    /* renamed from: ʼـ, reason: contains not printable characters */
    public String f1337;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public EditTextPreference(android.content.Context r4, android.util.AttributeSet r5) {
        /*
            r3 = this;
            r0 = 2130969119(0x7f04021f, float:1.754691E38)
            r1 = 16842898(0x1010092, float:2.3693967E-38)
            int r0 = p143.AbstractC2392.m5495(r4, r0, r1)
            r3.<init>(r4, r5, r0)
            int[] r1 = p011.AbstractC0869.f3704
            r2 = 0
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r5, r1, r0, r2)
            boolean r5 = r4.getBoolean(r2, r2)
            boolean r5 = r4.getBoolean(r2, r5)
            if (r5 == 0) goto L31
            ﹳˋ.ʼˎ r5 = ﹳˋ.ʼˎ.ᴵˊ
            if (r5 != 0) goto L2a
            ﹳˋ.ʼˎ r5 = new ﹳˋ.ʼˎ
            r0 = 3
            r5.<init>(r0)
            ﹳˋ.ʼˎ.ᴵˊ = r5
        L2a:
            ﹳˋ.ʼˎ r5 = ﹳˋ.ʼˎ.ᴵˊ
            r3.f1371 = r5
            r3.mo815()
        L31:
            r4.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.EditTextPreference.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // androidx.preference.Preference
    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final boolean mo816() {
        return TextUtils.isEmpty(this.f1337) || super.mo816();
    }

    @Override // androidx.preference.Preference
    /* renamed from: ˏי, reason: contains not printable characters */
    public final void mo817(Object obj) {
        m819(m847((String) obj));
    }

    @Override // androidx.preference.Preference
    /* renamed from: יـ, reason: contains not printable characters */
    public final Parcelable mo818() {
        super.mo818();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.f1367) {
            return absSavedState;
        }
        C0853 c0853 = new C0853();
        c0853.f3655 = this.f1337;
        return c0853;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final void m819(String str) {
        boolean mo816 = mo816();
        this.f1337 = str;
        m828(str);
        boolean mo8162 = mo816();
        if (mo8162 != mo816) {
            mo839(mo8162);
        }
        mo815();
    }

    @Override // androidx.preference.Preference
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final Object mo820(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    @Override // androidx.preference.Preference
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void mo821(Parcelable parcelable) {
        if (!parcelable.getClass().equals(C0853.class)) {
            super.mo821(parcelable);
            return;
        }
        C0853 c0853 = (C0853) parcelable;
        super.mo821(c0853.getSuperState());
        m819(c0853.f3655);
    }
}
