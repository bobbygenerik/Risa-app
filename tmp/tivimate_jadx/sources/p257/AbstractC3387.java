package p257;

import android.graphics.Bitmap;

/* renamed from: יᐧ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC3387 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final /* synthetic */ int[] f13231;

    static {
        int[] iArr = new int[Bitmap.Config.values().length];
        f13231 = iArr;
        try {
            iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f13231[Bitmap.Config.RGB_565.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f13231[Bitmap.Config.ARGB_4444.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f13231[Bitmap.Config.ALPHA_8.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
    }
}
