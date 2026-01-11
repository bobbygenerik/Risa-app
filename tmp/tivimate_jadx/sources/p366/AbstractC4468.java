package p366;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
import java.util.HashSet;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import p257.InterfaceC3396;

/* renamed from: ᵔﹶ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4468 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Lock f16721;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Paint f16722 = new Paint(6);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.concurrent.locks.Lock] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    static {
        new Paint(7);
        f16721 = new HashSet(Arrays.asList("XT1085", "XT1092", "XT1093", "XT1094", "XT1095", "XT1096", "XT1097", "XT1098", "XT1031", "XT1028", "XT937C", "XT1032", "XT1008", "XT1033", "XT1035", "XT1034", "XT939G", "XT1039", "XT1040", "XT1042", "XT1045", "XT1063", "XT1064", "XT1068", "XT1069", "XT1072", "XT1077", "XT1078", "XT1079")).contains(Build.MODEL) ? new ReentrantLock() : new Object();
        new Paint(7).setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static Bitmap m9026(InterfaceC3396 interfaceC3396, Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() != i || bitmap.getHeight() != i2) {
            float min = Math.min(i / bitmap.getWidth(), i2 / bitmap.getHeight());
            int round = Math.round(bitmap.getWidth() * min);
            int round2 = Math.round(bitmap.getHeight() * min);
            if (bitmap.getWidth() != round || bitmap.getHeight() != round2) {
                Bitmap mo7280 = interfaceC3396.mo7280((int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888);
                mo7280.setHasAlpha(bitmap.hasAlpha());
                if (Log.isLoggable("TransformationUtils", 2)) {
                    String str = "request: " + i + "x" + i2;
                    String str2 = "toFit:   " + bitmap.getWidth() + "x" + bitmap.getHeight();
                    String str3 = "toReuse: " + mo7280.getWidth() + "x" + mo7280.getHeight();
                    String str4 = "minPct:   " + min;
                }
                Matrix matrix = new Matrix();
                matrix.setScale(min, min);
                m9027(bitmap, mo7280, matrix);
                return mo7280;
            }
            if (Log.isLoggable("TransformationUtils", 2)) {
            }
        } else if (Log.isLoggable("TransformationUtils", 2)) {
            return bitmap;
        }
        return bitmap;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m9027(Bitmap bitmap, Bitmap bitmap2, Matrix matrix) {
        Lock lock = f16721;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, f16722);
            canvas.setBitmap(null);
        } finally {
            lock.unlock();
        }
    }
}
