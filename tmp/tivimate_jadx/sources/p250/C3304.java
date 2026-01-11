package p250;

import com.hierynomus.mssmb2.SMBApiException;
import com.hierynomus.protocol.transport.TransportException;
import com.hierynomus.smbj.paths.PathResolveException;
import com.hierynomus.smbj.session.SMB2GuestSigningRequiredException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p033.AbstractC1179;
import p033.C1181;
import p033.EnumC1175;
import p033.EnumC1188;
import p033.EnumC1189;
import p052.C1417;
import p073.C1643;
import p078.AbstractC1679;
import p078.C1671;
import p137.AbstractC2305;
import p154.C2486;
import p154.C2487;
import p154.C2489;
import p154.C2496;
import p154.C2503;
import p154.EnumC2498;
import p170.C2617;
import p173.InterfaceC2655;
import p183.C2762;
import p205.C2921;
import p284.EnumC3571;
import p289.C3602;
import p317.AbstractC3914;
import p344.C4268;
import p344.C4269;
import p449.AbstractC5359;
import p449.InterfaceC5360;
import p456.InterfaceC5377;
import ʽⁱ.ᵎﹶ;
import ˈˆ.ﾞᴵ;
import ˉˆ.ʿ;
import ˑי.ʽ;
import ᵎˉ.ⁱˊ;
import ᵢ.ﹳٴ;

