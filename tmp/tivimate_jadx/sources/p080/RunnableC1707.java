package p080;

import p087.AbstractC1751;
import p399.C4751;

/* renamed from: ʿʾ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC1707 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C1709 f6979;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f6980;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C4751 f6981;

    public /* synthetic */ RunnableC1707(C1709 c1709, C4751 c4751, int i) {
        this.f6980 = i;
        this.f6979 = c1709;
        this.f6981 = c4751;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final void m4644() {
        C4751 c4751 = this.f6981;
        c4751.f17933.m5200();
        synchronized (c4751.f17915) {
            synchronized (this.f6979) {
                try {
                    if (this.f6979.f6985.f6873.contains(new C1699(this.f6981, AbstractC1751.f7114))) {
                        C1709 c1709 = this.f6979;
                        try {
                            this.f6981.m9500(c1709.f6993, 5);
                        } catch (Throwable th) {
                            throw new C1696(th);
                        }
                    }
                    this.f6979.m4648();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6980) {
            case 0:
                m4644();
                return;
            default:
                C4751 c4751 = this.f6981;
                c4751.f17933.m5200();
                synchronized (c4751.f17915) {
                    synchronized (this.f6979) {
                        try {
                            if (this.f6979.f6985.f6873.contains(new C1699(this.f6981, AbstractC1751.f7114))) {
                                this.f6979.f6983.m4612();
                                C1709 c1709 = this.f6979;
                                try {
                                    this.f6981.m9502(c1709.f6983, c1709.f6987, c1709.f6989);
                                    this.f6979.m4647(this.f6981);
                                } catch (Throwable th) {
                                    throw new C1696(th);
                                }
                            }
                            this.f6979.m4648();
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
                return;
        }
    }
}
