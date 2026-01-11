package p305;

import android.os.Message;
import java.util.ArrayList;

/* renamed from: ᐧˎ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3716 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Message f14491;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m7816() {
        Message message = this.f14491;
        message.getClass();
        message.sendToTarget();
        m7817();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7817() {
        this.f14491 = null;
        ArrayList arrayList = C3711.f14470;
        synchronized (arrayList) {
            try {
                if (arrayList.size() < 50) {
                    arrayList.add(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
