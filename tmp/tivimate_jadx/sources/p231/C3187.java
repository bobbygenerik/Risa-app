package p231;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.lifecycle.RunnableC0197;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.regex.Matcher;
import p003.C0783;
import p012.C0894;
import p022.C1047;
import p027.C1090;
import p055.AbstractC1449;
import p055.C1444;
import p055.C1480;
import p055.C1495;
import p200.C2905;
import p200.C2910;
import p266.C3456;
import p266.InterfaceC3452;
import p266.InterfaceC3457;
import p266.InterfaceC3462;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p364.C4441;
import p364.C4443;
import p364.C4447;
import p364.C4449;
import p364.InterfaceC4436;
import p364.InterfaceC4437;
import p364.InterfaceC4442;
import p364.InterfaceC4445;
import p366.C4472;
import p372.C4523;
import p395.C4715;
import p395.InterfaceC4734;
import p420.AbstractC4990;
import p420.C4973;
import p420.C4987;
import p420.C4991;
import p420.InterfaceC4945;
import p420.InterfaceC4967;
import ٴʽ.יـ;

/* renamed from: ˑˆ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3187 extends AbstractC4990 implements InterfaceC4436 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public InterfaceC3462 f12171;

    /* renamed from: ʿ, reason: contains not printable characters */
    public Handler f12172;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public C1480 f12173;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final InterfaceC4734 f12174;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final long f12175;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public InterfaceC3457 f12176;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public C2905 f12177;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final boolean f12178;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final ArrayList f12179;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final InterfaceC4437 f12180;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final ʽﹳ f12181;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public C4441 f12182;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final InterfaceC3452 f12183;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public long f12184;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final יـ f12185;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final Uri f12186;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final C4472 f12187;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final C0894 f12188;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public InterfaceC4442 f12189;

    static {
        AbstractC1449.m4241("media3.exoplayer.smoothstreaming");
    }

    public C3187(C1480 c1480, InterfaceC3452 interfaceC3452, InterfaceC4437 interfaceC4437, יـ r7, C4472 c4472, InterfaceC4734 interfaceC4734, C0894 c0894, long j) {
        this.f12173 = c1480;
        C1444 c1444 = c1480.f5781;
        c1444.getClass();
        Uri uri = c1444.f5629;
        this.f12177 = null;
        if (uri.equals(Uri.EMPTY)) {
            uri = null;
        } else {
            String path = uri.getPath();
            if (path != null) {
                Matcher matcher = AbstractC3712.f14483.matcher(path);
                if (matcher.matches() && matcher.group(1) == null) {
                    uri = Uri.withAppendedPath(uri, "Manifest");
                }
            }
        }
        this.f12186 = uri;
        this.f12183 = interfaceC3452;
        this.f12180 = interfaceC4437;
        this.f12185 = r7;
        this.f12187 = c4472;
        this.f12174 = interfaceC4734;
        this.f12188 = c0894;
        this.f12175 = j;
        this.f12181 = m9841(null);
        this.f12178 = false;
        this.f12179 = new ArrayList();
    }

    @Override // p364.InterfaceC4436
    /* renamed from: ʼʼ */
    public final void mo4020(InterfaceC4445 interfaceC4445, long j, long j2) {
        C4449 c4449 = (C4449) interfaceC4445;
        long j3 = c4449.f16659;
        Uri uri = c4449.f16660.f13539;
        C4991 c4991 = new C4991(j2);
        this.f12188.getClass();
        this.f12181.יـ(c4991, c4449.f16658);
        this.f12177 = (C2905) c4449.f16661;
        this.f12184 = j - j2;
        m7000();
        if (this.f12177.f10944) {
            this.f12172.postDelayed(new RunnableC0197(27, this), Math.max(0L, (this.f12184 + 5000) - SystemClock.elapsedRealtime()));
        }
    }

    @Override // p364.InterfaceC4436
    /* renamed from: ʽﹳ */
    public final void mo4022(InterfaceC4445 interfaceC4445, long j, long j2, int i) {
        C4991 c4991;
        C4449 c4449 = (C4449) interfaceC4445;
        if (i == 0) {
            long j3 = c4449.f16659;
            c4991 = new C4991(c4449.f16662);
        } else {
            long j4 = c4449.f16659;
            Uri uri = c4449.f16660.f13539;
            c4991 = new C4991(j2);
        }
        C4991 c49912 = c4991;
        this.f12181.ʾᵎ(c49912, c4449.f16658, -1, (C1495) null, 0, (Object) null, -9223372036854775807L, -9223372036854775807L, i);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final void m6999() {
        if (this.f12182.m8981()) {
            return;
        }
        Map map = Collections.EMPTY_MAP;
        Uri uri = this.f12186;
        AbstractC3731.m7851(uri, "The uri must be set.");
        C4449 c4449 = new C4449(this.f12171, new C3456(uri, 1, null, map, 0L, -1L, null, 1), 4, this.f12180);
        this.f12182.m8983(c4449, this, this.f12188.m3145(c4449.f16658));
    }

    @Override // p420.AbstractC4990
    /* renamed from: ʾᵎ */
    public final void mo5098() {
        this.f12177 = this.f12178 ? this.f12177 : null;
        this.f12171 = null;
        this.f12184 = 0L;
        C4441 c4441 = this.f12182;
        if (c4441 != null) {
            c4441.m8980(null);
            this.f12182 = null;
        }
        Handler handler = this.f12172;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f12172 = null;
        }
        this.f12174.mo9000();
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ˈ */
    public final void mo5099() {
        this.f12189.mo7443();
    }

    @Override // p420.AbstractC4990
    /* renamed from: ˏי */
    public final void mo5100(InterfaceC3457 interfaceC3457) {
        this.f12176 = interfaceC3457;
        Looper myLooper = Looper.myLooper();
        C0783 c0783 = this.f18641;
        AbstractC3731.m7868(c0783);
        InterfaceC4734 interfaceC4734 = this.f12174;
        interfaceC4734.mo8990(myLooper, c0783);
        interfaceC4734.mo8998();
        if (this.f12178) {
            this.f12189 = new C4447(0);
            m7000();
            return;
        }
        this.f12171 = this.f12183.mo624();
        C4441 c4441 = new C4441("SsMediaSource");
        this.f12182 = c4441;
        this.f12189 = c4441;
        this.f12172 = AbstractC3712.m7759(null);
        m6999();
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ˑﹳ */
    public final void mo5101(InterfaceC4945 interfaceC4945) {
        C3186 c3186 = (C3186) interfaceC4945;
        for (C4523 c4523 : c3186.f12159) {
            c4523.m9090(null);
        }
        c3186.f12167 = null;
        this.f12179.remove(interfaceC4945);
    }

    @Override // p364.InterfaceC4436
    /* renamed from: ـˆ */
    public final C1047 mo4023(InterfaceC4445 interfaceC4445, long j, long j2, IOException iOException, int i) {
        C4449 c4449 = (C4449) interfaceC4445;
        long j3 = c4449.f16659;
        Uri uri = c4449.f16660.f13539;
        C4991 c4991 = new C4991(j2);
        int i2 = c4449.f16658;
        long m3143 = this.f12188.m3143(new C1090(i, 11, iOException));
        C1047 c1047 = m3143 == -9223372036854775807L ? C4441.f16591 : new C1047(m3143, false, 0);
        this.f12181.ʻٴ(c4991, i2, iOException, !c1047.m3386());
        return c1047;
    }

    @Override // p364.InterfaceC4436
    /* renamed from: ᵎﹶ */
    public final void mo4024(InterfaceC4445 interfaceC4445, long j, long j2, boolean z) {
        C4449 c4449 = (C4449) interfaceC4445;
        long j3 = c4449.f16659;
        Uri uri = c4449.f16660.f13539;
        C4991 c4991 = new C4991(j2);
        this.f12188.getClass();
        this.f12181.ﹳᐧ(c4991, c4449.f16658, -1, (C1495) null, 0, (Object) null, -9223372036854775807L, -9223372036854775807L);
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ᵔʾ */
    public final synchronized void mo5102(C1480 c1480) {
        this.f12173 = c1480;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final void m7000() {
        C4973 c4973;
        boolean z;
        C2910[] c2910Arr;
        boolean z2 = false;
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f12179;
            if (i >= arrayList.size()) {
                break;
            }
            C3186 c3186 = (C3186) arrayList.get(i);
            C2905 c2905 = this.f12177;
            c3186.f12169 = c2905;
            for (C4523 c4523 : c3186.f12159) {
                C3188 c3188 = (C3188) c4523.f16935;
                C2910[] c2910Arr2 = c3188.f12197.f10950;
                int i2 = c3188.f12195;
                C2910 c2910 = c2910Arr2[i2];
                int i3 = c2910.f10989;
                long[] jArr = c2910.f10987;
                C2910 c29102 = c2905.f10950[i2];
                if (i3 == 0 || c29102.f10989 == 0) {
                    c3188.f12193 += i3;
                } else {
                    int i4 = i3 - 1;
                    long m6437 = c2910.m6437(i4) + jArr[i4];
                    long j = c29102.f10987[0];
                    if (m6437 <= j) {
                        c3188.f12193 += i3;
                    } else {
                        c3188.f12193 = AbstractC3712.m7783(jArr, j, true) + c3188.f12193;
                    }
                }
                c3188.f12197 = c2905;
            }
            InterfaceC4967 interfaceC4967 = c3186.f12167;
            interfaceC4967.getClass();
            interfaceC4967.mo6998(c3186);
            i++;
        }
        C2910[] c2910Arr3 = this.f12177.f10950;
        int length = c2910Arr3.length;
        long j2 = Long.MIN_VALUE;
        int i5 = 0;
        long j3 = Long.MAX_VALUE;
        while (i5 < length) {
            C2910 c29103 = c2910Arr3[i5];
            int i6 = c29103.f10989;
            long[] jArr2 = c29103.f10987;
            if (i6 > 0) {
                z = z2;
                c2910Arr = c2910Arr3;
                j3 = Math.min(j3, jArr2[z ? 1 : 0]);
                int i7 = c29103.f10989 - 1;
                j2 = Math.max(j2, c29103.m6437(i7) + jArr2[i7]);
            } else {
                z = z2;
                c2910Arr = c2910Arr3;
            }
            i5++;
            z2 = z;
            c2910Arr3 = c2910Arr;
        }
        if (j3 == Long.MAX_VALUE) {
            long j4 = this.f12177.f10944 ? -9223372036854775807L : 0L;
            C2905 c29052 = this.f12177;
            boolean z3 = c29052.f10944;
            c4973 = new C4973(j4, 0L, 0L, 0L, true, z3, z3, c29052, mo5105());
        } else {
            C2905 c29053 = this.f12177;
            if (c29053.f10944) {
                long j5 = c29053.f10947;
                if (j5 != -9223372036854775807L && j5 > 0) {
                    j3 = Math.max(j3, j2 - j5);
                }
                long j6 = j3;
                long j7 = j2 - j6;
                long m7757 = j7 - AbstractC3712.m7757(this.f12175);
                if (m7757 < 5000000) {
                    m7757 = Math.min(5000000L, j7 / 2);
                }
                c4973 = new C4973(-9223372036854775807L, j7, j6, m7757, true, true, true, this.f12177, mo5105());
            } else {
                long j8 = c29053.f10946;
                if (j8 == -9223372036854775807L) {
                    j8 = j2 - j3;
                }
                long j9 = j8;
                long j10 = j3;
                c4973 = new C4973(-9223372036854775807L, -9223372036854775807L, j10 + j9, j9, j10, 0L, true, false, false, this.f12177, mo5105(), null);
            }
        }
        m9840(c4973);
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ⁱˊ */
    public final InterfaceC4945 mo5104(C4987 c4987, C4443 c4443, long j) {
        ʽﹳ m9841 = m9841(c4987);
        C4715 c4715 = new C4715(this.f18639.f17808, 0, c4987);
        C3186 c3186 = new C3186(this.f12177, this.f12185, this.f12176, this.f12187, this.f12174, c4715, this.f12188, m9841, this.f12189, c4443);
        this.f12179.add(c3186);
        return c3186;
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ﹳٴ */
    public final synchronized C1480 mo5105() {
        return this.f12173;
    }
}
