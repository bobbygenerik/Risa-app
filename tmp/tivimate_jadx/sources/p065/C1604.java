package p065;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* renamed from: ʾˋ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1604 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public float f6386;

    /* renamed from: ˈ, reason: contains not printable characters */
    public float f6387;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f6388;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f6389;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m4381(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC1597.f6288);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == 1) {
                this.f6386 = obtainStyledAttributes.getFloat(index, this.f6386);
            } else if (index == 0) {
                int i2 = obtainStyledAttributes.getInt(index, this.f6389);
                this.f6389 = i2;
                this.f6389 = C1601.f6372[i2];
            } else if (index == 4) {
                this.f6388 = obtainStyledAttributes.getInt(index, this.f6388);
            } else if (index == 3) {
                this.f6387 = obtainStyledAttributes.getFloat(index, this.f6387);
            }
        }
        obtainStyledAttributes.recycle();
    }
}