/* renamed from: יˆ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3304 implements AutoCloseable {

    /* renamed from: ᵔי, reason: contains not printable characters */
    public static final InterfaceC5360 f12705 = AbstractC5359.m10750(C3304.class);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f12706;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public long f12707;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C3602 f12708;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final ArrayList f12709;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final ʿ f12710;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f12711;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final ʽ f12712;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C3305 f12713;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C4269 f12714;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public boolean f12715;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final ﹳٴ f12716;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ˑי.ʽ] */
    /* JADX WARN: Type inference failed for: r4v1, types: [יˆ.ⁱˊ, java.lang.Object] */
    public C3304(C3602 c3602, ﹳٴ r4, C4269 c4269, ʿ r6, InterfaceC5377 interfaceC5377) {
        ?? obj = new Object();
        ((ʽ) obj).ʾˋ = new ReentrantReadWriteLock();
        ((ʽ) obj).ᴵˊ = new HashMap();
        ((ʽ) obj).ʽʽ = new HashMap();
        this.f12712 = obj;
        this.f12709 = new ArrayList();
        this.f12708 = c3602;
        this.f12716 = r4;
        this.f12714 = c4269;
        this.f12710 = r6;
        EnumC1175 enumC1175 = (EnumC1175) ((C1417) c3602.f14088.f9920).f5547;
        ?? obj2 = new Object();
        obj2.f12721 = enumC1175;
        obj2.f12720 = interfaceC5377;
        this.f12713 = obj2;
        if (c4269 != null) {
            c4269.m8650(this);
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        m7115();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3304 m7111(C2921 c2921) {
        try {
            C3304 m7565 = this.f12708.f14091.m6500(c2921.f11046).m7565(this.f12716);
            this.f12709.add(m7565);
            return m7565;
        } catch (IOException e) {
            EnumC1189 enumC1189 = EnumC1189.f4622;
            throw new SMBApiException(4294967295L, "Could not connect to DFS root " + c2921, e);
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m7112(C2496 c2496) {
        this.f12711 = c2496.f9511.contains(EnumC2498.f9518);
        boolean contains = c2496.f9511.contains(EnumC2498.f9516);
        this.f12715 = contains;
        C3602 c3602 = this.f12708;
        c3602.f14086.getClass();
        C2617 c2617 = c3602.f14088;
        if ((c2617.f9918 & 2) > 0) {
            this.f12706 = true;
        } else {
            this.f12706 = false;
        }
        if (contains) {
            this.f12706 = false;
        }
        boolean z = this.f12711;
        if (z && this.f12706) {
            throw new SMB2GuestSigningRequiredException();
        }
        if (z) {
            this.f12706 = false;
        }
        if (((EnumC1175) ((C1417) c2617.f9920).f5547).m3690() && c2496.f9511.contains(EnumC2498.f9517)) {
            this.f12706 = false;
        }
        if (this.f12711 || this.f12715) {
            C3305 c3305 = this.f12713;
            if (c3305.f12721.m3690()) {
                throw new IllegalStateException("Cannot set a signing key (yet) for SMB3.x");
            }
            c3305.f12718 = "HmacSHA256";
            c3305.f12719 = null;
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final C2762 m7113(AbstractC1179 abstractC1179) {
        boolean z = this.f12706;
        C3305 c3305 = this.f12713;
        if (z && c3305.f12719 == null) {
            throw new IOException("Message signing is required, but no signing key is negotiated");
        }
        if (c3305.f12719 != null) {
            abstractC1179 = new C2487(c3305, abstractC1179);
        } else {
            C3305.f12717.mo4098(((C1181) abstractC1179.ˊᵔ()).f4583, "Not wrapping {} as signed, as no key is set.");
        }
        return this.f12708.m7566(abstractC1179);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final AbstractC1679 m7114(String str) {
        AbstractC1679 abstractC1679;
        C3304 c3304;
        if (str.contains("\\")) {
            throw new IllegalArgumentException(AbstractC2305.m5378("Share name (", str, ") cannot contain '\\' characters."));
        }
        ʽ r7 = this.f12712;
        ReentrantReadWriteLock reentrantReadWriteLock = (ReentrantReadWriteLock) r7.ʾˋ;
        reentrantReadWriteLock.readLock().lock();
        try {
            AbstractC1679 abstractC16792 = (AbstractC1679) ((HashMap) r7.ʽʽ).get(str);
            reentrantReadWriteLock.readLock().unlock();
            InterfaceC5360 interfaceC5360 = f12705;
            if (abstractC16792 != null) {
                interfaceC5360.mo4090(abstractC16792, str, "Returning cached Share {} for {}");
                return abstractC16792;
            }
            ʿ r8 = this.f12710;
            C3602 c3602 = this.f12708;
            String str2 = c3602.f14084;
            C2921 c2921 = new C2921(str2, str, null);
            interfaceC5360.mo4102(c2921, Long.valueOf(this.f12707), "Connecting to {} on session {}");
            try {
                C2489 c2489 = new C2489(9, (EnumC1175) ((C1417) c3602.f14088.f9920).f5547, EnumC1189.f4623, this.f12707, 0L, 1);
                c2489.f9487 = c2921;
                ((C1181) ((InterfaceC2655) ((ᵎﹶ) c2489).ʾˋ)).f4579 = 256;
                C2762 m7113 = m7113(c2489);
                long j = c3602.f14086.f11364;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                ⁱˊ r3 = TransportException.f3098;
                C2486 c2486 = (C2486) ﾞᴵ.ﹳᐧ(m7113, j);
                try {
                    C2921 c29212 = r8.ˈʿ(this, c2486, c2921);
                    boolean m8090 = AbstractC3914.m8090(c29212.f11046, str2);
                    String str3 = c29212.f11045;
                    String str4 = c29212.f11046;
                    if (m8090) {
                        c3304 = this;
                    } else {
                        interfaceC5360.mo4100(str4, "Re-routing the connection to host {}");
                        c3304 = m7111(c29212);
                    }
                    if (!(AbstractC3914.m8090(str4, str2) && AbstractC3914.m8090(str3, str))) {
                        return c3304.m7114(str3);
                    }
                } catch (PathResolveException unused) {
                }
                InterfaceC2655 interfaceC2655 = (InterfaceC2655) ((ᵎﹶ) c2486).ʾˋ;
                if ((((C1181) interfaceC2655).f4580 >>> 30) == 3) {
                    interfaceC5360.mo4101(((C1181) interfaceC2655).toString());
                    throw new SMBApiException((C1181) ((InterfaceC2655) ((ᵎﹶ) c2486).ʾˋ), "Could not connect to " + c2921);
                }
                if (c2486.f9480.contains(EnumC1188.f4610)) {
                    throw new RuntimeException("ASYMMETRIC capability unsupported");
                }
                C1643 c1643 = new C1643(((C1181) ((InterfaceC2655) ((ᵎﹶ) c2486).ʾˋ)).f4578, c2921, this, this.f12708, this.f12714);
                byte b = c2486.f9479;
                if (b == 1) {
                    abstractC1679 = new C1671(c2921, c1643, r8);
                } else if (b == 2) {
                    abstractC1679 = new AbstractC1679(c2921, c1643);
                } else {
                    if (b != 3) {
                        throw new RuntimeException("Unknown ShareType returned in the TREE_CONNECT Response");
                    }
                    abstractC1679 = new AbstractC1679(c2921, c1643);
                }
                r7.ᴵˊ(abstractC1679);
                return abstractC1679;
            } catch (TransportException e) {
                throw new RuntimeException(e);
            }
        } catch (Throwable th) {
            reentrantReadWriteLock.readLock().unlock();
            throw th;
        }
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m7115() {
        C4269 c4269 = this.f12714;
        C3602 c3602 = this.f12708;
        InterfaceC5360 interfaceC5360 = f12705;
        try {
            interfaceC5360.mo4102(Long.valueOf(this.f12707), c3602.f14084, "Logging off session {} from host {}");
            ʽ r0 = this.f12712;
            ReentrantReadWriteLock reentrantReadWriteLock = (ReentrantReadWriteLock) r0.ʾˋ;
            reentrantReadWriteLock.readLock().lock();
            try {
                ArrayList arrayList = new ArrayList(((HashMap) r0.ᴵˊ).values());
                reentrantReadWriteLock.readLock().unlock();
                int size = arrayList.size();
                int i = 0;
                int i2 = 0;
                while (i2 < size) {
                    int i3 = i2 + 1;
                    AbstractC1679 abstractC1679 = (AbstractC1679) arrayList.get(i2);
                    try {
                        abstractC1679.close();
                    } catch (IOException e) {
                        interfaceC5360.mo4097(Long.valueOf(abstractC1679.f6813.f6685), e, "Caught exception while closing TreeConnect with id: {}");
                    }
                    i2 = i3;
                }
                ArrayList arrayList2 = this.f12709;
                int size2 = arrayList2.size();
                while (i < size2) {
                    Object obj = arrayList2.get(i);
                    i++;
                    C3304 c3304 = (C3304) obj;
                    interfaceC5360.mo4102(Long.valueOf(c3304.f12707), Long.valueOf(this.f12707), "Logging off nested session {} for session {}");
                    try {
                        c3304.m7115();
                    } catch (TransportException unused) {
                        interfaceC5360.mo4084(Long.valueOf(c3304.f12707), "Caught exception while logging off nested session {}");
                    }
                }
                C2762 m7113 = m7113(new AbstractC1179(4, (EnumC1175) ((C1417) c3602.f14088.f9920).f5547, EnumC1189.f4615, this.f12707, 0L));
                long j = c3602.f14086.f11364;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                ⁱˊ r4 = TransportException.f3098;
                C2503 c2503 = (C2503) ﾞᴵ.ﹳᐧ(m7113, j);
                if (EnumC3571.m7527(((C1181) ((InterfaceC2655) ((ᵎﹶ) c2503).ʾˋ)).f4580)) {
                    return;
                }
                throw new SMBApiException((C1181) ((InterfaceC2655) ((ᵎﹶ) c2503).ʾˋ), "Could not logoff session <<" + this.f12707 + ">>");
            } catch (Throwable th) {
                reentrantReadWriteLock.readLock().unlock();
                throw th;
            }
        } finally {
            c4269.f15842.ˊʻ(new C4268(this.f12707));
        }
    }
}
