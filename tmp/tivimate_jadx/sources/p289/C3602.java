package p289;

import com.hierynomus.mssmb2.SMBApiException;
import com.hierynomus.protocol.transport.TransportException;
import com.hierynomus.spnego.SpnegoException;
import com.parse.ٴʼ;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import javax.net.SocketFactory;
import p033.AbstractC1179;
import p033.C1181;
import p033.C1184;
import p033.EnumC1175;
import p033.EnumC1176;
import p033.EnumC1189;
import p035.AbstractC1220;
import p052.C1417;
import p101.InterfaceC1908;
import p111.C1957;
import p125.C2131;
import p125.C2133;
import p154.C2487;
import p154.C2492;
import p154.C2496;
import p154.EnumC2507;
import p164.C2584;
import p170.C2617;
import p170.C2618;
import p173.InterfaceC2655;
import p174.AbstractRunnableC2657;
import p183.C2760;
import p183.C2762;
import p197.AbstractC2901;
import p197.C2900;
import p207.AbstractC2934;
import p207.AbstractC2936;
import p207.EnumC2933;
import p209.C2971;
import p209.C2972;
import p229.C3125;
import p250.C3304;
import p250.C3305;
import p262.C3433;
import p284.EnumC3571;
import p317.AbstractC3914;
import p317.InterfaceC3911;
import p344.C4269;
import p344.C4270;
import p367.InterfaceC4499;
import p378.C4540;
import p406.AbstractC4831;
import p406.C4832;
import p449.AbstractC5359;
import p449.InterfaceC5360;
import p450.C5362;
import p451.C5363;
import ʽⁱ.ᵎﹶ;
import ˈˆ.ﾞᴵ;
import ˊⁱ.ˑﹳ;
import ـˎ.ˈ;
import ٴﾞ.ˆʾ;
import ᵎˉ.ⁱˊ;
import ᵢ.ﹳٴ;
import ﹳˋ.ʼˎ;

