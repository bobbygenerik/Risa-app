package p087;

import android.graphics.Bitmap;
import p256.C3375;

/* renamed from: ʿٴ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC1742 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final /* synthetic */ int[] f7098;

    static {
        int[] iArr = new int[Bitmap.Config.values().length];
        f7098 = iArr;
        try {
            iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f7098[Bitmap.Config.RGB_565.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f7098[Bitmap.Config.ARGB_4444.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f7098[C3375.m7244().ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f7098[Bitmap.Config.ARGB_8888.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
    }
}
