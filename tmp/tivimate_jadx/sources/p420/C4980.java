package p420;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import p017.AbstractC0993;
import p017.AbstractC1004;
import p017.C0956;
import p017.C0982;
import p055.C1474;
import p055.C1490;
import p055.C1495;
import p305.AbstractC3731;
import p366.C4472;
import p366.C4473;
import p392.C4664;
import p392.C4680;
import p428.InterfaceC5067;

/* renamed from: ﹳᵢ.ᵎⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4980 implements InterfaceC4945, InterfaceC4967 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final IdentityHashMap f18582;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC4945[] f18583;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C4472 f18584;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public C4936 f18585;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public C4992 f18587;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public InterfaceC4967 f18588;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final boolean[] f18589;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public InterfaceC4945[] f18591;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final ArrayList f18590 = new ArrayList();

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final HashMap f18586 = new HashMap();

    public C4980(C4472 c4472, long[] jArr, InterfaceC4945... interfaceC4945Arr) {
        this.f18584 = c4472;
        this.f18583 = interfaceC4945Arr;
        c4472.getClass();
        C0982 c0982 = AbstractC0993.f3977;
        C0956 c0956 = C0956.f3901;
        this.f18587 = new C4992(c0956, c0956);
        this.f18582 = new IdentityHashMap();
        this.f18591 = new InterfaceC4945[0];
        this.f18589 = new boolean[interfaceC4945Arr.length];
        for (int i = 0; i < interfaceC4945Arr.length; i++) {
            long j = jArr[i];
            if (j != 0) {
                this.f18589[i] = true;
                this.f18583[i] = new C4963(interfaceC4945Arr[i], j);
            }
        }
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ʻٴ */
    public final void mo5121(long j) {
        this.f18587.mo5121(j);
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ʼˎ */
    public final void mo5122(InterfaceC4967 interfaceC4967, long j) {
        this.f18588 = interfaceC4967;
        ArrayList arrayList = this.f18590;
        InterfaceC4945[] interfaceC4945Arr = this.f18583;
        Collections.addAll(arrayList, interfaceC4945Arr);
        for (InterfaceC4945 interfaceC4945 : interfaceC4945Arr) {
            interfaceC4945.mo5122(this, j);
        }
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ʼᐧ */
    public final void mo5123() {
        for (InterfaceC4945 interfaceC4945 : this.f18583) {
            interfaceC4945.mo5123();
        }
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ˆʾ */
    public final long mo5124(InterfaceC5067[] interfaceC5067Arr, boolean[] zArr, InterfaceC4956[] interfaceC4956Arr, boolean[] zArr2, long j) {
        IdentityHashMap identityHashMap;
        int[] iArr;
        int[] iArr2 = new int[interfaceC5067Arr.length];
        int[] iArr3 = new int[interfaceC5067Arr.length];
        int i = 0;
        int i2 = 0;
        while (true) {
            int length = interfaceC5067Arr.length;
            identityHashMap = this.f18582;
            if (i2 >= length) {
                break;
            }
            InterfaceC4956 interfaceC4956 = interfaceC4956Arr[i2];
            Integer num = interfaceC4956 == null ? null : (Integer) identityHashMap.get(interfaceC4956);
            iArr2[i2] = num == null ? -1 : num.intValue();
            InterfaceC5067 interfaceC5067 = interfaceC5067Arr[i2];
            if (interfaceC5067 != null) {
                String str = interfaceC5067.mo9758().f5769;
                iArr3[i2] = Integer.parseInt(str.substring(0, str.indexOf(":")));
            } else {
                iArr3[i2] = -1;
            }
            i2++;
        }
        identityHashMap.clear();
        int length2 = interfaceC5067Arr.length;
        InterfaceC4956[] interfaceC4956Arr2 = new InterfaceC4956[length2];
        InterfaceC4956[] interfaceC4956Arr3 = new InterfaceC4956[interfaceC5067Arr.length];
        InterfaceC5067[] interfaceC5067Arr2 = new InterfaceC5067[interfaceC5067Arr.length];
        InterfaceC4945[] interfaceC4945Arr = this.f18583;
        ArrayList arrayList = new ArrayList(interfaceC4945Arr.length);
        long j2 = j;
        int i3 = 0;
        while (i3 < interfaceC4945Arr.length) {
            int i4 = i;
            while (i4 < interfaceC5067Arr.length) {
                interfaceC4956Arr3[i4] = iArr2[i4] == i3 ? interfaceC4956Arr[i4] : null;
                if (iArr3[i4] == i3) {
                    InterfaceC5067 interfaceC50672 = interfaceC5067Arr[i4];
                    interfaceC50672.getClass();
                    iArr = iArr2;
                    C1474 c1474 = (C1474) this.f18586.get(interfaceC50672.mo9758());
                    c1474.getClass();
                    interfaceC5067Arr2[i4] = new C4957(interfaceC50672, c1474);
                } else {
                    iArr = iArr2;
                    interfaceC5067Arr2[i4] = null;
                }
                i4++;
                iArr2 = iArr;
            }
            int[] iArr4 = iArr2;
            InterfaceC4945[] interfaceC4945Arr2 = interfaceC4945Arr;
            int i5 = i3;
            long mo5124 = interfaceC4945Arr2[i3].mo5124(interfaceC5067Arr2, zArr, interfaceC4956Arr3, zArr2, j2);
            if (i5 == 0) {
                j2 = mo5124;
            } else if (mo5124 != j2) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z = false;
            for (int i6 = 0; i6 < interfaceC5067Arr.length; i6++) {
                if (iArr3[i6] == i5) {
                    InterfaceC4956 interfaceC49562 = interfaceC4956Arr3[i6];
                    interfaceC49562.getClass();
                    interfaceC4956Arr2[i6] = interfaceC4956Arr3[i6];
                    identityHashMap.put(interfaceC49562, Integer.valueOf(i5));
                    z = true;
                } else if (iArr4[i6] == i5) {
                    AbstractC3731.m7857(interfaceC4956Arr3[i6] == null);
                }
            }
            if (z) {
                arrayList.add(interfaceC4945Arr2[i5]);
            }
            i3 = i5 + 1;
            interfaceC4945Arr = interfaceC4945Arr2;
            iArr2 = iArr4;
            i = 0;
        }
        int i7 = i;
        System.arraycopy(interfaceC4956Arr2, i7, interfaceC4956Arr, i7, length2);
        this.f18591 = (InterfaceC4945[]) arrayList.toArray(new InterfaceC4945[i7]);
        AbstractList m3280 = AbstractC1004.m3280(arrayList, new C4473(28));
        this.f18584.getClass();
        this.f18587 = new C4992(arrayList, m3280);
        return j2;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ˈ */
    public final boolean mo5125() {
        return this.f18587.mo5125();
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ˉʿ */
    public final long mo5126() {
        long j = -9223372036854775807L;
        for (InterfaceC4945 interfaceC4945 : this.f18591) {
            long mo5126 = interfaceC4945.mo5126();
            if (mo5126 != -9223372036854775807L) {
                if (j == -9223372036854775807L) {
                    for (InterfaceC4945 interfaceC49452 : this.f18591) {
                        if (interfaceC49452 == interfaceC4945) {
                            break;
                        }
                        if (interfaceC49452.mo5133(mo5126) != mo5126) {
                            throw new IllegalStateException("Unexpected child seekToUs result.");
                        }
                    }
                    j = mo5126;
                } else if (mo5126 != j) {
                    throw new IllegalStateException("Conflicting discontinuities.");
                }
            } else if (j != -9223372036854775807L && interfaceC4945.mo5133(j) != j) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
        }
        return j;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ˉˆ */
    public final long mo5127() {
        return this.f18587.mo5127();
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ˏי */
    public final void mo5128(long j) {
        for (InterfaceC4945 interfaceC4945 : this.f18591) {
            interfaceC4945.mo5128(j);
        }
    }

    @Override // p420.InterfaceC4967
    /* renamed from: ˑﹳ */
    public final void mo9347(InterfaceC4945 interfaceC4945) {
        ArrayList arrayList = this.f18590;
        arrayList.remove(interfaceC4945);
        if (arrayList.isEmpty()) {
            InterfaceC4945[] interfaceC4945Arr = this.f18583;
            int i = 0;
            for (InterfaceC4945 interfaceC49452 : interfaceC4945Arr) {
                i += interfaceC49452.mo5131().f18387;
            }
            C1474[] c1474Arr = new C1474[i];
            int i2 = 0;
            for (int i3 = 0; i3 < interfaceC4945Arr.length; i3++) {
                C4936 mo5131 = interfaceC4945Arr[i3].mo5131();
                int i4 = mo5131.f18387;
                int i5 = 0;
                while (i5 < i4) {
                    C1474 m9741 = mo5131.m9741(i5);
                    int i6 = m9741.f5770;
                    C1495[] c1495Arr = new C1495[i6];
                    for (int i7 = 0; i7 < i6; i7++) {
                        C1495 c1495 = m9741.f5767[i7];
                        C1490 m4300 = c1495.m4300();
                        StringBuilder sb = new StringBuilder();
                        sb.append(i3);
                        sb.append(":");
                        String str = c1495.f5937;
                        if (str == null) {
                            str = "";
                        }
                        sb.append(str);
                        m4300.f5884 = sb.toString();
                        c1495Arr[i7] = new C1495(m4300);
                    }
                    C1474 c1474 = new C1474(i3 + ":" + m9741.f5769, c1495Arr);
                    this.f18586.put(c1474, m9741);
                    c1474Arr[i2] = c1474;
                    i5++;
                    i2++;
                }
            }
            this.f18585 = new C4936(c1474Arr);
            InterfaceC4967 interfaceC4967 = this.f18588;
            interfaceC4967.getClass();
            interfaceC4967.mo9347(this);
        }
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ٴﹶ */
    public final boolean mo5129(C4664 c4664) {
        ArrayList arrayList = this.f18590;
        if (arrayList.isEmpty()) {
            return this.f18587.mo5129(c4664);
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((InterfaceC4945) arrayList.get(i)).mo5129(c4664);
        }
        return false;
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ᵔʾ */
    public final C4936 mo5131() {
        C4936 c4936 = this.f18585;
        c4936.getClass();
        return c4936;
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ⁱˊ */
    public final long mo5132(long j, C4680 c4680) {
        InterfaceC4945[] interfaceC4945Arr = this.f18591;
        return (interfaceC4945Arr.length > 0 ? interfaceC4945Arr[0] : this.f18583[0]).mo5132(j, c4680);
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ﹳᐧ */
    public final long mo5133(long j) {
        long mo5133 = this.f18591[0].mo5133(j);
        int i = 1;
        while (true) {
            InterfaceC4945[] interfaceC4945Arr = this.f18591;
            if (i >= interfaceC4945Arr.length) {
                return mo5133;
            }
            if (interfaceC4945Arr[i].mo5133(mo5133) != mo5133) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i++;
        }
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ﾞʻ */
    public final long mo5134() {
        return this.f18587.mo5134();
    }

    @Override // p420.InterfaceC4946
    /* renamed from: ﾞᴵ */
    public final void mo6998(InterfaceC4947 interfaceC4947) {
        InterfaceC4967 interfaceC4967 = this.f18588;
        interfaceC4967.getClass();
        interfaceC4967.mo6998(this);
    }
}
