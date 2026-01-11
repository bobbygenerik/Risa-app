package p370;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import p021.AbstractC1031;
import p409.C4857;

/* renamed from: ᵢˆ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4509 extends AbstractC1031 {
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static void m9084(Context context, C4857 c4857, IntentFilter intentFilter) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            context.registerReceiver(c4857, intentFilter, i >= 33 ? 2 : 0);
        } else {
            context.registerReceiver(c4857, intentFilter);
        }
    }
}
