package p292;

import com.bumptech.glide.C0229;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import p048.C1376;
import p048.C1378;
import p048.C1379;
import p048.InterfaceC1375;
import p152.AbstractC2444;
import p208.C2937;
import p208.C2942;
import p208.C2945;
import p208.InterfaceC2954;
import p271.AbstractC3480;
import p394.AbstractC4710;
import p394.AbstractC4712;
import p430.AbstractC5099;
import ˏˆ.ﹳٴ;

/* renamed from: ٴᵎ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3632 implements Cloneable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C3642 f14207;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2937 f14208;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public volatile boolean f14209;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final CopyOnWriteArrayList f14210;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C3639 f14211;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public C3648 f14212;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public Object f14213;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f14214;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public InterfaceC3631 f14215;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2945 f14216;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final AtomicBoolean f14217;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public boolean f14218;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public C0229 f14219;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public boolean f14220;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public volatile C0229 f14221;

    public C3632(C2937 c2937, C2945 c2945) {
        this.f14208 = c2937;
        this.f14216 = c2945;
        this.f14207 = (C3642) c2937.f11127.ᴵˊ;
        c2937.f11130.getClass();
        C3639 c3639 = new C3639(this);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        c3639.mo5765(0);
        this.f14211 = c3639;
        this.f14217 = new AtomicBoolean();
        this.f14220 = true;
        this.f14210 = new CopyOnWriteArrayList();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final String m7607(C3632 c3632) {
        StringBuilder sb = new StringBuilder();
        sb.append(c3632.f14209 ? "canceled " : "");
        sb.append("call");
        sb.append(" to ");
        sb.append(c3632.f14216.f11226.m6469());
        return sb.toString();
    }

    public final void cancel() {
        if (this.f14209) {
            return;
        }
        this.f14209 = true;
        C0229 c0229 = this.f14221;
        if (c0229 != null) {
            ((InterfaceC1375) c0229.f1645).cancel();
        }
        Iterator it = this.f14210.iterator();
        while (it.hasNext()) {
            ((InterfaceC3643) it.next()).cancel();
        }
    }

    public final Object clone() {
        return new C3632(this.f14208, this.f14216);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001c A[Catch: all -> 0x0012, TryCatch #0 {all -> 0x0012, blocks: (B:41:0x000d, B:10:0x001c, B:12:0x0020, B:13:0x0022, B:15:0x0027, B:19:0x0030, B:21:0x0034, B:7:0x0016), top: B:40:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0020 A[Catch: all -> 0x0012, TryCatch #0 {all -> 0x0012, blocks: (B:41:0x000d, B:10:0x001c, B:12:0x0020, B:13:0x0022, B:15:0x0027, B:19:0x0030, B:21:0x0034, B:7:0x0016), top: B:40:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0038  */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.IOException m7608(com.bumptech.glide.C0229 r2, boolean r3, boolean r4, java.io.IOException r5) {
        /*
            r1 = this;
            com.bumptech.glide.ʼˎ r0 = r1.f14221
            boolean r2 = r2.equals(r0)
            if (r2 != 0) goto L9
            goto L53
        L9:
            monitor-enter(r1)
            r2 = 0
            if (r3 == 0) goto L14
            boolean r0 = r1.f14214     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L1a
            goto L14
        L12:
            r2 = move-exception
            goto L3c
        L14:
            if (r4 == 0) goto L3e
            boolean r0 = r1.f14218     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L3e
        L1a:
            if (r3 == 0) goto L1e
            r1.f14214 = r2     // Catch: java.lang.Throwable -> L12
        L1e:
            if (r4 == 0) goto L22
            r1.f14218 = r2     // Catch: java.lang.Throwable -> L12
        L22:
            boolean r3 = r1.f14214     // Catch: java.lang.Throwable -> L12
            r4 = 1
            if (r3 != 0) goto L2d
            boolean r0 = r1.f14218     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L2d
            r0 = r4
            goto L2e
        L2d:
            r0 = r2
        L2e:
            if (r3 != 0) goto L39
            boolean r3 = r1.f14218     // Catch: java.lang.Throwable -> L12
            if (r3 != 0) goto L39
            boolean r3 = r1.f14220     // Catch: java.lang.Throwable -> L12
            if (r3 != 0) goto L39
            r2 = r4
        L39:
            r3 = r2
            r2 = r0
            goto L3f
        L3c:
            monitor-exit(r1)
            throw r2
        L3e:
            r3 = r2
        L3f:
            monitor-exit(r1)
            if (r2 == 0) goto L4c
            r2 = 0
            r1.f14221 = r2
            ٴᵎ.ᵔﹳ r2 = r1.f14212
            if (r2 == 0) goto L4c
            r2.m7644()
        L4c:
            if (r3 == 0) goto L53
            java.io.IOException r2 = r1.m7614(r5)
            return r2
        L53:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: p292.C3632.m7608(com.bumptech.glide.ʼˎ, boolean, boolean, java.io.IOException):java.io.IOException");
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final IOException m7609(IOException iOException) {
        boolean z;
        synchronized (this) {
            z = false;
            if (this.f14220) {
                this.f14220 = false;
                if (!this.f14214) {
                    if (!this.f14218) {
                        z = true;
                    }
                }
            }
        }
        return z ? m7614(iOException) : iOException;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m7610(InterfaceC2954 interfaceC2954) {
        RunnableC3638 runnableC3638;
        if (!this.f14217.compareAndSet(false, true)) {
            throw new IllegalStateException("Already Executed");
        }
        AbstractC3480 abstractC3480 = AbstractC3480.f13658;
        this.f14213 = AbstractC3480.f13658.mo7411();
        ﹳٴ r0 = this.f14208.f11144;
        RunnableC3638 runnableC36382 = new RunnableC3638(this, interfaceC2954);
        synchronized (r0) {
            ((ArrayDeque) r0.ʽʽ).add(runnableC36382);
            String str = this.f14216.f11226.f11161;
            Iterator it = ((ArrayDeque) r0.ˈٴ).iterator();
            while (true) {
                if (!it.hasNext()) {
                    Iterator it2 = ((ArrayDeque) r0.ʽʽ).iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            runnableC3638 = null;
                            break;
                        } else {
                            runnableC3638 = (RunnableC3638) it2.next();
                            if (AbstractC2444.m5562(runnableC3638.f14229.f14216.f11226.f11161, str)) {
                                break;
                            }
                        }
                    }
                } else {
                    runnableC3638 = (RunnableC3638) it.next();
                    if (AbstractC2444.m5562(runnableC3638.f14229.f14216.f11226.f11161, str)) {
                        break;
                    }
                }
            }
            if (runnableC3638 != null) {
                runnableC36382.f14231 = runnableC3638.f14231;
            }
        }
        r0.ᴵᵔ();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C2942 m7611() {
        if (!this.f14217.compareAndSet(false, true)) {
            throw new IllegalStateException("Already Executed");
        }
        this.f14211.m5779();
        AbstractC3480 abstractC3480 = AbstractC3480.f13658;
        this.f14213 = AbstractC3480.f13658.mo7411();
        try {
            ﹳٴ r0 = this.f14208.f11144;
            synchronized (r0) {
                ((ArrayDeque) r0.ᴵᵔ).add(this);
            }
            return m7613();
        } finally {
            ﹳٴ r1 = this.f14208.f11144;
            r1.יـ((ArrayDeque) r1.ᴵᵔ, this);
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final Socket m7612() {
        C3648 c3648 = this.f14212;
        TimeZone timeZone = AbstractC4712.f17804;
        ArrayList arrayList = c3648.f14305;
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i = -1;
                break;
            }
            Object obj = arrayList.get(i2);
            i2++;
            if (AbstractC2444.m5562(((Reference) obj).get(), this)) {
                break;
            }
            i++;
        }
        if (i == -1) {
            throw new IllegalStateException("Check failed.");
        }
        arrayList.remove(i);
        this.f14212 = null;
        if (!arrayList.isEmpty()) {
            return null;
        }
        c3648.f14298 = System.nanoTime();
        C3642 c3642 = this.f14207;
        ConcurrentLinkedQueue concurrentLinkedQueue = c3642.f14272;
        TimeZone timeZone2 = AbstractC4712.f17804;
        if (!c3648.f14306) {
            c3642.f14270.m10765(c3642.f14271, 0L);
            return null;
        }
        c3648.f14306 = true;
        concurrentLinkedQueue.remove(c3648);
        if (concurrentLinkedQueue.isEmpty()) {
            c3642.f14270.m10768();
        }
        if (c3642.f14273.get(c3648.f14294.f11246) == null) {
            return c3648.f14307;
        }
        throw new ClassCastException();
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C2942 m7613() {
        ArrayList arrayList = new ArrayList();
        AbstractC5099.m10033(this.f14208.f11143, arrayList);
        arrayList.add(new C1379(1, this.f14208));
        arrayList.add(new C1379(0, this.f14208.f11129));
        arrayList.add(new C1378(1));
        arrayList.add(C3649.f14308);
        AbstractC5099.m10033(this.f14208.f11125, arrayList);
        arrayList.add(new C1378(0));
        C2945 c2945 = this.f14216;
        C2937 c2937 = this.f14208;
        try {
            try {
                C2942 m4065 = new C1376(this, arrayList, 0, null, c2945, c2937.f11121, c2937.f11136, c2937.f11128).m4065(c2945);
                if (this.f14209) {
                    AbstractC4710.m9437(m4065);
                    throw new IOException("Canceled");
                }
                m7609(null);
                return m4065;
            } catch (IOException e) {
                throw m7609(e);
            }
        } catch (Throwable th) {
            if (0 == 0) {
                m7609(null);
            }
            throw th;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final IOException m7614(IOException iOException) {
        Socket m7612;
        TimeZone timeZone = AbstractC4712.f17804;
        C3648 c3648 = this.f14212;
        if (c3648 != null) {
            synchronized (c3648) {
                m7612 = m7612();
            }
            if (this.f14212 == null) {
                if (m7612 != null) {
                    AbstractC4712.m9442(m7612);
                }
            } else if (m7612 != null) {
                throw new IllegalStateException("Check failed.");
            }
        }
        if (!this.f14211.m5777()) {
            return iOException;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m7615(boolean z) {
        C0229 c0229;
        synchronized (this) {
            if (!this.f14220) {
                throw new IllegalStateException("released");
            }
        }
        if (z && (c0229 = this.f14221) != null) {
            ((InterfaceC1375) c0229.f1645).cancel();
            ((C3632) c0229.f1646).m7608(c0229, true, true, null);
        }
        this.f14219 = null;
    }
}
