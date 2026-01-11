package p433;

import android.net.Uri;
import com.google.android.gms.internal.measurement.ˏʻ;
import java.io.EOFException;
import java.math.BigInteger;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import p003.C0783;
import p004.C0800;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p055.C1486;
import p055.C1495;
import p094.C1860;
import p171.C2651;
import p171.InterfaceC2632;
import p254.C3342;
import p266.C3456;
import p266.InterfaceC3462;
import p305.AbstractC3731;
import p305.C3724;
import p305.C3732;
import p372.AbstractC4526;
import ˈˆ.ﾞᴵ;

/* renamed from: ﹶˎ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5130 extends AbstractC4526 {

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public static final AtomicInteger f19353 = new AtomicInteger();

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public boolean f19354;

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public boolean f19355;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final boolean f19356;

    /* renamed from: ʿ, reason: contains not printable characters */
    public final C1860 f19357;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final C3732 f19358;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final Uri f19359;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final int f19360;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public AbstractC0993 f19361;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final C5121 f19362;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final C1486 f19363;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final C5132 f19364;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public volatile boolean f19365;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final C3456 f19366;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public C5125 f19367;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final InterfaceC3462 f19368;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final boolean f19369;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public boolean f19370;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public C5132 f19371;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public final boolean f19372;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public int f19373;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final List f19374;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final int f19375;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final boolean f19376;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final int f19377;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final boolean f19378;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final C3724 f19379;

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public long f19380;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public boolean f19381;

    public C5130(C5121 c5121, InterfaceC3462 interfaceC3462, C3456 c3456, C1495 c1495, boolean z, InterfaceC3462 interfaceC34622, C3456 c34562, boolean z2, Uri uri, List list, int i, Object obj, long j, long j2, long j3, int i2, boolean z3, int i3, boolean z4, boolean z5, C3724 c3724, C1486 c1486, C5132 c5132, C1860 c1860, C3732 c3732, boolean z6, boolean z7, C0783 c0783) {
        super(interfaceC3462, c3456, c1495, i, obj, j, j2, j3);
        this.f19376 = z;
        this.f19360 = i2;
        this.f19380 = z3 ? j2 - j : -9223372036854775807L;
        this.f19377 = i3;
        this.f19366 = c34562;
        this.f19368 = interfaceC34622;
        this.f19355 = c34562 != null;
        this.f19372 = z2;
        this.f19359 = uri;
        this.f19356 = z5;
        this.f19379 = c3724;
        this.f19369 = z4;
        this.f19362 = c5121;
        this.f19374 = list;
        this.f19363 = c1486;
        this.f19364 = c5132;
        this.f19357 = c1860;
        this.f19358 = c3732;
        this.f19354 = z6;
        this.f19378 = z7;
        C0982 c0982 = AbstractC0993.f3977;
        this.f19361 = C0956.f3901;
        this.f19375 = f19353.getAndIncrement();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static byte[] m10089(String str) {
        if (ˏʻ.ˈⁱ(str).startsWith("0x")) {
            str = str.substring(2);
        }
        byte[] byteArray = new BigInteger(str, 16).toByteArray();
        byte[] bArr = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr, (16 - byteArray.length) + length, byteArray.length - length);
        return bArr;
    }

    @Override // p364.InterfaceC4445
    /* renamed from: ʽ */
    public final void mo5106() {
        C5132 c5132;
        this.f19367.getClass();
        if (this.f19371 == null && (c5132 = this.f19364) != null) {
            InterfaceC2632 mo2902 = c5132.f19390.mo2902();
            if ((mo2902 instanceof C3342) || (mo2902 instanceof C0800)) {
                this.f19371 = this.f19364;
                this.f19355 = false;
            }
        }
        C3456 c3456 = this.f19366;
        InterfaceC3462 interfaceC3462 = this.f19368;
        if (this.f19355) {
            interfaceC3462.getClass();
            c3456.getClass();
            m10090(interfaceC3462, c3456, this.f19372, false);
            this.f19373 = 0;
            this.f19355 = false;
        }
        if (this.f19365) {
            return;
        }
        if (!this.f19369) {
            m10090(this.f16907, this.f16905, this.f19376, true);
        }
        this.f19370 = !this.f19365;
    }

    @Override // p364.InterfaceC4445
    /* renamed from: ʽﹳ */
    public final void mo5107() {
        this.f19365 = true;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m10090(InterfaceC3462 interfaceC3462, C3456 c3456, boolean z, boolean z2) {
        C3456 m7363;
        boolean z3;
        long j;
        if (z) {
            z3 = this.f19373 != 0;
            m7363 = c3456;
        } else {
            m7363 = c3456.m7363(this.f19373);
            z3 = false;
        }
        try {
            C2651 m10092 = m10092(interfaceC3462, m7363, z2);
            if (z3) {
                m10092.mo4599(this.f19373, false);
            }
            do {
                try {
                    try {
                        if (this.f19365) {
                            break;
                        }
                    } catch (Throwable th) {
                        this.f19373 = (int) (m10092.f10069 - c3456.f13573);
                        throw th;
                    }
                } catch (EOFException e) {
                    if ((this.f16901.f5940 & 16384) == 0) {
                        throw e;
                    }
                    this.f19371.f19390.mo2908(0L, 0L);
                    j = m10092.f10069;
                }
            } while (this.f19371.f19390.mo2904(m10092, C5132.f19385) == 0);
            j = m10092.f10069;
            this.f19373 = (int) (j - c3456.f13573);
        } finally {
            ﾞᴵ.ﾞᴵ(interfaceC3462);
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean m10091() {
        return this.f19380 != -9223372036854775807L;
    }

    /* JADX WARN: Removed duplicated region for block: B:169:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x02a7  */
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p171.C2651 m10092(p266.InterfaceC3462 r35, p266.C3456 r36, boolean r37) {
        /*
            Method dump skipped, instructions count: 1028
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p433.C5130.m10092(ـˊ.ﾞᴵ, ـˊ.ᵔᵢ, boolean):ˊﾞ.ﾞʻ");
    }

    @Override // p372.AbstractC4526
    /* renamed from: ⁱˊ */
    public final boolean mo9087() {
        throw null;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int m10093(int i) {
        AbstractC3731.m7857(!this.f19354);
        if (i >= this.f19361.size()) {
            return 0;
        }
        return ((Integer) this.f19361.get(i)).intValue();
    }
}
