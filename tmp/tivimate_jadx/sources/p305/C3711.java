package p305;

import android.os.Handler;
import java.util.ArrayList;

/* renamed from: ᐧˎ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3711 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final ArrayList f14470 = new ArrayList(50);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Handler f14471;

    public C3711(Handler handler) {
        this.f14471 = handler;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C3716 m7749() {
        C3716 obj;
        ArrayList arrayList = f14470;
        synchronized (arrayList) {
            try {
                obj = arrayList.isEmpty() ? new Object() : (C3716) arrayList.remove(arrayList.size() - 1);
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m7750(Runnable runnable) {
        return this.f14471.post(runnable);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m7751(int i) {
        AbstractC3731.m7849(i != 0);
        this.f14471.removeMessages(i);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean m7752(int i) {
        return this.f14471.sendEmptyMessage(i);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3716 m7753(int i, Object obj) {
        C3716 m7749 = m7749();
        m7749.f14491 = this.f14471.obtainMessage(i, obj);
        return m7749;
    }
}
