package p231;

import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.util.AbstractList;
import java.util.ArrayList;
import p012.C0894;
import p017.AbstractC0993;
import p017.AbstractC1004;
import p017.C0956;
import p017.C0982;
import p055.AbstractC1464;
import p055.C1474;
import p055.C1490;
import p055.C1495;
import p200.C2905;
import p200.C2910;
import p230.C3162;
import p266.InterfaceC3452;
import p266.InterfaceC3457;
import p266.InterfaceC3462;
import p364.C4443;
import p364.InterfaceC4442;
import p366.C4472;
import p372.C4523;
import p392.C4664;
import p392.C4680;
import p395.C4715;
import p395.InterfaceC4734;
import p420.C4936;
import p420.C4992;
import p420.InterfaceC4945;
import p420.InterfaceC4946;
import p420.InterfaceC4947;
import p420.InterfaceC4956;
import p420.InterfaceC4967;
import p428.InterfaceC5067;
import ˋⁱ.ﾞᴵ;
import ٴʽ.יـ;

/* renamed from: ˑˆ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3186 implements InterfaceC4945, InterfaceC4946 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final InterfaceC4442 f12157;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final יـ f12158;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public C4523[] f12159;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final InterfaceC4734 f12160;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C4443 f12161;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C0894 f12162;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final C4472 f12163;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final ʽﹳ f12164;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC3457 f12165;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C4715 f12166;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public InterfaceC4967 f12167;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final C4936 f12168;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public C2905 f12169;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public C4992 f12170;

    public C3186(C2905 c2905, יـ r6, InterfaceC3457 interfaceC3457, C4472 c4472, InterfaceC4734 interfaceC4734, C4715 c4715, C0894 c0894, ʽﹳ r12, InterfaceC4442 interfaceC4442, C4443 c4443) {
        this.f12169 = c2905;
        this.f12158 = r6;
        this.f12165 = interfaceC3457;
        this.f12157 = interfaceC4442;
        this.f12160 = interfaceC4734;
        this.f12166 = c4715;
        this.f12162 = c0894;
        this.f12164 = r12;
        this.f12161 = c4443;
        this.f12163 = c4472;
        C1474[] c1474Arr = new C1474[c2905.f10950.length];
        int i = 0;
        while (true) {
            C2910[] c2910Arr = c2905.f10950;
            if (i >= c2910Arr.length) {
                this.f12168 = new C4936(c1474Arr);
                this.f12159 = new C4523[0];
                c4472.getClass();
                C0982 c0982 = AbstractC0993.f3977;
                C0956 c0956 = C0956.f3901;
                this.f12170 = new C4992(c0956, c0956);
                return;
            }
            C1495[] c1495Arr = c2910Arr[i].f10984;
            C1495[] c1495Arr2 = new C1495[c1495Arr.length];
            for (int i2 = 0; i2 < c1495Arr.length; i2++) {
                C1495 c1495 = c1495Arr[i2];
                C1490 m4300 = c1495.m4300();
                m4300.f5879 = interfaceC4734.mo8997(c1495);
                C1495 c14952 = new C1495(m4300);
                if (r6.ﹳٴ && ((ﾞᴵ) r6.ʽ).ﹳٴ(c14952)) {
                    C1490 m43002 = c14952.m4300();
                    m43002.f5861 = AbstractC1464.m4251("application/x-media3-cues");
                    m43002.f5874 = ((ﾞᴵ) r6.ʽ).ᵎﹶ(c14952);
                    StringBuilder sb = new StringBuilder();
                    sb.append(c14952.f5930);
                    String str = c14952.f5924;
                    sb.append(str != null ? " ".concat(str) : "");
                    m43002.f5857 = sb.toString();
                    m43002.f5885 = Long.MAX_VALUE;
                    c14952 = new C1495(m43002);
                }
                c1495Arr2[i2] = c14952;
            }
            c1474Arr[i] = new C1474(Integer.toString(i), c1495Arr2);
            i++;
        }
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ʻٴ */
    public final void mo5121(long j) {
        this.f12170.mo5121(j);
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ʼˎ */
    public final void mo5122(InterfaceC4967 interfaceC4967, long j) {
        this.f12167 = interfaceC4967;
        interfaceC4967.mo9347(this);
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ʼᐧ */
    public final void mo5123() {
        this.f12157.mo7443();
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ˆʾ */
    public final long mo5124(InterfaceC5067[] interfaceC5067Arr, boolean[] zArr, InterfaceC4956[] interfaceC4956Arr, boolean[] zArr2, long j) {
        int i;
        InterfaceC5067 interfaceC5067;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < interfaceC5067Arr.length) {
            InterfaceC4956 interfaceC4956 = interfaceC4956Arr[i2];
            if (interfaceC4956 != null) {
                C4523 c4523 = (C4523) interfaceC4956;
                InterfaceC5067 interfaceC50672 = interfaceC5067Arr[i2];
                if (interfaceC50672 == null || !zArr[i2]) {
                    c4523.m9090(null);
                    interfaceC4956Arr[i2] = null;
                } else {
                    ((C3188) c4523.f16935).f12192 = interfaceC50672;
                    arrayList.add(c4523);
                }
            }
            if (interfaceC4956Arr[i2] != null || (interfaceC5067 = interfaceC5067Arr[i2]) == null) {
                i = i2;
            } else {
                int m9740 = this.f12168.m9740(interfaceC5067.mo9758());
                C2905 c2905 = this.f12169;
                יـ r1 = this.f12158;
                InterfaceC3462 mo624 = ((InterfaceC3452) r1.ⁱˊ).mo624();
                InterfaceC3457 interfaceC3457 = this.f12165;
                if (interfaceC3457 != null) {
                    mo624.mo5139(interfaceC3457);
                }
                i = i2;
                C4523 c45232 = new C4523(this.f12169.f10950[m9740].f10994, null, null, new C3188(this.f12157, c2905, m9740, interfaceC5067, mo624, (ﾞᴵ) r1.ʽ, r1.ﹳٴ), this, this.f12161, j, this.f12160, this.f12166, this.f12162, this.f12164, false);
                arrayList.add(c45232);
                interfaceC4956Arr[i] = c45232;
                zArr2[i] = true;
            }
            i2 = i + 1;
        }
        C4523[] c4523Arr = new C4523[arrayList.size()];
        this.f12159 = c4523Arr;
        arrayList.toArray(c4523Arr);
        AbstractList m3280 = AbstractC1004.m3280(arrayList, new C3162(1));
        this.f12163.getClass();
        this.f12170 = new C4992(arrayList, m3280);
        return j;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ˈ */
    public final boolean mo5125() {
        return this.f12170.mo5125();
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ˉʿ */
    public final long mo5126() {
        return -9223372036854775807L;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ˉˆ */
    public final long mo5127() {
        return this.f12170.mo5127();
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ˏי */
    public final void mo5128(long j) {
        for (C4523 c4523 : this.f12159) {
            c4523.m9094(j);
        }
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ٴﹶ */
    public final boolean mo5129(C4664 c4664) {
        return this.f12170.mo5129(c4664);
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ᵔʾ */
    public final C4936 mo5131() {
        return this.f12168;
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ⁱˊ */
    public final long mo5132(long j, C4680 c4680) {
        for (C4523 c4523 : this.f12159) {
            if (c4523.f16918 == 2) {
                return c4523.f16935.mo7006(j, c4680);
            }
        }
        return j;
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ﹳᐧ */
    public final long mo5133(long j) {
        for (C4523 c4523 : this.f12159) {
            c4523.m9093(j);
        }
        return j;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ﾞʻ */
    public final long mo5134() {
        return this.f12170.mo5134();
    }

    @Override // p420.InterfaceC4946
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void mo6998(InterfaceC4947 interfaceC4947) {
        InterfaceC4967 interfaceC4967 = this.f12167;
        interfaceC4967.getClass();
        interfaceC4967.mo6998(this);
    }
}
