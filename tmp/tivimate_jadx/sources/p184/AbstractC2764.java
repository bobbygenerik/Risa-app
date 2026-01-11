package p184;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import p136.C2219;

/* renamed from: ˋᴵ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2764 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final int[] f10525 = {R.attr.theme, ar.tvplayer.tv.R.attr.1sv};

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final int[] f10524 = {ar.tvplayer.tv.R.attr.12g};

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static Context m6163(Context context, AttributeSet attributeSet, int i, int i2) {
        return m6164(i, i2, context, attributeSet, new int[0]);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static Context m6164(int i, int i2, Context context, AttributeSet attributeSet, int[] iArr) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f10524, i, i2);
        int[] iArr2 = {obtainStyledAttributes.getResourceId(0, 0)};
        obtainStyledAttributes.recycle();
        int i3 = iArr2[0];
        boolean z = (context instanceof C2219) && ((C2219) context).f8699 == i3;
        if (i3 == 0 || z) {
            return context;
        }
        C2219 c2219 = new C2219(context, i3);
        int length = iArr.length;
        int[] iArr3 = new int[length];
        if (iArr.length > 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
            for (int i4 = 0; i4 < iArr.length; i4++) {
                iArr3[i4] = obtainStyledAttributes2.getResourceId(i4, 0);
            }
            obtainStyledAttributes2.recycle();
        }
        for (int i5 = 0; i5 < length; i5++) {
            int i6 = iArr3[i5];
            if (i6 != 0) {
                c2219.getTheme().applyStyle(i6, true);
            }
        }
        TypedArray obtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, f10525);
        int resourceId = obtainStyledAttributes3.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes3.getResourceId(1, 0);
        obtainStyledAttributes3.recycle();
        if (resourceId == 0) {
            resourceId = resourceId2;
        }
        if (resourceId != 0) {
            c2219.getTheme().applyStyle(resourceId, true);
        }
        return c2219;
    }
}
