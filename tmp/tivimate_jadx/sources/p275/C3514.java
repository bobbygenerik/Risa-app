package p275;

import android.util.SparseArray;

/* renamed from: ـﹶ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3514 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C3501 f13843;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final SparseArray f13844;

    public C3514(int i) {
        this.f13844 = new SparseArray(i);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7481(C3501 c3501, int i, int i2) {
        int m7445 = c3501.m7445(i);
        SparseArray sparseArray = this.f13844;
        C3514 c3514 = sparseArray == null ? null : (C3514) sparseArray.get(m7445);
        if (c3514 == null) {
            c3514 = new C3514(1);
            sparseArray.put(c3501.m7445(i), c3514);
        }
        if (i2 > i) {
            c3514.m7481(c3501, i + 1, i2);
        } else {
            c3514.f13843 = c3501;
        }
    }
}
