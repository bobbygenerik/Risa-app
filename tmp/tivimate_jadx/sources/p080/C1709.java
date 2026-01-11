package p080;

import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import p087.AbstractC1751;
import p133.C2200;
import p133.InterfaceC2201;
import p140.ExecutorServiceC2374;
import p238.InterfaceC3203;
import p399.C4751;
import ˋⁱ.ﾞᴵ;
import ᵢ.ﹳٴ;

/* renamed from: ʿʾ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1709 implements InterfaceC2201 {

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public static final ﾞᴵ f6982 = new Object();

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public C1692 f6983;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final InterfaceC1700 f6984;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public boolean f6986;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public int f6987;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final InterfaceC3203 f6988;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public boolean f6989;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final ExecutorServiceC2374 f6990;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final InterfaceC1713 f6991;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public boolean f6992;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public GlideException f6993;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public boolean f6994;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public RunnableC1695 f6995;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final ExecutorServiceC2374 f6997;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public C1702 f7000;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final ExecutorServiceC2374 f7001;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public boolean f7002;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public InterfaceC1710 f7003;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public volatile boolean f7004;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C1689 f6985 = new C1689(new ArrayList(2));

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2200 f6998 = new Object();

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final AtomicInteger f6996 = new AtomicInteger();

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final ﾞᴵ f6999 = f6982;

    /* JADX WARN: Type inference failed for: r5v2, types: [ˈﹳ.ˑﹳ, java.lang.Object] */
    public C1709(ExecutorServiceC2374 executorServiceC2374, ExecutorServiceC2374 executorServiceC23742, ExecutorServiceC2374 executorServiceC23743, ExecutorServiceC2374 executorServiceC23744, C1698 c1698, C1698 c16982, ﹳٴ r9) {
        this.f6997 = executorServiceC2374;
        this.f6990 = executorServiceC23742;
        this.f7001 = executorServiceC23744;
        this.f6991 = c1698;
        this.f6984 = c16982;
        this.f6988 = r9;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final synchronized void m4645() {
        if (this.f7000 == null) {
            throw new IllegalArgumentException();
        }
        this.f6985.f6873.clear();
        this.f7000 = null;
        this.f6983 = null;
        this.f7003 = null;
        this.f6992 = false;
        this.f7004 = false;
        this.f6994 = false;
        this.f6989 = false;
        this.f6995.m4620();
        this.f6995 = null;
        this.f6993 = null;
        this.f6987 = 0;
        this.f6988.mo3014(this);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m4646() {
        if (m4654()) {
            return;
        }
        this.f7004 = true;
        RunnableC1695 runnableC1695 = this.f6995;
        runnableC1695.f6924 = true;
        InterfaceC1708 interfaceC1708 = runnableC1695.f6901;
        if (interfaceC1708 != null) {
            interfaceC1708.cancel();
        }
        InterfaceC1713 interfaceC1713 = this.f6991;
        C1702 c1702 = this.f7000;
        C1698 c1698 = (C1698) interfaceC1713;
        synchronized (c1698) {
            HashMap hashMap = c1698.f6943.f1713;
            if (equals(hashMap.get(c1702))) {
                hashMap.remove(c1702);
            }
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final synchronized void m4647(C4751 c4751) {
        try {
            this.f6998.m5200();
            this.f6985.f6873.remove(new C1699(c4751, AbstractC1751.f7114));
            if (this.f6985.f6873.isEmpty()) {
                m4646();
                if (!this.f6994) {
                    if (this.f6992) {
                    }
                }
                if (this.f6996.get() == 0) {
                    m4645();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m4648() {
        C1692 c1692;
        synchronized (this) {
            try {
                this.f6998.m5200();
                AbstractC1751.m4713("Not yet complete!", m4654());
                int decrementAndGet = this.f6996.decrementAndGet();
                AbstractC1751.m4713("Can't decrement below 0", decrementAndGet >= 0);
                if (decrementAndGet == 0) {
                    c1692 = this.f6983;
                    m4645();
                } else {
                    c1692 = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (c1692 != null) {
            c1692.m4611();
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final synchronized void m4649(int i) {
        C1692 c1692;
        AbstractC1751.m4713("Not yet complete!", m4654());
        if (this.f6996.getAndAdd(i) == 0 && (c1692 = this.f6983) != null) {
            c1692.m4612();
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final synchronized void m4650(RunnableC1695 runnableC1695) {
        ExecutorServiceC2374 executorServiceC2374;
        this.f6995 = runnableC1695;
        int m4626 = runnableC1695.m4626(1);
        if (m4626 != 2 && m4626 != 3) {
            executorServiceC2374 = this.f6986 ? this.f7001 : this.f6990;
            executorServiceC2374.execute(runnableC1695);
        }
        executorServiceC2374 = this.f6997;
        executorServiceC2374.execute(runnableC1695);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m4651() {
        synchronized (this) {
            try {
                this.f6998.m5200();
                if (this.f7004) {
                    m4645();
                    return;
                }
                if (this.f6985.f6873.isEmpty()) {
                    throw new IllegalStateException("Received an exception without any callbacks to notify");
                }
                if (this.f6992) {
                    throw new IllegalStateException("Already failed once");
                }
                this.f6992 = true;
                C1702 c1702 = this.f7000;
                C1689 c1689 = this.f6985;
                c1689.getClass();
                ArrayList arrayList = new ArrayList(c1689.f6873);
                m4649(arrayList.size() + 1);
                ((C1698) this.f6991).m4636(this, c1702, null);
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    C1699 c1699 = (C1699) obj;
                    c1699.f6945.execute(new RunnableC1707(this, c1699.f6946, 0));
                }
                m4648();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m4652() {
        synchronized (this) {
            try {
                this.f6998.m5200();
                if (this.f7004) {
                    this.f7003.mo4404();
                    m4645();
                    return;
                }
                if (this.f6985.f6873.isEmpty()) {
                    throw new IllegalStateException("Received a resource without any callbacks to notify");
                }
                if (this.f6994) {
                    throw new IllegalStateException("Already have resource");
                }
                ﾞᴵ r0 = this.f6999;
                InterfaceC1710 interfaceC1710 = this.f7003;
                boolean z = this.f7002;
                C1702 c1702 = this.f7000;
                InterfaceC1700 interfaceC1700 = this.f6984;
                r0.getClass();
                this.f6983 = new C1692(interfaceC1710, z, true, c1702, interfaceC1700);
                this.f6994 = true;
                C1689 c1689 = this.f6985;
                c1689.getClass();
                ArrayList arrayList = new ArrayList(c1689.f6873);
                m4649(arrayList.size() + 1);
                ((C1698) this.f6991).m4636(this, this.f7000, this.f6983);
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    C1699 c1699 = (C1699) obj;
                    c1699.f6945.execute(new RunnableC1707(this, c1699.f6946, 1));
                }
                m4648();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final synchronized void m4653(C4751 c4751, Executor executor) {
        try {
            this.f6998.m5200();
            this.f6985.f6873.add(new C1699(c4751, executor));
            if (this.f6994) {
                m4649(1);
                executor.execute(new RunnableC1707(this, c4751, 1));
            } else if (this.f6992) {
                m4649(1);
                executor.execute(new RunnableC1707(this, c4751, 0));
            } else {
                AbstractC1751.m4713("Cannot add callbacks to a cancelled EngineJob", !this.f7004);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // p133.InterfaceC2201
    /* renamed from: ﹳٴ */
    public final C2200 mo4506() {
        return this.f6998;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean m4654() {
        return this.f6992 || this.f6994 || this.f7004;
    }
}
