package p305;

import android.content.Context;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import p003.RunnableC0786;
import p283.RunnableC3568;

/* renamed from: ᐧˎ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3729 {

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static C3729 f14518;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f14519;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f14520;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f14521;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final CopyOnWriteArrayList f14522;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Executor f14523;

    public C3729(Context context) {
        Executor m7867 = AbstractC3731.m7867();
        this.f14523 = m7867;
        this.f14522 = new CopyOnWriteArrayList();
        this.f14519 = new Object();
        this.f14520 = 0;
        m7867.execute(new RunnableC0786(this, 27, context));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static synchronized C3729 m7836(Context context) {
        C3729 c3729;
        synchronized (C3729.class) {
            try {
                if (f14518 == null) {
                    f14518 = new C3729(context);
                }
                c3729 = f14518;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c3729;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m7837(int i) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f14522;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            C3714 c3714 = (C3714) it.next();
            if (c3714.f14487.get() == null) {
                copyOnWriteArrayList.remove(c3714);
            }
        }
        synchronized (this.f14519) {
            try {
                if (this.f14521 && this.f14520 == i) {
                    return;
                }
                this.f14521 = true;
                this.f14520 = i;
                Iterator it2 = this.f14522.iterator();
                while (it2.hasNext()) {
                    C3714 c37142 = (C3714) it2.next();
                    c37142.f14486.execute(new RunnableC3568(2, c37142));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m7838() {
        int i;
        synchronized (this.f14519) {
            i = this.f14520;
        }
        return i;
    }
}
