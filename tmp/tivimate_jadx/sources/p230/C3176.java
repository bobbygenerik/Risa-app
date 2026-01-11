package p230;

import android.graphics.Matrix;
import android.os.Build;
import android.view.View;
import p121.AbstractC2026;

/* renamed from: ˑʿ.ᵔי, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C3176 extends AbstractC2026 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static boolean f12122 = true;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static boolean f12123 = true;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static boolean f12124 = true;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static boolean f12125 = true;

    @Override // p121.AbstractC2026
    /* renamed from: ʾˋ */
    public void mo5066(View view, int i) {
        if (Build.VERSION.SDK_INT == 28) {
            super.mo5066(view, i);
        } else if (f12125) {
            try {
                AbstractC3172.m6987(view, i);
            } catch (NoSuchMethodError unused) {
                f12125 = false;
            }
        }
    }

    /* renamed from: ˈⁱ */
    public void mo6947(View view, int i, int i2, int i3, int i4) {
        if (f12124) {
            try {
                AbstractC3167.m6978(view, i, i2, i3, i4);
            } catch (NoSuchMethodError unused) {
                f12124 = false;
            }
        }
    }

    /* renamed from: ˉـ */
    public void mo6948(View view, Matrix matrix) {
        if (f12123) {
            try {
                AbstractC3173.m6988(view, matrix);
            } catch (NoSuchMethodError unused) {
                f12123 = false;
            }
        }
    }

    /* renamed from: ᴵˑ */
    public void mo6949(View view, Matrix matrix) {
        if (f12122) {
            try {
                AbstractC3173.m6989(view, matrix);
            } catch (NoSuchMethodError unused) {
                f12122 = false;
            }
        }
    }
}