/* renamed from: ٴٴ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3602 extends ᵎﹶ implements Closeable {

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public static final InterfaceC5360 f14079 = AbstractC5359.m10750(C3602.class);

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public static final ˑﹳ f14080;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C3125 f14081;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final ReentrantLock f14082;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C3125 f14083;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public String f14084;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public C3433 f14085;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final C2971 f14086;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final ˈ f14087;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C2617 f14088;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final ﹳٴ f14089;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final C2617 f14090;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final C2972 f14091;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final C4269 f14092;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public int f14093;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        InterfaceC1908[] interfaceC1908Arr = {new ˆʾ(6), new Object()};
        ˑﹳ r0 = new ˑﹳ(13, false);
        r0.ᴵˊ = interfaceC1908Arr;
        f14080 = r0;
    }

    public C3602(C2971 c2971, C2972 c2972, C4269 c4269) {
        super(4);
        this.f14081 = new C3125(8);
        this.f14083 = new C3125(8);
        ﹳٴ r0 = new ﹳٴ(15, false);
        r0.ᴵˊ = new ReentrantReadWriteLock();
        r0.ʽʽ = new HashMap();
        r0.ˈٴ = new HashMap();
        this.f14089 = r0;
        this.f14087 = new ˈ(6);
        this.f14082 = new ReentrantLock();
        this.f14086 = c2971;
        this.f14091 = c2972;
        ʼˎ r6 = c2971.f11359;
        ٴʼ r02 = new ٴʼ(new ˈ(27), this, f14080, 8);
        r6.getClass();
        this.f14090 = new C2617(c2971.f11356, c2971.f11355, r02);
        this.f14092 = c4269;
        c4269.m8650(this);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        C4269 c4269 = this.f14092;
        C2617 c2617 = this.f14090;
        InterfaceC5360 interfaceC5360 = f14079;
        if (((AtomicInteger) ((ᵎﹶ) this).ʾˋ).decrementAndGet() <= 0) {
            try {
                C3125 c3125 = this.f14081;
                ReentrantLock reentrantLock = (ReentrantLock) c3125.f11943;
                reentrantLock.lock();
                try {
                    ArrayList arrayList = new ArrayList(((HashMap) c3125.f11941).values());
                    reentrantLock.unlock();
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        C3304 c3304 = (C3304) obj;
                        try {
                            c3304.m7115();
                        } catch (IOException e) {
                            interfaceC5360.mo4085(Long.valueOf(c3304.f12707), e);
                        }
                    }
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            } finally {
                c2617.m5870();
                interfaceC5360.mo4100(this.f14084, "Closed connection to {}");
                c4269.f15842.ˊʻ(new C4270(this.f14093, this.f14084));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [ʼﹳ.ˉˆ, ʽⁱ.ᵎﹶ, ˊʾ.ˏי] */
    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final C2496 m7560(long j, byte[] bArr) {
        EnumC1175 enumC1175 = (EnumC1175) ((C1417) this.f14088.f9920).f5547;
        EnumSet of = EnumSet.of(EnumC2507.f9534);
        EnumSet enumSet = (EnumSet) this.f14088.f9917;
        ?? abstractC1179 = new AbstractC1179(25, enumC1175, EnumC1189.f4612);
        abstractC1179.f9510 = enumC1175;
        abstractC1179.f9512 = (byte) AbstractC3914.m8088(of);
        abstractC1179.f9509 = AbstractC3914.m8088(enumSet);
        abstractC1179.f9513 = bArr;
        ((C1181) ((InterfaceC2655) ((ᵎﹶ) abstractC1179).ʾˋ)).f4587 = j;
        C2762 m7566 = m7566(abstractC1179);
        long j2 = this.f14086.f11364;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        ⁱˊ r0 = TransportException.f3098;
        return (C2496) ((AbstractC1179) ﾞᴵ.ﹳᐧ(m7566, j2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v18, types: [ʽⁱ.ᵎﹶ, ʾʾ.ﹳٴ] */
    /* renamed from: ʽˑ, reason: contains not printable characters */
    public final void m7561(String str) {
        AbstractC1179 abstractC1179;
        C2617 c2617 = this.f14090;
        if (c2617.m5877()) {
            throw new IllegalStateException(AbstractC1220.m3771("This connection is already connected to ", this.f14084));
        }
        this.f14084 = str;
        this.f14093 = 445;
        InetSocketAddress inetSocketAddress = new InetSocketAddress(str, 445);
        String hostString = inetSocketAddress.getHostString();
        Socket createSocket = ((SocketFactory) c2617.f9920).createSocket(hostString, inetSocketAddress.getPort());
        c2617.f9916 = createSocket;
        createSocket.setSoTimeout(c2617.f9918);
        c2617.f9917 = new BufferedOutputStream(((Socket) c2617.f9916).getOutputStream(), 9000);
        InputStream inputStream = ((Socket) c2617.f9916).getInputStream();
        ٴʼ r4 = (ٴʼ) c2617.f9914;
        C2618 c2618 = new C2618(hostString, inputStream, (InterfaceC1908) r4.ˈٴ, (C3602) r4.ʽʽ);
        c2617.f9912 = c2618;
        InterfaceC5360 interfaceC5360 = AbstractRunnableC2657.f10086;
        Thread thread = c2618.f10089;
        interfaceC5360.mo4098(thread.getName(), "Starting PacketReader on thread: {}");
        thread.start();
        int i = 3;
        C3433 c3433 = new C3433(i);
        c3433.f13458 = new AtomicLong(0L);
        c3433.f13456 = new Semaphore(1);
        this.f14085 = c3433;
        C2971 c2971 = this.f14086;
        UUID uuid = c2971.f11361;
        EnumSet enumSet = c2971.f11367;
        C2617 c26172 = new C2617(i);
        UUID.randomUUID();
        c26172.f9916 = uuid;
        c26172.f9913 = new byte[0];
        c26172.f9915 = str;
        c26172.f9917 = EnumSet.of(EnumC1176.f4567);
        this.f14088 = c26172;
        EnumSet copyOf = EnumSet.copyOf((Collection) enumSet);
        String str2 = this.f14084;
        InterfaceC5360 interfaceC53602 = f14079;
        interfaceC53602.mo4090(copyOf, str2, "Negotiating dialects {} with server {}");
        if (c2971.f11369) {
            EnumSet copyOf2 = EnumSet.copyOf((Collection) enumSet);
            ?? r11 = new ᵎﹶ(new Object());
            r11.f6011 = copyOf2;
            long j = this.f14085.m7338(1)[0];
            if (j != 0) {
                throw new IllegalStateException("The SMBv1 SMB_COM_NEGOTIATE packet needs to be the first packet sent.");
            }
            C3601 c3601 = new C3601(r11, j, UUID.randomUUID());
            this.f14089.ˈٴ(c3601);
            c2617.m5869(r11);
            C2760 c2760 = c3601.f14077;
            c2760.getClass();
            new AtomicBoolean(false);
            new ReentrantReadWriteLock();
            long j2 = c2971.f11364;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            ⁱˊ r3 = TransportException.f3098;
            TimeUnit timeUnit2 = TimeUnit.MILLISECONDS;
            ⁱˊ r42 = TransportException.f3098;
            try {
                Object m6159 = c2760.m6159(j2, timeUnit2);
                if (m6159 == null) {
                    throw ((ˋⁱ.ﾞᴵ) c2760.f10513).ᵢˏ(new TimeoutException("Timeout expired"));
                }
                AbstractC1179 abstractC11792 = (AbstractC1179) m6159;
                if (!(abstractC11792 instanceof C2492)) {
                    throw new IllegalStateException("Expected a SMB2 NEGOTIATE Response to our SMB_COM_NEGOTIATE, but got: " + abstractC11792);
                }
                C2492 c2492 = (C2492) abstractC11792;
                EnumC1175 enumC1175 = c2492.f9496;
                abstractC1179 = c2492;
                if (enumC1175 == EnumC1175.f4562) {
                    abstractC1179 = m7562();
                }
            } catch (Throwable th) {
                try {
                    throw new ExecutionException(th);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    throw r42.ᵔʾ(e);
                } catch (ExecutionException e2) {
                    e = e2;
                    throw r42.ᵔʾ(e);
                } catch (TimeoutException e3) {
                    e = e3;
                    throw r42.ᵔʾ(e);
                }
            }
        } else {
            abstractC1179 = m7562();
        }
        if (!(abstractC1179 instanceof C2492)) {
            throw new IllegalStateException("Expected a SMB2 NEGOTIATE Response, but got: " + abstractC1179);
        }
        C2492 c24922 = (C2492) abstractC1179;
        if (!EnumC3571.m7527(((C1181) ((InterfaceC2655) ((ᵎﹶ) c24922).ʾˋ)).f4580)) {
            throw new SMBApiException((C1181) ((InterfaceC2655) ((ᵎﹶ) c24922).ʾˋ), "Failure during dialect negotiation");
        }
        C2617 c26173 = this.f14088;
        c26173.getClass();
        c26173.f9914 = c24922.f9493;
        EnumSet m8087 = AbstractC3914.m8087(c24922.f9498, EnumC1176.class);
        c26173.f9912 = m8087;
        EnumC1175 enumC11752 = c24922.f9496;
        int i2 = c24922.f9495;
        int i3 = c24922.f9497;
        int i4 = c24922.f9499;
        boolean contains = m8087.contains(EnumC1176.f4565);
        C1417 c1417 = new C1417((byte) 0, 2);
        c1417.f5547 = enumC11752;
        if (!contains) {
            i2 = Math.max(i2, 65536);
        }
        c1417.f5548 = i2;
        if (!contains) {
            i3 = Math.max(i3, 65536);
        }
        c1417.f5545 = i3;
        if (!contains) {
            i4 = Math.max(i4, 65536);
        }
        c1417.f5546 = i4;
        c26173.f9920 = c1417;
        c26173.f9918 = c24922.f9494;
        System.currentTimeMillis();
        C5363 c5363 = c24922.f9492;
        c5363.getClass();
        TimeUnit.MILLISECONDS.convert((c5363.f20403 - 116444736000000000L) * 100, TimeUnit.NANOSECONDS);
        interfaceC53602.mo4098(this.f14088, "Negotiated the following connection settings: {}");
        interfaceC53602.mo4100(this.f14084, "Successfully connected to: {}");
    }

    /* renamed from: ˈـ, reason: contains not printable characters */
    public final AbstractC1179 m7562() {
        C2971 c2971 = this.f14086;
        EnumSet copyOf = EnumSet.copyOf((Collection) c2971.f11367);
        UUID uuid = (UUID) this.f14088.f9916;
        C2487 c2487 = new C2487(36, EnumC1175.f4561, EnumC1189.f4622, 0L, 0L);
        c2487.f9483 = copyOf;
        c2487.f9481 = uuid;
        C2762 m7566 = m7566(c2487);
        long j = c2971.f11364;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        ⁱˊ r3 = TransportException.f3098;
        return (AbstractC1179) ﾞᴵ.ﹳᐧ(m7566, j);
    }

    /* JADX WARN: Type inference failed for: r8v0, types: [ﹳˋ.ʼˎ, ᵢᴵ.ﹳٴ] */
    /* renamed from: ˋˊ, reason: contains not printable characters */
    public final InterfaceC4499 m7563(ﹳٴ r12) {
        C2971 c2971 = this.f14086;
        c2971.getClass();
        ArrayList arrayList = new ArrayList(new ArrayList(c2971.f11366));
        ArrayList arrayList2 = new ArrayList();
        byte[] bArr = (byte[]) this.f14088.f9913;
        int i = 0;
        if (Arrays.copyOf(bArr, bArr.length).length > 0) {
            C4832 c4832 = new C4832();
            byte[] bArr2 = (byte[]) this.f14088.f9913;
            try {
                C5362 c5362 = new C5362((C4540) new ʼˎ(23), new C2584(2, new AbstractC2901(Arrays.copyOf(bArr2, bArr2.length), true, C2900.f10933)));
                try {
                    C2131 c2131 = (C2131) c5362.m10758();
                    if (c2131.f11101.f11118 != EnumC2933.f11096) {
                        throw new Exception("Incorrect GSS-API ASN.1 token received, expected to find an [APPLICATION 0], not: " + c2131);
                    }
                    ArrayList arrayList3 = ((C2133) c2131.m5095(AbstractC2936.f11108)).f8323;
                    AbstractC2934 abstractC2934 = (AbstractC2934) arrayList3.get(0);
                    if (!(abstractC2934 instanceof C1957)) {
                        throw new Exception("Expected to find the SPNEGO OID (" + AbstractC4831.f18129 + "), not: " + abstractC2934);
                    }
                    c4832.m8661((AbstractC2934) arrayList3.get(1));
                    c5362.close();
                    arrayList2 = (ArrayList) c4832.f18132;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } finally {
                    }
                }
            } catch (IOException e) {
                throw new Exception("Could not read NegTokenInit from buffer", e);
            }
        }
        ArrayList arrayList4 = new ArrayList(arrayList);
        int size = arrayList4.size();
        while (i < size) {
            Object obj = arrayList4.get(i);
            i++;
            InterfaceC3911 interfaceC3911 = (InterfaceC3911) obj;
            if (arrayList2.isEmpty() || arrayList2.contains(new C1957(interfaceC3911.getName()))) {
                InterfaceC4499 interfaceC4499 = (InterfaceC4499) interfaceC3911.mo8085();
                if (interfaceC4499.mo9068(r12)) {
                    return interfaceC4499;
                }
            }
        }
        throw new RuntimeException("Could not find a configured authenticator for mechtypes: " + arrayList2 + " and authentication context: " + r12);
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public final byte[] m7564(InterfaceC4499 interfaceC4499, ﹳٴ r2, byte[] bArr, C3304 c3304) {
        C1184 mo9069 = interfaceC4499.mo9069(r2, bArr);
        if (mo9069 == null) {
            return null;
        }
        this.f14088.getClass();
        this.f14088.getClass();
        byte[] bArr2 = mo9069.f4595;
        byte[] bArr3 = mo9069.f4594;
        if (bArr3 == null) {
            return bArr2;
        }
        C3305 c3305 = c3304.f12713;
        if (c3305.f12721.m3690()) {
            throw new IllegalStateException("Cannot set a signing key (yet) for SMB3.x");
        }
        c3305.f12718 = "HmacSHA256";
        c3305.f12719 = bArr3;
        return bArr2;
    }

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public final C3304 m7565(ﹳٴ r19) {
        InterfaceC2655 interfaceC2655;
        InterfaceC5360 interfaceC5360;
        C2971 c2971 = this.f14086;
        try {
            InterfaceC4499 m7563 = m7563(r19);
            String str = (String) r19.ᴵˊ;
            m7563.mo9067(c2971);
            C3304 c3304 = new C3304(this, r19, this.f14092, this.f14091.f11373, c2971.f11363);
            byte[] bArr = (byte[]) this.f14088.f9913;
            C2496 m7560 = m7560(0L, m7564(m7563, r19, Arrays.copyOf(bArr, bArr.length), c3304));
            long j = ((C1181) ((InterfaceC2655) ((ᵎﹶ) m7560).ʾˋ)).f4587;
            C3125 c3125 = this.f14083;
            if (j != 0) {
                Long valueOf = Long.valueOf(j);
                ReentrantLock reentrantLock = (ReentrantLock) c3125.f11943;
                reentrantLock.lock();
                try {
                    ((HashMap) c3125.f11941).put(valueOf, c3304);
                    reentrantLock.unlock();
                } finally {
                }
            }
            while (true) {
                try {
                    interfaceC2655 = (InterfaceC2655) ((ᵎﹶ) m7560).ʾˋ;
                    long j2 = ((C1181) interfaceC2655).f4580;
                    interfaceC5360 = f14079;
                    if (j2 != 3221225494L) {
                        break;
                    }
                    interfaceC5360.mo4090(str, m7563, "More processing required for authentication of {} using {}");
                    m7560 = m7560(j, m7564(m7563, r19, m7560.f9513, c3304));
                } catch (Throwable th) {
                    if (j != 0) {
                        c3125.m6854(Long.valueOf(j));
                    }
                    throw th;
                }
            }
            if (((C1181) interfaceC2655).f4580 != 0) {
                throw new SMBApiException((C1181) ((InterfaceC2655) ((ᵎﹶ) m7560).ʾˋ), String.format("Authentication failed for '%s' using %s", str, m7563));
            }
            c3304.f12707 = ((C1181) interfaceC2655).f4587;
            byte[] bArr2 = m7560.f9513;
            if (bArr2 != null) {
                m7564(m7563, r19, bArr2, c3304);
            }
            c3304.m7112(m7560);
            interfaceC5360.mo4087(str, this.f14084, Long.valueOf(c3304.f12707));
            C3125 c31252 = this.f14081;
            Long valueOf2 = Long.valueOf(c3304.f12707);
            ((ReentrantLock) c31252.f11943).lock();
            try {
                ((HashMap) c31252.f11941).put(valueOf2, c3304);
                if (j != 0) {
                    c3125.m6854(Long.valueOf(j));
                }
                return c3304;
            } finally {
            }
        } catch (SpnegoException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0053 A[Catch: all -> 0x0061, TryCatch #0 {all -> 0x0061, blocks: (B:3:0x0005, B:5:0x000d, B:8:0x0029, B:10:0x0037, B:12:0x0049, B:14:0x0053, B:15:0x0063, B:16:0x00ce, B:25:0x0047), top: B:2:0x0005 }] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object, ˋٴ.ˈ] */
    /* renamed from: ﾞˋ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p183.C2762 m7566(p033.AbstractC1179 r12) {
        /*
            r11 = this;
            java.util.concurrent.locks.ReentrantLock r0 = r11.f14082
            r0.lock()
            ʼﹳ.ˉˆ r1 = r12.mo3692()     // Catch: java.lang.Throwable -> L61
            boolean r1 = r1 instanceof p154.C2506     // Catch: java.lang.Throwable -> L61
            if (r1 != 0) goto Lcd
            ـʾ.ᵔﹳ r1 = r11.f14085     // Catch: java.lang.Throwable -> L61
            java.lang.Object r1 = r1.f13456     // Catch: java.lang.Throwable -> L61
            java.util.concurrent.Semaphore r1 = (java.util.concurrent.Semaphore) r1     // Catch: java.lang.Throwable -> L61
            int r1 = r1.availablePermits()     // Catch: java.lang.Throwable -> L61
            int r2 = r12.mo3696()     // Catch: java.lang.Throwable -> L61
            r3 = 1
            int r2 = r2 - r3
            r4 = 65536(0x10000, float:9.1835E-41)
            int r2 = r2 / r4
            int r2 = java.lang.Math.abs(r2)     // Catch: java.lang.Throwable -> L61
            int r2 = r2 + r3
            ﾞʼ.ﹳٴ r4 = p289.C3602.f14079
            if (r2 <= r3) goto L40
            ˊﹶ.ⁱˊ r5 = r11.f14088     // Catch: java.lang.Throwable -> L61
            ʼﹳ.ˆʾ r6 = p033.EnumC1176.f4565     // Catch: java.lang.Throwable -> L61
            java.lang.Object r5 = r5.f9912     // Catch: java.lang.Throwable -> L61
            java.util.EnumSet r5 = (java.util.EnumSet) r5     // Catch: java.lang.Throwable -> L61
            boolean r5 = r5.contains(r6)     // Catch: java.lang.Throwable -> L61
            if (r5 != 0) goto L40
            java.lang.String r2 = "Connection to {} does not support multi-credit requests."
            java.lang.String r5 = r11.f14084     // Catch: java.lang.Throwable -> L61
            r4.mo4094(r5, r2)     // Catch: java.lang.Throwable -> L61
        L3e:
            r2 = r3
            goto L49
        L40:
            if (r2 >= r1) goto L43
            goto L49
        L43:
            if (r2 <= r3) goto L3e
            if (r1 <= r3) goto L3e
            int r2 = r1 + (-1)
        L49:
            ˋʼ.ⁱˊ r5 = r12.ˊᵔ()     // Catch: java.lang.Throwable -> L61
            ʼﹳ.ٴﹶ r5 = (p033.C1181) r5     // Catch: java.lang.Throwable -> L61
            r5.f4588 = r2     // Catch: java.lang.Throwable -> L61
            if (r1 != 0) goto L63
            java.lang.String r5 = "There are no credits left to send {}, will block until there are more credits available."
            ˋʼ.ⁱˊ r6 = r12.ˊᵔ()     // Catch: java.lang.Throwable -> L61
            ʼﹳ.ٴﹶ r6 = (p033.C1181) r6     // Catch: java.lang.Throwable -> L61
            ʼﹳ.ﾞʻ r6 = r6.f4583     // Catch: java.lang.Throwable -> L61
            r4.mo4096(r6, r5)     // Catch: java.lang.Throwable -> L61
            goto L63
        L61:
            r12 = move-exception
            goto Ld7
        L63:
            ـʾ.ᵔﹳ r5 = r11.f14085     // Catch: java.lang.Throwable -> L61
            long[] r5 = r5.m7338(r2)     // Catch: java.lang.Throwable -> L61
            ˋʼ.ⁱˊ r6 = r12.ˊᵔ()     // Catch: java.lang.Throwable -> L61
            ʼﹳ.ٴﹶ r6 = (p033.C1181) r6     // Catch: java.lang.Throwable -> L61
            r7 = 0
            r8 = r5[r7]     // Catch: java.lang.Throwable -> L61
            r6.f4591 = r8     // Catch: java.lang.Throwable -> L61
            java.lang.String r6 = "Granted {} (out of {}) credits to {}"
            java.lang.Integer r8 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> L61
            java.lang.Integer r9 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L61
            r10 = 3
            java.lang.Object[] r10 = new java.lang.Object[r10]     // Catch: java.lang.Throwable -> L61
            r10[r7] = r8     // Catch: java.lang.Throwable -> L61
            r10[r3] = r9     // Catch: java.lang.Throwable -> L61
            r3 = 2
            r10[r3] = r12     // Catch: java.lang.Throwable -> L61
            r4.mo4086(r6, r10)     // Catch: java.lang.Throwable -> L61
            ˋʼ.ⁱˊ r3 = r12.ˊᵔ()     // Catch: java.lang.Throwable -> L61
            ʼﹳ.ٴﹶ r3 = (p033.C1181) r3     // Catch: java.lang.Throwable -> L61
            int r1 = 512 - r1
            int r1 = r1 - r2
            int r1 = java.lang.Math.max(r1, r2)     // Catch: java.lang.Throwable -> L61
            r3.f4579 = r1     // Catch: java.lang.Throwable -> L61
            ٴٴ.ʽ r1 = new ٴٴ.ʽ     // Catch: java.lang.Throwable -> L61
            ʼﹳ.ˉˆ r2 = r12.mo3692()     // Catch: java.lang.Throwable -> L61
            r3 = r5[r7]     // Catch: java.lang.Throwable -> L61
            java.util.UUID r5 = java.util.UUID.randomUUID()     // Catch: java.lang.Throwable -> L61
            r1.<init>(r2, r3, r5)     // Catch: java.lang.Throwable -> L61
            ᵢ.ﹳٴ r2 = r11.f14089     // Catch: java.lang.Throwable -> L61
            r2.ˈٴ(r1)     // Catch: java.lang.Throwable -> L61
            ٴٴ.ﹳٴ r2 = new ٴٴ.ﹳٴ     // Catch: java.lang.Throwable -> L61
            ˋʼ.ⁱˊ r3 = r12.ˊᵔ()     // Catch: java.lang.Throwable -> L61
            ʼﹳ.ٴﹶ r3 = (p033.C1181) r3     // Catch: java.lang.Throwable -> L61
            long r3 = r3.f4587     // Catch: java.lang.Throwable -> L61
            r2.<init>(r11, r1, r3)     // Catch: java.lang.Throwable -> L61
            ˋٴ.ⁱˊ r3 = new ˋٴ.ⁱˊ     // Catch: java.lang.Throwable -> L61
            ˋٴ.ʽ r1 = r1.f14077     // Catch: java.lang.Throwable -> L61
            r1.getClass()     // Catch: java.lang.Throwable -> L61
            ˋٴ.ˈ r4 = new ˋٴ.ˈ     // Catch: java.lang.Throwable -> L61
            r4.<init>()     // Catch: java.lang.Throwable -> L61
            r4.f10519 = r1     // Catch: java.lang.Throwable -> L61
            r3.<init>(r4, r2)     // Catch: java.lang.Throwable -> L61
            goto Lce
        Lcd:
            r3 = 0
        Lce:
            ˊﹶ.ⁱˊ r1 = r11.f14090     // Catch: java.lang.Throwable -> L61
            r1.m5869(r12)     // Catch: java.lang.Throwable -> L61
            r0.unlock()
            return r3
        Ld7:
            r0.unlock()
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: p289.C3602.m7566(ʼﹳ.ˉˆ):ˋٴ.ⁱˊ");
    }
}
