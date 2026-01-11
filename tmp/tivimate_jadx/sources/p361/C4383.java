package p361;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.http2.ConnectionShutdownException;
import p048.AbstractC1380;
import p048.C1376;
import p048.InterfaceC1374;
import p048.InterfaceC1375;
import p164.C2571;
import p164.InterfaceC2576;
import p164.InterfaceC2588;
import p208.C2937;
import p208.C2940;
import p208.C2942;
import p208.C2945;
import p208.C2950;
import p208.EnumC2956;
import p292.C3648;
import p394.AbstractC4712;

/* renamed from: ᵔᐧ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4383 implements InterfaceC1375 {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final List f16274 = AbstractC4712.m9446(new String[]{"connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority"});

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final List f16275 = AbstractC4712.m9446(new String[]{"connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade"});

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C4390 f16276;

    /* renamed from: ˈ, reason: contains not printable characters */
    public volatile C4373 f16277;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final EnumC2956 f16278;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1376 f16279;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3648 f16280;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public volatile boolean f16281;

    public C4383(C2937 c2937, C3648 c3648, C1376 c1376, C4390 c4390) {
        this.f16280 = c3648;
        this.f16279 = c1376;
        this.f16276 = c4390;
        List list = c2937.f11145;
        EnumC2956 enumC2956 = EnumC2956.f11261;
        this.f16278 = list.contains(enumC2956) ? enumC2956 : EnumC2956.f11264;
    }

    @Override // p048.InterfaceC1375
    public final void cancel() {
        this.f16281 = true;
        C4373 c4373 = this.f16277;
        if (c4373 != null) {
            c4373.m8848(9);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x002a, code lost:
    
        if (r3 == false) goto L20;
     */
    @Override // p048.InterfaceC1375
    /* renamed from: ʼˎ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p208.C2959 mo4055(boolean r12) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p361.C4383.mo4055(boolean):ˎᵢ.ᴵˊ");
    }

    @Override // p048.InterfaceC1375
    /* renamed from: ʽ */
    public final void mo4056(C2945 c2945) {
        int i;
        C4373 c4373;
        boolean z;
        if (this.f16277 != null) {
            return;
        }
        boolean z2 = c2945.f11223 != null;
        C2950 c2950 = c2945.f11222;
        ArrayList arrayList = new ArrayList(c2950.size() + 4);
        arrayList.add(new C4394(C4394.f16346, c2945.f11225));
        C2571 c2571 = C4394.f16344;
        C2940 c2940 = c2945.f11226;
        String m6471 = c2940.m6471();
        String m6467 = c2940.m6467();
        if (m6467 != null) {
            m6471 = m6471 + '?' + m6467;
        }
        arrayList.add(new C4394(c2571, m6471));
        String m6485 = c2950.m6485("Host");
        if (m6485 != null) {
            arrayList.add(new C4394(C4394.f16341, m6485));
        }
        arrayList.add(new C4394(C4394.f16345, c2940.f11166));
        int size = c2950.size();
        for (int i2 = 0; i2 < size; i2++) {
            String lowerCase = c2950.m6484(i2).toLowerCase(Locale.US);
            if (!f16274.contains(lowerCase) || (lowerCase.equals("te") && c2950.m6486(i2).equals("trailers"))) {
                arrayList.add(new C4394(lowerCase, c2950.m6486(i2)));
            }
        }
        C4390 c4390 = this.f16276;
        boolean z3 = !z2;
        synchronized (c4390.f16322) {
            synchronized (c4390) {
                try {
                    if (c4390.f16323 > 1073741823) {
                        c4390.m8884(8);
                    }
                    if (c4390.f16314) {
                        throw new ConnectionShutdownException();
                    }
                    i = c4390.f16323;
                    c4390.f16323 = i + 2;
                    c4373 = new C4373(i, c4390, z3, false, null);
                    z = !z2 || c4390.f16318 >= c4390.f16328 || c4373.f16235 >= c4373.f16237;
                    if (c4373.m8850()) {
                        c4390.f16321.put(Integer.valueOf(i), c4373);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            c4390.f16322.m8875(z3, i, arrayList);
        }
        if (z) {
            c4390.f16322.flush();
        }
        this.f16277 = c4373;
        if (this.f16281) {
            this.f16277.m8848(9);
            throw new IOException("Canceled");
        }
        C4378 c4378 = this.f16277.f16234;
        long j = this.f16279.f5415;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        c4378.mo5765(j);
        this.f16277.f16238.mo5765(this.f16279.f5416);
    }

    @Override // p048.InterfaceC1375
    /* renamed from: ˈ */
    public final void mo4057() {
        this.f16277.f16232.close();
    }

    @Override // p048.InterfaceC1375
    /* renamed from: ˑﹳ */
    public final boolean mo4058() {
        boolean z;
        C4373 c4373 = this.f16277;
        if (c4373 == null) {
            return false;
        }
        synchronized (c4373) {
            C4384 c4384 = c4373.f16240;
            if (c4384.f16286) {
                if (c4384.f16284.mo5805()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // p048.InterfaceC1375
    /* renamed from: ᵎﹶ */
    public final InterfaceC1374 mo4059() {
        return this.f16280;
    }

    @Override // p048.InterfaceC1375
    /* renamed from: ᵔᵢ */
    public final long mo4060(C2942 c2942) {
        if (AbstractC1380.m4074(c2942)) {
            return AbstractC4712.m9445(c2942);
        }
        return 0L;
    }

    @Override // p048.InterfaceC1375
    /* renamed from: ⁱˊ */
    public final InterfaceC2576 mo4061(C2945 c2945, long j) {
        return this.f16277.f16232;
    }

    @Override // p048.InterfaceC1375
    /* renamed from: ﹳٴ */
    public final InterfaceC2588 mo4062(C2942 c2942) {
        return this.f16277.f16240;
    }

    @Override // p048.InterfaceC1375
    /* renamed from: ﾞᴵ */
    public final void mo4063() {
        this.f16276.flush();
    }
}
