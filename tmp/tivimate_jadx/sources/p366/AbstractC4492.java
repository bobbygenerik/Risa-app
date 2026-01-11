package p366;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import java.util.concurrent.locks.Lock;
import p257.InterfaceC3396;
import ﹳˋ.ʼˎ;

/* renamed from: ᵔﹶ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4492 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C4488 f16837 = new ʼˎ(22);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [יᐧ.ﹳٴ] */
    /* JADX WARN: Type inference failed for: r7v2, types: [יᐧ.ﹳٴ] */
    /* JADX WARN: Type inference failed for: r7v4, types: [ᵔﹶ.ᵔﹳ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C4465 m9062(InterfaceC3396 interfaceC3396, Drawable drawable, int i, int i2) {
        Bitmap bitmap;
        Drawable current = drawable.getCurrent();
        boolean z = false;
        if (current instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) current).getBitmap();
        } else if (current instanceof Animatable) {
            bitmap = null;
        } else {
            if (i != Integer.MIN_VALUE || current.getIntrinsicWidth() > 0) {
                if (i2 != Integer.MIN_VALUE || current.getIntrinsicHeight() > 0) {
                    if (current.getIntrinsicWidth() > 0) {
                        i = current.getIntrinsicWidth();
                    }
                    if (current.getIntrinsicHeight() > 0) {
                        i2 = current.getIntrinsicHeight();
                    }
                    Lock lock = AbstractC4468.f16721;
                    lock.lock();
                    Bitmap mo7280 = interfaceC3396.mo7280(i, i2, Bitmap.Config.ARGB_8888);
                    try {
                        Canvas canvas = new Canvas(mo7280);
                        current.setBounds(0, 0, i, i2);
                        current.draw(canvas);
                        canvas.setBitmap(null);
                        lock.unlock();
                        bitmap = mo7280;
                        z = true;
                    } catch (Throwable th) {
                        lock.unlock();
                        throw th;
                    }
                } else if (Log.isLoggable("DrawableToBitmap", 5)) {
                    String str = "Unable to draw " + current + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height";
                }
            } else if (Log.isLoggable("DrawableToBitmap", 5)) {
                String str2 = "Unable to draw " + current + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width";
            }
            bitmap = null;
            z = true;
        }
        if (!z) {
            interfaceC3396 = f16837;
        }
        return C4465.m9024(bitmap, interfaceC3396);
    }
}
