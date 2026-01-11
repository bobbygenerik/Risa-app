package p292;

import androidx.leanback.widget.ʻٴ;
import java.io.IOException;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import p027.C1084;
import p052.C1408;
import p121.AbstractC2026;
import p137.AbstractC2305;
import p152.AbstractC2444;
import p208.AbstractC2944;
import p208.AbstractC2960;
import p208.C2940;
import p208.C2945;
import p208.C2946;
import p208.C2948;
import p208.C2952;
import p208.C2967;
import p208.EnumC2956;
import p271.AbstractC3480;
import p391.C4634;
import p394.AbstractC4710;
import p394.AbstractC4712;
import p394.AbstractC4713;
import p430.AbstractC5096;
import p430.AbstractC5099;
import p430.C5109;
import p452.C5365;
import ˉˆ.ʿ;

/* renamed from: ٴᵎ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3640 implements InterfaceC3635 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C2967 f14233;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f14234;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final ʿ f14235;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f14236;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public C3630 f14237;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final C5109 f14238 = new C5109();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f14239;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C3650 f14240;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean f14241;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public C2952 f14242;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean f14243;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3642 f14244;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C5365 f14245;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public C1408 f14246;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f14247;

    public C3640(C5365 c5365, C3642 c3642, int i, int i2, int i3, int i4, boolean z, boolean z2, C2967 c2967, ʿ r10, C3650 c3650) {
        this.f14245 = c5365;
        this.f14244 = c3642;
        this.f14234 = i;
        this.f14236 = i2;
        this.f14239 = i3;
        this.f14247 = i4;
        this.f14241 = z;
        this.f14243 = z2;
        this.f14233 = c2967;
        this.f14235 = r10;
        this.f14240 = c3650;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0081 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0082  */
    @Override // p292.InterfaceC3635
    /* renamed from: ʼˎ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p292.InterfaceC3643 mo7621() {
        /*
            r6 = this;
            ٴᵎ.ﹳٴ r0 = r6.f14240
            ٴᵎ.ᵔﹳ r0 = r0.m7655()
            r1 = 0
            if (r0 != 0) goto Lc
        L9:
            r2 = r1
            goto L7f
        Lc:
            ٴᵎ.ﹳٴ r2 = r6.f14240
            boolean r2 = r2.m7657()
            boolean r2 = r0.m7642(r2)
            monitor-enter(r0)
            if (r2 != 0) goto L29
            boolean r2 = r0.f14306     // Catch: java.lang.Throwable -> L26
            r3 = 1
            r2 = r2 ^ r3
            r0.f14306 = r3     // Catch: java.lang.Throwable -> L26
            ٴᵎ.ﹳٴ r3 = r6.f14240     // Catch: java.lang.Throwable -> L26
            java.net.Socket r3 = r3.m7658()     // Catch: java.lang.Throwable -> L26
            goto L47
        L26:
            r1 = move-exception
            goto La8
        L29:
            boolean r2 = r0.f14306     // Catch: java.lang.Throwable -> L26
            r3 = 0
            if (r2 != 0) goto L3e
            ˎᵢ.ˊʻ r2 = r0.f14294     // Catch: java.lang.Throwable -> L26
            ˎᵢ.ﹳٴ r2 = r2.f11246     // Catch: java.lang.Throwable -> L26
            ˎᵢ.ʼᐧ r2 = r2.f11337     // Catch: java.lang.Throwable -> L26
            boolean r2 = r6.mo7626(r2)     // Catch: java.lang.Throwable -> L26
            if (r2 != 0) goto L3b
            goto L3e
        L3b:
            r2 = r3
            r3 = r1
            goto L47
        L3e:
            ٴᵎ.ﹳٴ r2 = r6.f14240     // Catch: java.lang.Throwable -> L26
            java.net.Socket r2 = r2.m7658()     // Catch: java.lang.Throwable -> L26
            r5 = r3
            r3 = r2
            r2 = r5
        L47:
            monitor-exit(r0)
            ٴᵎ.ﹳٴ r4 = r6.f14240
            ٴᵎ.ᵔﹳ r4 = r4.m7655()
            if (r4 == 0) goto L60
            if (r3 != 0) goto L58
            ٴᵎ.ʽﹳ r2 = new ٴᵎ.ʽﹳ
            r2.<init>(r0)
            goto L7f
        L58:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Check failed."
            r0.<init>(r1)
            throw r0
        L60:
            if (r3 == 0) goto L65
            p394.AbstractC4712.m9442(r3)
        L65:
            ٴᵎ.ﹳٴ r0 = r6.f14240
            r0.getClass()
            ٴᵎ.ﹳٴ r0 = r6.f14240
            r0.getClass()
            if (r3 == 0) goto L77
            ٴᵎ.ﹳٴ r0 = r6.f14240
            r0.getClass()
            goto L9
        L77:
            if (r2 == 0) goto L9
            ٴᵎ.ﹳٴ r0 = r6.f14240
            r0.getClass()
            goto L9
        L7f:
            if (r2 == 0) goto L82
            return r2
        L82:
            ٴᵎ.ʽﹳ r0 = r6.m7627(r1, r1)
            if (r0 == 0) goto L89
            return r0
        L89:
            ﹶˈ.ᵔᵢ r0 = r6.f14238
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L9a
            ﹶˈ.ᵔᵢ r0 = r6.f14238
            java.lang.Object r0 = r0.removeFirst()
            ٴᵎ.ـˆ r0 = (p292.InterfaceC3643) r0
            return r0
        L9a:
            ٴᵎ.ˑﹳ r0 = r6.m7629()
            java.util.List r1 = r0.f14260
            ٴᵎ.ʽﹳ r1 = r6.m7627(r0, r1)
            if (r1 == 0) goto La7
            return r1
        La7:
            return r0
        La8:
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p292.C3640.mo7621():ٴᵎ.ـˆ");
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0036, code lost:
    
        if ((r7.f14299 != null) == false) goto L19;
     */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p292.C3634 m7627(p292.C3641 r11, java.util.List r12) {
        /*
            r10 = this;
            ٴᵎ.יـ r0 = r10.f14244
            ٴᵎ.ﹳٴ r1 = r10.f14240
            boolean r1 = r1.m7657()
            ˎᵢ.ﹳٴ r2 = r10.f14233
            ٴᵎ.ﹳٴ r3 = r10.f14240
            r4 = 0
            r5 = 1
            if (r11 == 0) goto L18
            boolean r6 = r11.mo7620()
            if (r6 == 0) goto L18
            r6 = r5
            goto L19
        L18:
            r6 = r4
        L19:
            java.util.concurrent.ConcurrentLinkedQueue r0 = r0.f14272
            java.util.Iterator r0 = r0.iterator()
        L1f:
            boolean r7 = r0.hasNext()
            r8 = 0
            if (r7 == 0) goto L64
            java.lang.Object r7 = r0.next()
            ٴᵎ.ᵔﹳ r7 = (p292.C3648) r7
            monitor-enter(r7)
            if (r6 == 0) goto L3c
            ᵔᐧ.ᵔʾ r9 = r7.f14299     // Catch: java.lang.Throwable -> L3a
            if (r9 == 0) goto L35
            r9 = r5
            goto L36
        L35:
            r9 = r4
        L36:
            if (r9 != 0) goto L3c
        L38:
            r9 = r4
            goto L47
        L3a:
            r11 = move-exception
            goto L62
        L3c:
            boolean r9 = r7.m7645(r2, r12)     // Catch: java.lang.Throwable -> L3a
            if (r9 != 0) goto L43
            goto L38
        L43:
            r3.m7668(r7)     // Catch: java.lang.Throwable -> L3a
            r9 = r5
        L47:
            monitor-exit(r7)
            if (r9 == 0) goto L1f
            boolean r9 = r7.m7642(r1)
            if (r9 == 0) goto L51
            goto L65
        L51:
            monitor-enter(r7)
            r7.f14306 = r5     // Catch: java.lang.Throwable -> L5f
            java.net.Socket r8 = r3.m7658()     // Catch: java.lang.Throwable -> L5f
            monitor-exit(r7)
            if (r8 == 0) goto L1f
            p394.AbstractC4712.m9442(r8)
            goto L1f
        L5f:
            r11 = move-exception
            monitor-exit(r7)
            throw r11
        L62:
            monitor-exit(r7)
            throw r11
        L64:
            r7 = r8
        L65:
            if (r7 != 0) goto L68
            return r8
        L68:
            if (r11 == 0) goto L75
            ˎᵢ.ˊʻ r12 = r11.f14253
            r10.f14242 = r12
            java.net.Socket r11 = r11.f14264
            if (r11 == 0) goto L75
            p394.AbstractC4712.m9442(r11)
        L75:
            ٴᵎ.ﹳٴ r11 = r10.f14240
            r11.getClass()
            ٴᵎ.ﹳٴ r11 = r10.f14240
            r11.m7649(r7)
            ٴᵎ.ʽﹳ r11 = new ٴᵎ.ʽﹳ
            r11.<init>(r7)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: p292.C3640.m7627(ٴᵎ.ˑﹳ, java.util.List):ٴᵎ.ʽﹳ");
    }

    @Override // p292.InterfaceC3635
    /* renamed from: ˆʾ */
    public final boolean mo7622(C3648 c3648) {
        C3630 c3630;
        C2952 c2952;
        if (this.f14238.isEmpty() && this.f14242 == null) {
            if (c3648 != null) {
                synchronized (c3648) {
                    c2952 = null;
                    if (c3648.f14301 == 0 && c3648.f14306 && AbstractC4712.m9450(c3648.f14294.f11246.f11337, this.f14233.f11337)) {
                        c2952 = c3648.f14294;
                    }
                }
                if (c2952 != null) {
                    this.f14242 = c2952;
                    return true;
                }
            }
            C1408 c1408 = this.f14246;
            if ((c1408 == null || c1408.f5514 >= c1408.f5515.size()) && (c3630 = this.f14237) != null) {
                return c3630.m7606();
            }
        }
        return true;
    }

    @Override // p292.InterfaceC3635
    /* renamed from: ٴﹶ */
    public final C2967 mo7623() {
        return this.f14233;
    }

    @Override // p292.InterfaceC3635
    /* renamed from: ᵎﹶ */
    public final boolean mo7624() {
        return this.f14240.m7650();
    }

    @Override // p292.InterfaceC3635
    /* renamed from: ᵔᵢ */
    public final C5109 mo7625() {
        return this.f14238;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3641 m7628(C2952 c2952, ArrayList arrayList) {
        EnumC2956 enumC2956 = EnumC2956.f11261;
        C2967 c2967 = c2952.f11246;
        if (c2967.f11332 == null) {
            if (!c2967.f11333.contains(C2946.f11229)) {
                throw new UnknownServiceException("CLEARTEXT communication not enabled for client");
            }
            String str = c2952.f11246.f11337.f11161;
            AbstractC3480 abstractC3480 = AbstractC3480.f13658;
            if (!AbstractC3480.f13658.mo7400(str)) {
                throw new UnknownServiceException(AbstractC2305.m5378("CLEARTEXT communication to ", str, " not permitted by network security policy"));
            }
        } else if (c2967.f11331.contains(enumC2956)) {
            throw new UnknownServiceException("H2_PRIOR_KNOWLEDGE cannot be used with HTTPS");
        }
        C2945 c2945 = null;
        if (c2952.f11245.type() == Proxy.Type.HTTP) {
            C2967 c29672 = c2952.f11246;
            if (c29672.f11332 != null || c29672.f11331.contains(enumC2956)) {
                ʻٴ r0 = new ʻٴ(8);
                r0.ʽʽ = c2952.f11246.f11337;
                r0.ʼᐧ("CONNECT", (AbstractC2944) null);
                C2967 c29673 = c2952.f11246;
                ((C1084) r0.ᴵᵔ).m3436("Host", AbstractC4712.m9441(c29673.f11337, true));
                ((C1084) r0.ᴵᵔ).m3436("Proxy-Connection", "Keep-Alive");
                ((C1084) r0.ᴵᵔ).m3436("User-Agent", "okhttp/5.1.0");
                c2945 = new C2945(r0);
                C2948 c2948 = AbstractC2960.f11302;
                C1084 c1084 = new C1084(3);
                c1084.m3436("Proxy-Authenticate", "OkHttp-Preemptive");
                c1084.m3432();
                c29673.f11340.getClass();
            }
        }
        return new C3641(this.f14245, this.f14244, this.f14234, this.f14236, this.f14239, this.f14247, this.f14241, this.f14240, this, c2952, arrayList, c2945, -1, false);
    }

    /* JADX WARN: Type inference failed for: r2v31, types: [java.util.List, java.lang.Object] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3641 m7629() {
        String str;
        int i;
        List list;
        boolean contains;
        C2952 c2952 = this.f14242;
        if (c2952 != null) {
            this.f14242 = null;
            return m7628(c2952, null);
        }
        C1408 c1408 = this.f14246;
        if (c1408 != null && c1408.f5514 < c1408.f5515.size()) {
            int i2 = c1408.f5514;
            ArrayList arrayList = c1408.f5515;
            if (i2 >= arrayList.size()) {
                throw new NoSuchElementException();
            }
            int i3 = c1408.f5514;
            c1408.f5514 = i3 + 1;
            return m7628((C2952) arrayList.get(i3), null);
        }
        C3630 c3630 = this.f14237;
        if (c3630 == null) {
            c3630 = new C3630(this.f14233, this.f14235, this.f14240, this.f14243);
            this.f14237 = c3630;
        }
        if (!c3630.m7606()) {
            throw new IOException("exhausted all routes");
        }
        if (!c3630.m7606()) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList2 = new ArrayList();
        while (c3630.f14206 < c3630.f14201.size()) {
            C2967 c2967 = c3630.f14205;
            if (c3630.f14206 >= c3630.f14201.size()) {
                throw new SocketException("No route to " + c2967.f11337.f11161 + "; exhausted proxy configurations: " + c3630.f14201);
            }
            List list2 = c3630.f14201;
            int i4 = c3630.f14206;
            c3630.f14206 = i4 + 1;
            Proxy proxy = (Proxy) list2.get(i4);
            C3650 c3650 = c3630.f14199;
            ArrayList arrayList3 = new ArrayList();
            c3630.f14202 = arrayList3;
            if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
                C2940 c2940 = c2967.f11337;
                str = c2940.f11161;
                i = c2940.f11162;
            } else {
                SocketAddress address = proxy.address();
                if (!(address instanceof InetSocketAddress)) {
                    throw new IllegalArgumentException(("Proxy.address() is not an InetSocketAddress: " + address.getClass()).toString());
                }
                InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                InetAddress address2 = inetSocketAddress.getAddress();
                str = address2 == null ? inetSocketAddress.getHostName() : address2.getHostAddress();
                i = inetSocketAddress.getPort();
            }
            if (1 > i || i >= 65536) {
                throw new SocketException("No route to " + str + ':' + i + "; port is out of range");
            }
            if (proxy.type() == Proxy.Type.SOCKS) {
                arrayList3.add(InetSocketAddress.createUnresolved(str, i));
            } else {
                if (AbstractC4713.f17805.f19412.matcher(str).matches()) {
                    list = Collections.singletonList(InetAddress.getByName(str));
                } else {
                    c3650.getClass();
                    c2967.f11339.getClass();
                    try {
                        List m10005 = AbstractC5096.m10005(InetAddress.getAllByName(str));
                        if (m10005.isEmpty()) {
                            throw new UnknownHostException(c2967.f11339 + " returned no addresses for " + str);
                        }
                        c3650.getClass();
                        list = m10005;
                    } catch (NullPointerException e) {
                        UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of ".concat(str));
                        unknownHostException.initCause(e);
                        throw unknownHostException;
                    }
                }
                if (c3630.f14200 && list.size() >= 2) {
                    ArrayList arrayList4 = new ArrayList();
                    ArrayList arrayList5 = new ArrayList();
                    for (Object obj : list) {
                        if (((InetAddress) obj) instanceof Inet6Address) {
                            arrayList4.add(obj);
                        } else {
                            arrayList5.add(obj);
                        }
                    }
                    if (!arrayList4.isEmpty() && !arrayList5.isEmpty()) {
                        byte[] bArr = AbstractC4710.f17800;
                        Iterator it = arrayList4.iterator();
                        Iterator it2 = arrayList5.iterator();
                        C4634 m5056 = AbstractC2026.m5056();
                        while (true) {
                            if (!it.hasNext() && !it2.hasNext()) {
                                break;
                            }
                            if (it.hasNext()) {
                                m5056.add(it.next());
                            }
                            if (it2.hasNext()) {
                                m5056.add(it2.next());
                            }
                        }
                        list = AbstractC2026.m5061(m5056);
                    }
                }
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    arrayList3.add(new InetSocketAddress((InetAddress) it3.next(), i));
                }
            }
            Iterator it4 = c3630.f14202.iterator();
            while (it4.hasNext()) {
                C2952 c29522 = new C2952(c3630.f14205, proxy, (InetSocketAddress) it4.next());
                ʿ r3 = c3630.f14204;
                synchronized (r3) {
                    contains = ((LinkedHashSet) r3.ᴵˊ).contains(c29522);
                }
                if (contains) {
                    c3630.f14203.add(c29522);
                } else {
                    arrayList2.add(c29522);
                }
            }
            if (!arrayList2.isEmpty()) {
                break;
            }
        }
        if (arrayList2.isEmpty()) {
            AbstractC5099.m10033(c3630.f14203, arrayList2);
            c3630.f14203.clear();
        }
        C1408 c14082 = new C1408(arrayList2);
        this.f14246 = c14082;
        if (this.f14240.m7650()) {
            throw new IOException("Canceled");
        }
        if (c14082.f5514 >= arrayList2.size()) {
            throw new NoSuchElementException();
        }
        int i5 = c14082.f5514;
        c14082.f5514 = i5 + 1;
        return m7628((C2952) arrayList2.get(i5), arrayList2);
    }

    @Override // p292.InterfaceC3635
    /* renamed from: ﾞʻ */
    public final boolean mo7626(C2940 c2940) {
        C2940 c29402 = this.f14233.f11337;
        return c2940.f11162 == c29402.f11162 && AbstractC2444.m5562(c2940.f11161, c29402.f11161);
    }
}
