package p127;

import android.net.Uri;
import android.os.Handler;
import androidx.leanback.widget.ˉˆ;
import androidx.media3.exoplayer.rtsp.RtspMediaSource$RtspPlaybackException;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import javax.net.SocketFactory;
import p017.AbstractC0951;
import p017.AbstractC0993;
import p017.AbstractC1004;
import p017.C0956;
import p017.C0987;
import p027.C1090;
import p055.C1474;
import p055.C1495;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p364.C4443;
import p392.C4664;
import p392.C4680;
import p420.C4936;
import p420.C4976;
import p420.InterfaceC4945;
import p420.InterfaceC4956;
import p420.InterfaceC4967;
import p428.InterfaceC5067;
import ﹳי.ʽ;
import ﹶﾞ.ⁱי;

/* renamed from: ˈـ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2161 implements InterfaceC4945 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public boolean f8401;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ʽ f8402;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4443 f8403;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public long f8404;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public long f8405;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C2170 f8406;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public boolean f8407;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final InterfaceC2153 f8408;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final ArrayList f8409;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public boolean f8410;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public boolean f8411;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public boolean f8412;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public boolean f8413;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public C0956 f8414;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final ˉˆ f8415;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Handler f8416 = AbstractC3712.m7759(null);

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final ArrayList f8417;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public IOException f8418;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public InterfaceC4967 f8419;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public RtspMediaSource$RtspPlaybackException f8420;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public long f8421;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public int f8422;

    public C2161(C4443 c4443, InterfaceC2153 interfaceC2153, Uri uri, ˉˆ r10, String str, SocketFactory socketFactory) {
        this.f8403 = c4443;
        this.f8408 = interfaceC2153;
        this.f8415 = r10;
        ʽ r1 = new ʽ(this);
        this.f8402 = r1;
        this.f8406 = new C2170(r1, r1, str, uri, socketFactory);
        this.f8417 = new ArrayList();
        this.f8409 = new ArrayList();
        this.f8421 = -9223372036854775807L;
        this.f8404 = -9223372036854775807L;
        this.f8405 = -9223372036854775807L;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m5118(C2161 c2161) {
        ArrayList arrayList = c2161.f8417;
        if (c2161.f8410 || c2161.f8401) {
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            if (((C2176) arrayList.get(i)).f8521.m9820() == null) {
                return;
            }
        }
        c2161.f8401 = true;
        AbstractC0993 m3264 = AbstractC0993.m3264(arrayList);
        AbstractC1004.m3282(4, "initialCapacity");
        Object[] objArr = new Object[4];
        int i2 = 0;
        int i3 = 0;
        while (i2 < m3264.size()) {
            C4976 c4976 = ((C2176) m3264.get(i2)).f8521;
            String num = Integer.toString(i2);
            C1495 m9820 = c4976.m9820();
            m9820.getClass();
            C1474 c1474 = new C1474(num, m9820);
            int i4 = i3 + 1;
            int m3234 = AbstractC0951.m3234(objArr.length, i4);
            if (m3234 > objArr.length) {
                objArr = Arrays.copyOf(objArr, m3234);
            }
            objArr[i3] = c1474;
            i2++;
            i3 = i4;
        }
        c2161.f8414 = AbstractC0993.m3259(i3, objArr);
        InterfaceC4967 interfaceC4967 = c2161.f8419;
        interfaceC4967.getClass();
        interfaceC4967.mo9347(c2161);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.IOException, androidx.media3.exoplayer.rtsp.RtspMediaSource$RtspPlaybackException] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.io.IOException, androidx.media3.exoplayer.rtsp.RtspMediaSource$RtspPlaybackException] */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static void m5119(C2161 c2161) {
        ArrayList arrayList = c2161.f8409;
        ArrayList arrayList2 = c2161.f8417;
        c2161.f8407 = true;
        C2170 c2170 = c2161.f8406;
        c2170.getClass();
        try {
            c2170.close();
            C2173 c2173 = new C2173(new ⁱי(c2170));
            c2170.f8488 = c2173;
            c2173.m5160(c2170.m5156(c2170.f8478));
            c2170.f8487 = null;
            c2170.f8481 = false;
            c2170.f8490 = null;
        } catch (IOException e) {
            c2170.f8485.ˆʾ((RtspMediaSource$RtspPlaybackException) new IOException(e));
        }
        InterfaceC2153 m5109 = c2161.f8408.m5109();
        if (m5109 == null) {
            c2161.f8420 = new IOException("No fallback data channel factory for TCP retry");
            return;
        }
        ArrayList arrayList3 = new ArrayList(arrayList2.size());
        ArrayList arrayList4 = new ArrayList(arrayList.size());
        for (int i = 0; i < arrayList2.size(); i++) {
            C2176 c2176 = (C2176) arrayList2.get(i);
            boolean z = c2176.f8522;
            C2172 c2172 = c2176.f8525;
            if (z) {
                arrayList3.add(c2176);
            } else {
                C2176 c21762 = new C2176(c2161, c2172.f8500, i, m5109);
                arrayList3.add(c21762);
                C2172 c21722 = c21762.f8525;
                c21762.f8524.m8983(c21722.f8499, c2161.f8402, 0);
                if (arrayList.contains(c2172)) {
                    arrayList4.add(c21722);
                }
            }
        }
        AbstractC0993 m3264 = AbstractC0993.m3264(arrayList2);
        arrayList2.clear();
        arrayList2.addAll(arrayList3);
        arrayList.clear();
        arrayList.addAll(arrayList4);
        for (int i2 = 0; i2 < m3264.size(); i2++) {
            ((C2176) m3264.get(i2)).m5165();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m5120(C2161 c2161) {
        ArrayList arrayList = c2161.f8417;
        c2161.f8412 = true;
        for (int i = 0; i < arrayList.size(); i++) {
            c2161.f8412 &= ((C2176) arrayList.get(i)).f8522;
        }
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void mo5121(long j) {
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void mo5122(InterfaceC4967 interfaceC4967, long j) {
        C2170 c2170 = this.f8406;
        this.f8419 = interfaceC4967;
        try {
            c2170.getClass();
            try {
                c2170.f8488.m5160(c2170.m5156(c2170.f8478));
                ʽﹳ r4 = c2170.f8484;
                r4.ᴵˊ(r4.ˉˆ(4, c2170.f8487, C0987.f3963, c2170.f8478));
            } catch (IOException e) {
                AbstractC3712.m7799(c2170.f8488);
                throw e;
            }
        } catch (IOException e2) {
            this.f8418 = e2;
            AbstractC3712.m7799(c2170);
        }
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void mo5123() {
        IOException iOException = this.f8418;
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final long mo5124(InterfaceC5067[] interfaceC5067Arr, boolean[] zArr, InterfaceC4956[] interfaceC4956Arr, boolean[] zArr2, long j) {
        ArrayList arrayList;
        for (int i = 0; i < interfaceC5067Arr.length; i++) {
            if (interfaceC4956Arr[i] != null && (interfaceC5067Arr[i] == null || !zArr[i])) {
                interfaceC4956Arr[i] = null;
            }
        }
        ArrayList arrayList2 = this.f8409;
        arrayList2.clear();
        int i2 = 0;
        while (true) {
            int length = interfaceC5067Arr.length;
            arrayList = this.f8417;
            if (i2 >= length) {
                break;
            }
            InterfaceC5067 interfaceC5067 = interfaceC5067Arr[i2];
            if (interfaceC5067 != null) {
                C1474 mo9758 = interfaceC5067.mo9758();
                C0956 c0956 = this.f8414;
                c0956.getClass();
                int indexOf = c0956.indexOf(mo9758);
                C2176 c2176 = (C2176) arrayList.get(indexOf);
                c2176.getClass();
                arrayList2.add(c2176.f8525);
                if (this.f8414.contains(mo9758) && interfaceC4956Arr[i2] == null) {
                    interfaceC4956Arr[i2] = new C1090(indexOf, 5, this);
                    zArr2[i2] = true;
                }
            }
            i2++;
        }
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            C2176 c21762 = (C2176) arrayList.get(i3);
            if (!arrayList2.contains(c21762.f8525)) {
                c21762.m5165();
            }
        }
        this.f8413 = true;
        if (j != 0) {
            this.f8404 = j;
            this.f8421 = j;
            this.f8405 = j;
        }
        m5130();
        return j;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean mo5125() {
        if (this.f8412) {
            return false;
        }
        int i = this.f8406.f8476;
        return i == 2 || i == 1;
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final long mo5126() {
        if (!this.f8411) {
            return -9223372036854775807L;
        }
        this.f8411 = false;
        return 0L;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final long mo5127() {
        if (!this.f8412) {
            ArrayList arrayList = this.f8417;
            if (!arrayList.isEmpty()) {
                long j = this.f8404;
                if (j != -9223372036854775807L) {
                    return j;
                }
                boolean z = true;
                long j2 = Long.MAX_VALUE;
                for (int i = 0; i < arrayList.size(); i++) {
                    C2176 c2176 = (C2176) arrayList.get(i);
                    if (!c2176.f8522) {
                        j2 = Math.min(j2, c2176.f8521.m9829());
                        z = false;
                    }
                }
                if (z || j2 == Long.MIN_VALUE) {
                    return 0L;
                }
                return j2;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ˏי, reason: contains not printable characters */
    public final void mo5128(long j) {
        if (m5135()) {
            return;
        }
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f8417;
            if (i >= arrayList.size()) {
                return;
            }
            C2176 c2176 = (C2176) arrayList.get(i);
            if (!c2176.f8522) {
                c2176.f8521.m9812(true, j);
            }
            i++;
        }
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean mo5129(C4664 c4664) {
        return mo5125();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m5130() {
        ArrayList arrayList;
        boolean z = true;
        int i = 0;
        while (true) {
            arrayList = this.f8409;
            if (i >= arrayList.size()) {
                break;
            }
            z &= ((C2172) arrayList.get(i)).f8497 != null;
            i++;
        }
        if (z && this.f8413) {
            C2170 c2170 = this.f8406;
            c2170.f8486.addAll(arrayList);
            c2170.m5158();
        }
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final C4936 mo5131() {
        AbstractC3731.m7857(this.f8401);
        C0956 c0956 = this.f8414;
        c0956.getClass();
        return new C4936((C1474[]) c0956.toArray(new C1474[0]));
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long mo5132(long j, C4680 c4680) {
        return j;
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final long mo5133(long j) {
        if (mo5127() == 0 && !this.f8407) {
            this.f8405 = j;
            return j;
        }
        mo5128(j);
        this.f8404 = j;
        if (m5135()) {
            C2170 c2170 = this.f8406;
            int i = c2170.f8476;
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException();
                }
                this.f8421 = j;
                c2170.m5159(j);
                return j;
            }
        } else {
            ArrayList arrayList = this.f8417;
            int i2 = 0;
            while (true) {
                if (i2 >= arrayList.size()) {
                    break;
                }
                if (((C2176) arrayList.get(i2)).f8521.m9816(this.f8412, j)) {
                    i2++;
                } else {
                    this.f8421 = j;
                    if (this.f8412) {
                        for (int i3 = 0; i3 < this.f8417.size(); i3++) {
                            C2176 c2176 = (C2176) this.f8417.get(i3);
                            AbstractC3731.m7857(c2176.f8522);
                            c2176.f8522 = false;
                            m5120(c2176.f8526);
                            c2176.f8524.m8983(c2176.f8525.f8499, c2176.f8526.f8402, 0);
                        }
                        if (this.f8407) {
                            this.f8406.m5157(AbstractC3712.m7755(j));
                        } else {
                            this.f8406.m5159(j);
                        }
                    } else {
                        this.f8406.m5159(j);
                    }
                    for (int i4 = 0; i4 < this.f8417.size(); i4++) {
                        C2176 c21762 = (C2176) this.f8417.get(i4);
                        if (!c21762.f8522) {
                            C2169 c2169 = c21762.f8525.f8499.f8535;
                            c2169.getClass();
                            synchronized (c2169.f8464) {
                                c2169.f8465 = true;
                            }
                            c21762.f8521.m9824(false);
                            c21762.f8521.f18547 = j;
                        }
                    }
                }
            }
        }
        return j;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final long mo5134() {
        return mo5127();
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean m5135() {
        return this.f8421 != -9223372036854775807L;
    }
}
