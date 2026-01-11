package androidx.preference;

import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.view.AbsSavedState;
import java.util.HashSet;
import java.util.Set;
import p011.C0851;

/* loaded from: classes.dex */
public class MultiSelectListPreference extends DialogPreference {

    /* renamed from: ʼـ, reason: contains not printable characters */
    public final CharSequence[] f1343;

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public final CharSequence[] f1344;

    /* renamed from: יﹳ, reason: contains not printable characters */
    public final HashSet f1345;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MultiSelectListPreference(android.content.Context r4, android.util.AttributeSet r5) {
        /*
            r3 = this;
            r0 = 2130969076(0x7f0401f4, float:1.7546824E38)
            r1 = 16842897(0x1010091, float:2.3693964E-38)
            int r0 = p143.AbstractC2392.m5495(r4, r0, r1)
            r3.<init>(r4, r5, r0)
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            r3.f1345 = r1
            int[] r1 = p011.AbstractC0869.f3713
            r2 = 0
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r5, r1, r0, r2)
            r5 = 2
            java.lang.CharSequence[] r5 = r4.getTextArray(r5)
            if (r5 != 0) goto L26
            java.lang.CharSequence[] r5 = r4.getTextArray(r2)
        L26:
            r3.f1343 = r5
            r5 = 3
            java.lang.CharSequence[] r5 = r4.getTextArray(r5)
            if (r5 != 0) goto L34
            r5 = 1
            java.lang.CharSequence[] r5 = r4.getTextArray(r5)
        L34:
            r3.f1344 = r5
            r4.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.MultiSelectListPreference.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // androidx.preference.Preference
    /* renamed from: ˏי */
    public final void mo817(Object obj) {
        Set<String> set = (Set) obj;
        if (m841() && m842() == null) {
            set = this.f1375.m3047().getStringSet(this.f1353, set);
        }
        m826(set);
    }

    @Override // androidx.preference.Preference
    /* renamed from: יـ */
    public final Parcelable mo818() {
        super.mo818();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.f1367) {
            return absSavedState;
        }
        C0851 c0851 = new C0851();
        c0851.f3646 = this.f1345;
        return c0851;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final void m826(Set set) {
        HashSet hashSet = this.f1345;
        hashSet.clear();
        hashSet.addAll(set);
        if (m841()) {
            Set<String> set2 = null;
            if (m841() && m842() == null) {
                set2 = this.f1375.m3047().getStringSet(this.f1353, null);
            }
            if (!set.equals(set2)) {
                if (m842() != null) {
                    throw new UnsupportedOperationException("Not implemented on this data store");
                }
                SharedPreferences.Editor m3048 = this.f1375.m3048();
                m3048.putStringSet(this.f1353, set);
                if (!this.f1375.f3640) {
                    m3048.apply();
                }
            }
        }
        mo815();
    }

    @Override // androidx.preference.Preference
    /* renamed from: ᵔﹳ */
    public final Object mo820(TypedArray typedArray, int i) {
        CharSequence[] textArray = typedArray.getTextArray(i);
        HashSet hashSet = new HashSet();
        for (CharSequence charSequence : textArray) {
            hashSet.add(charSequence.toString());
        }
        return hashSet;
    }

    @Override // androidx.preference.Preference
    /* renamed from: ﹳᐧ */
    public final void mo821(Parcelable parcelable) {
        if (!parcelable.getClass().equals(C0851.class)) {
            super.mo821(parcelable);
            return;
        }
        C0851 c0851 = (C0851) parcelable;
        super.mo821(c0851.getSuperState());
        m826(c0851.f3646);
    }
}
