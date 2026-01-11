package p078;

import com.hierynomus.mssmb2.SMBApiException;
import com.hierynomus.protocol.transport.TransportException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import p033.AbstractC1179;
import p033.C1181;
import p033.C1184;
import p033.EnumC1175;
import p033.EnumC1189;
import p052.C1417;
import p073.C1643;
import p154.C2505;
import p183.C2762;
import p205.C2921;
import p209.C2971;
import p250.C3304;
import p284.EnumC3571;
import p289.C3602;
import p344.C4268;
import p344.C4269;
import ˈˆ.ﾞᴵ;
import ٴﾞ.ˆʾ;
import ᵎˉ.ⁱˊ;

/* renamed from: ʿʼ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1679 implements AutoCloseable {

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public static final ⁱˊ f6803;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public static final ˆʾ f6804;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final long f6805;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2921 f6806;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final AtomicBoolean f6807 = new AtomicBoolean(false);

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C3304 f6808;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int f6809;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int f6810;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final int f6811;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final long f6812;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C1643 f6813;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final EnumC1175 f6814;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final long f6815;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final long f6816;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final long f6817;

    /* JADX WARN: Type inference failed for: r0v2, types: [ᵎˉ.ⁱˊ, java.lang.Object] */
    static {
        new C1184(new byte[]{-1, -1, -1, -1, -1, -1, -1, -1}, new byte[]{-1, -1, -1, -1, -1, -1, -1, -1});
        f6804 = new ˆʾ(10);
        f6803 = new Object();
    }

    public AbstractC1679(C2921 c2921, C1643 c1643) {
        this.f6806 = c2921;
        this.f6813 = c1643;
        C3304 c3304 = (C3304) c1643.f6683;
        this.f6808 = c3304;
        C3602 c3602 = (C3602) c1643.f6686;
        C1417 c1417 = (C1417) c3602.f14088.f9920;
        this.f6814 = (EnumC1175) c1417.f5547;
        C2971 c2971 = c3602.f14086;
        this.f6810 = Math.min(c2971.f11365, c1417.f5545);
        this.f6812 = c2971.f11354;
        this.f6809 = Math.min(c2971.f11357, c1417.f5546);
        this.f6816 = c2971.f11362;
        this.f6811 = Math.min(c2971.f11368, c1417.f5548);
        this.f6815 = c2971.f11364;
        this.f6817 = c3304.f12707;
        this.f6805 = c1643.f6685;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this.f6807.getAndSet(true)) {
            return;
        }
        C1643 c1643 = this.f6813;
        C4269 c4269 = (C4269) c1643.f6684;
        C3602 c3602 = (C3602) c1643.f6686;
        C3304 c3304 = (C3304) c1643.f6683;
        try {
            C2762 m7113 = c3304.m7113(new C2505(4, (EnumC1175) ((C1417) c3602.f14088.f9920).f5547, EnumC1189.f4617, c3304.f12707, c1643.f6685));
            long j = c3602.f14086.f11364;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            ⁱˊ r2 = TransportException.f3098;
            AbstractC1179 abstractC1179 = (AbstractC1179) ﾞᴵ.ﹳᐧ(m7113, j);
            if (EnumC3571.m7527(((C1181) abstractC1179.ˊᵔ()).f4580)) {
                return;
            }
            throw new SMBApiException((C1181) abstractC1179.ˊᵔ(), "Error closing connection to " + ((C2921) c1643.f6681));
        } finally {
            c4269.f15842.ˊʻ(new C4268(c3304.f12707));
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2762 m4568(AbstractC1179 abstractC1179) {
        if (this.f6807.get()) {
            throw new RuntimeException(getClass().getSimpleName().concat(" has already been closed"));
        }
        try {
            return this.f6808.m7113(abstractC1179);
        } catch (TransportException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final AbstractC1179 m4569(AbstractC1179 abstractC1179, String str, Object obj, InterfaceC1672 interfaceC1672, long j) {
        AbstractC1179 abstractC11792;
        C2762 m4568 = m4568(abstractC1179);
        try {
            if (j > 0) {
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                ⁱˊ r0 = TransportException.f3098;
                abstractC11792 = (AbstractC1179) ﾞᴵ.ﹳᐧ(m4568, j);
            } else {
                ⁱˊ r7 = TransportException.f3098;
                try {
                    abstractC11792 = (AbstractC1179) m4568.f10521.get();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    throw r7.ᵔʾ(e);
                } catch (ExecutionException e2) {
                    throw r7.ᵔʾ(e2);
                }
            }
            if (interfaceC1672.m4562(((C1181) abstractC11792.ˊᵔ()).f4580)) {
                return abstractC11792;
            }
            throw new SMBApiException((C1181) abstractC11792.ˊᵔ(), str + " failed for " + obj);
        } catch (TransportException e3) {
            throw new RuntimeException(e3);
        }
    }
}
