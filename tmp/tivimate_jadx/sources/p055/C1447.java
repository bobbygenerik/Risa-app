package p055;

import android.os.Build;
import android.util.SparseBooleanArray;
import p305.AbstractC3731;

/* renamed from: ʽⁱ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1447 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final SparseBooleanArray f5639;

    public C1447(SparseBooleanArray sparseBooleanArray) {
        this.f5639 = sparseBooleanArray;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1447)) {
            return false;
        }
        C1447 c1447 = (C1447) obj;
        SparseBooleanArray sparseBooleanArray = c1447.f5639;
        int i = Build.VERSION.SDK_INT;
        SparseBooleanArray sparseBooleanArray2 = this.f5639;
        if (i >= 24) {
            return sparseBooleanArray2.equals(sparseBooleanArray);
        }
        if (sparseBooleanArray2.size() != sparseBooleanArray.size()) {
            return false;
        }
        for (int i2 = 0; i2 < sparseBooleanArray2.size(); i2++) {
            if (m4239(i2) != c1447.m4239(i2)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i = Build.VERSION.SDK_INT;
        SparseBooleanArray sparseBooleanArray = this.f5639;
        if (i >= 24) {
            return sparseBooleanArray.hashCode();
        }
        int size = sparseBooleanArray.size();
        for (int i2 = 0; i2 < sparseBooleanArray.size(); i2++) {
            size = (size * 31) + m4239(i2);
        }
        return size;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m4239(int i) {
        SparseBooleanArray sparseBooleanArray = this.f5639;
        AbstractC3731.m7860(i, sparseBooleanArray.size());
        return sparseBooleanArray.keyAt(i);
    }
}
