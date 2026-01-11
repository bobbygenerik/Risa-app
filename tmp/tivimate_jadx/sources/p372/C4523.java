package p372;

import android.net.Uri;
import ar.tvplayer.core.domain.ʽﹳ;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p012.C0894;
import p055.AbstractC1464;
import p055.C1495;
import p262.C3433;
import p274.C3495;
import p274.C3497;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p307.AbstractC3740;
import p364.C4441;
import p364.C4443;
import p364.InterfaceC4436;
import p364.InterfaceC4445;
import p364.InterfaceC4453;
import p392.C4664;
import p395.C4715;
import p395.InterfaceC4734;
import p395.InterfaceC4735;
import p420.C4976;
import p420.C4991;
import p420.InterfaceC4946;
import p420.InterfaceC4947;
import p420.InterfaceC4956;
import p421.C4996;

/* renamed from: ᵢˋ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4523 implements InterfaceC4956, InterfaceC4947, InterfaceC4436, InterfaceC4453 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public long f16916;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C1495[] f16917;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f16918;

    /* renamed from: ʿ, reason: contains not printable characters */
    public boolean f16919;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final C4976 f16920;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final C3433 f16921;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final boolean[] f16922;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public AbstractC4525 f16923;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public boolean f16924;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C0894 f16925;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final Object f16926;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public InterfaceC4521 f16927;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public C1495 f16928;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public AbstractC4519 f16929;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public long f16930;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final ʽﹳ f16931;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final com.google.android.gms.internal.play_billing.ʽﹳ f16932;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int[] f16933;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public boolean f16934;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final InterfaceC4514 f16935;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final ArrayList f16936;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final C4441 f16937;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final List f16938;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final C4976[] f16939;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public int f16940;

    /* JADX WARN: Type inference failed for: r4v3, types: [ar.tvplayer.core.domain.ʽﹳ, java.lang.Object] */
    public C4523(int i, int[] iArr, C1495[] c1495Arr, InterfaceC4514 interfaceC4514, InterfaceC4946 interfaceC4946, C4443 c4443, long j, InterfaceC4734 interfaceC4734, C4715 c4715, C0894 c0894, com.google.android.gms.internal.play_billing.ʽﹳ r13, boolean z) {
        this.f16918 = i;
        int i2 = 0;
        iArr = iArr == null ? new int[0] : iArr;
        this.f16933 = iArr;
        this.f16917 = c1495Arr == null ? new C1495[0] : c1495Arr;
        this.f16935 = interfaceC4514;
        this.f16926 = interfaceC4946;
        this.f16932 = r13;
        this.f16925 = c0894;
        this.f16934 = z;
        this.f16937 = new C4441("ChunkSampleStream");
        this.f16931 = new Object();
        ArrayList arrayList = new ArrayList();
        this.f16936 = arrayList;
        this.f16938 = DesugarCollections.unmodifiableList(arrayList);
        int length = iArr.length;
        this.f16939 = new C4976[length];
        this.f16922 = new boolean[length];
        int i3 = length + 1;
        int[] iArr2 = new int[i3];
        C4976[] c4976Arr = new C4976[i3];
        interfaceC4734.getClass();
        C4976 c4976 = new C4976(c4443, interfaceC4734, c4715);
        this.f16920 = c4976;
        iArr2[0] = i;
        c4976Arr[0] = c4976;
        while (i2 < length) {
            C4976 c49762 = new C4976(c4443, null, null);
            this.f16939[i2] = c49762;
            int i4 = i2 + 1;
            c4976Arr[i4] = c49762;
            iArr2[i4] = this.f16933[i2];
            i2 = i4;
        }
        this.f16921 = new C3433(iArr2, 13, c4976Arr);
        this.f16916 = j;
        this.f16930 = j;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ʻٴ */
    public final void mo5121(long j) {
        C4441 c4441 = this.f16937;
        if (c4441.m8981() || m9098()) {
            return;
        }
        boolean m8979 = c4441.m8979();
        List list = this.f16938;
        InterfaceC4514 interfaceC4514 = this.f16935;
        ArrayList arrayList = this.f16936;
        if (m8979) {
            AbstractC4519 abstractC4519 = this.f16929;
            abstractC4519.getClass();
            boolean z = abstractC4519 instanceof AbstractC4525;
            if (!(z && m9092(arrayList.size() - 1)) && interfaceC4514.mo7004(j, abstractC4519, list)) {
                c4441.m8982();
                if (z) {
                    this.f16923 = (AbstractC4525) abstractC4519;
                    return;
                }
                return;
            }
            return;
        }
        int mo7008 = interfaceC4514.mo7008(j, list);
        if (mo7008 < arrayList.size()) {
            AbstractC3731.m7857(!c4441.m8979());
            int size = arrayList.size();
            while (true) {
                if (mo7008 >= size) {
                    mo7008 = -1;
                    break;
                } else if (!m9092(mo7008)) {
                    break;
                } else {
                    mo7008++;
                }
            }
            if (mo7008 == -1) {
                return;
            }
            long j2 = m9096().f16902;
            AbstractC4525 m9095 = m9095(mo7008);
            if (arrayList.isEmpty()) {
                this.f16916 = this.f16930;
            }
            this.f16919 = false;
            this.f16932.ˊʻ(this.f16918, m9095.f16904, j2);
        }
    }

    /* JADX WARN: Type inference failed for: r13v2, types: [ﹳᵢ.ʿ, java.lang.Object] */
    @Override // p364.InterfaceC4436
    /* renamed from: ʼʼ */
    public final void mo4020(InterfaceC4445 interfaceC4445, long j, long j2) {
        AbstractC4519 abstractC4519 = (AbstractC4519) interfaceC4445;
        this.f16929 = null;
        this.f16935.mo7005(abstractC4519);
        long j3 = abstractC4519.f16900;
        Uri uri = abstractC4519.f16907.f13539;
        C4991 c4991 = new C4991(j2);
        this.f16925.getClass();
        this.f16932.ˏי(c4991, abstractC4519.f16899, this.f16918, abstractC4519.f16901, abstractC4519.f16906, abstractC4519.f16903, abstractC4519.f16904, abstractC4519.f16902);
        this.f16926.mo6998(this);
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ʽ */
    public final void mo3459() {
        C4441 c4441 = this.f16937;
        c4441.mo7443();
        this.f16920.m9830();
        if (c4441.m8979()) {
            return;
        }
        this.f16935.mo7001();
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final void m9090(C3497 c3497) {
        this.f16927 = c3497;
        C4976 c4976 = this.f16920;
        c4976.m9822();
        InterfaceC4735 interfaceC4735 = c4976.f18557;
        if (interfaceC4735 != null) {
            interfaceC4735.mo9462(c4976.f18548);
            c4976.f18557 = null;
            c4976.f18555 = null;
        }
        for (C4976 c49762 : this.f16939) {
            c49762.m9822();
            InterfaceC4735 interfaceC47352 = c49762.f18557;
            if (interfaceC47352 != null) {
                interfaceC47352.mo9462(c49762.f18548);
                c49762.f18557 = null;
                c49762.f18555 = null;
            }
        }
        this.f16937.m8980(this);
    }

    @Override // p364.InterfaceC4436
    /* renamed from: ʽﹳ */
    public final void mo4022(InterfaceC4445 interfaceC4445, long j, long j2, int i) {
        C4991 c4991;
        AbstractC4519 abstractC4519 = (AbstractC4519) interfaceC4445;
        if (i == 0) {
            long j3 = abstractC4519.f16900;
            c4991 = new C4991(abstractC4519.f16905);
        } else {
            long j4 = abstractC4519.f16900;
            Uri uri = abstractC4519.f16907.f13539;
            c4991 = new C4991(j2);
        }
        C4991 c49912 = c4991;
        this.f16932.ʾᵎ(c49912, abstractC4519.f16899, this.f16918, abstractC4519.f16901, abstractC4519.f16906, abstractC4519.f16903, abstractC4519.f16904, abstractC4519.f16902, i);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final void m9091() {
        int m9097 = m9097(this.f16920.m9818(), this.f16940 - 1);
        while (true) {
            int i = this.f16940;
            if (i > m9097) {
                return;
            }
            this.f16940 = i + 1;
            AbstractC4525 abstractC4525 = (AbstractC4525) this.f16936.get(i);
            C1495 c1495 = abstractC4525.f16901;
            if (!c1495.equals(this.f16928)) {
                this.f16932.ٴﹶ(this.f16918, c1495, abstractC4525.f16906, abstractC4525.f16903, abstractC4525.f16904);
            }
            this.f16928 = c1495;
        }
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final boolean m9092(int i) {
        int m9818;
        AbstractC4525 abstractC4525 = (AbstractC4525) this.f16936.get(i);
        if (this.f16920.m9818() > abstractC4525.m9100(0)) {
            return true;
        }
        int i2 = 0;
        do {
            C4976[] c4976Arr = this.f16939;
            if (i2 >= c4976Arr.length) {
                return false;
            }
            m9818 = c4976Arr[i2].m9818();
            i2++;
        } while (m9818 <= abstractC4525.m9100(i2));
        return true;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ˈ */
    public final boolean mo5125() {
        return this.f16937.m8979();
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0036, code lost:
    
        r3 = null;
     */
    /* renamed from: ˈٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9093(long r11) {
        /*
            r10 = this;
            r10.f16930 = r11
            r0 = 0
            r10.f16934 = r0
            boolean r1 = r10.m9098()
            if (r1 == 0) goto Le
            r10.f16916 = r11
            return
        Le:
            r1 = r0
        Lf:
            java.util.ArrayList r2 = r10.f16936
            int r3 = r2.size()
            r4 = 0
            if (r1 >= r3) goto L36
            java.lang.Object r3 = r2.get(r1)
            ᵢˋ.ﹳٴ r3 = (p372.AbstractC4525) r3
            long r5 = r3.f16904
            int r5 = (r5 > r11 ? 1 : (r5 == r11 ? 0 : -1))
            if (r5 != 0) goto L30
            long r6 = r3.f16945
            r8 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r6 != 0) goto L30
            goto L37
        L30:
            if (r5 <= 0) goto L33
            goto L36
        L33:
            int r1 = r1 + 1
            goto Lf
        L36:
            r3 = r4
        L37:
            ﹳᵢ.ᴵˑ r1 = r10.f16920
            r5 = 1
            if (r3 == 0) goto L45
            int r3 = r3.m9100(r0)
            boolean r3 = r1.m9821(r3)
            goto L5b
        L45:
            long r6 = r10.mo5134()
            r8 = -9223372036854775808
            int r3 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r3 == 0) goto L56
            int r3 = (r11 > r6 ? 1 : (r11 == r6 ? 0 : -1))
            if (r3 >= 0) goto L54
            goto L56
        L54:
            r3 = r0
            goto L57
        L56:
            r3 = r5
        L57:
            boolean r3 = r1.m9816(r3, r11)
        L5b:
            ﹳᵢ.ᴵˑ[] r6 = r10.f16939
            if (r3 == 0) goto L74
            int r1 = r1.m9818()
            int r1 = r10.m9097(r1, r0)
            r10.f16940 = r1
            int r1 = r6.length
        L6a:
            if (r0 >= r1) goto La8
            r2 = r6[r0]
            r2.m9816(r5, r11)
            int r0 = r0 + 1
            goto L6a
        L74:
            r10.f16916 = r11
            r10.f16919 = r0
            r2.clear()
            r10.f16940 = r0
            ᵔⁱ.ˉʿ r11 = r10.f16937
            boolean r12 = r11.m8979()
            if (r12 == 0) goto L97
            r1.m9822()
            int r12 = r6.length
        L89:
            if (r0 >= r12) goto L93
            r1 = r6[r0]
            r1.m9822()
            int r0 = r0 + 1
            goto L89
        L93:
            r11.m8982()
            return
        L97:
            r11.f16593 = r4
            r1.m9824(r0)
            int r11 = r6.length
            r12 = r0
        L9e:
            if (r12 >= r11) goto La8
            r1 = r6[r12]
            r1.m9824(r0)
            int r12 = r12 + 1
            goto L9e
        La8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p372.C4523.m9093(long):void");
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ˉˆ */
    public final long mo5127() {
        if (this.f16919) {
            return Long.MIN_VALUE;
        }
        if (m9098()) {
            return this.f16916;
        }
        long j = this.f16930;
        AbstractC4525 m9096 = m9096();
        if (!m9096.mo9087()) {
            ArrayList arrayList = this.f16936;
            m9096 = arrayList.size() > 1 ? (AbstractC4525) AbstractC3740.m7939(2, arrayList) : null;
        }
        if (m9096 != null) {
            j = Math.max(j, m9096.f16902);
        }
        return Math.max(j, this.f16920.m9829());
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final void m9094(long j) {
        long j2;
        if (m9098()) {
            return;
        }
        C4976 c4976 = this.f16920;
        int i = c4976.f18558;
        c4976.m9812(true, j);
        C4976 c49762 = this.f16920;
        int i2 = c49762.f18558;
        if (i2 > i) {
            synchronized (c49762) {
                j2 = c49762.f18535 == 0 ? Long.MIN_VALUE : c49762.f18556[c49762.f18562];
            }
            int i3 = 0;
            while (true) {
                C4976[] c4976Arr = this.f16939;
                if (i3 >= c4976Arr.length) {
                    break;
                }
                c4976Arr[i3].m9812(this.f16922[i3], j2);
                i3++;
            }
        }
        int min = Math.min(m9097(i2, 0), this.f16940);
        if (min > 0) {
            AbstractC3712.m7775(this.f16936, 0, min);
            this.f16940 -= min;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final AbstractC4525 m9095(int i) {
        ArrayList arrayList = this.f16936;
        AbstractC4525 abstractC4525 = (AbstractC4525) arrayList.get(i);
        AbstractC3712.m7775(arrayList, i, arrayList.size());
        this.f16940 = Math.max(this.f16940, arrayList.size());
        int i2 = 0;
        this.f16920.m9827(abstractC4525.m9100(0));
        while (true) {
            C4976[] c4976Arr = this.f16939;
            if (i2 >= c4976Arr.length) {
                return abstractC4525;
            }
            C4976 c4976 = c4976Arr[i2];
            i2++;
            c4976.m9827(abstractC4525.m9100(i2));
        }
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final AbstractC4525 m9096() {
        return (AbstractC4525) AbstractC3740.m7939(1, this.f16936);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b1  */
    /* JADX WARN: Type inference failed for: r1v2, types: [ﹳᵢ.ʿ, java.lang.Object] */
    @Override // p364.InterfaceC4436
    /* renamed from: ـˆ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p022.C1047 mo4023(p364.InterfaceC4445 r22, long r23, long r25, java.io.IOException r27, int r28) {
        /*
            r21 = this;
            r0 = r21
            r1 = r22
            ᵢˋ.ˑﹳ r1 = (p372.AbstractC4519) r1
            ـˊ.ʼᐧ r2 = r1.f16907
            long r2 = r2.f13541
            boolean r4 = r1 instanceof p372.AbstractC4525
            java.util.ArrayList r5 = r0.f16936
            int r6 = r5.size()
            r7 = 1
            int r6 = r6 - r7
            r8 = 0
            int r2 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1))
            r3 = 0
            if (r2 == 0) goto L26
            if (r4 == 0) goto L26
            boolean r2 = r0.m9092(r6)
            if (r2 != 0) goto L24
            goto L26
        L24:
            r2 = r3
            goto L27
        L26:
            r2 = r7
        L27:
            ﹳᵢ.ﹳᐧ r9 = new ﹳᵢ.ﹳᐧ
            ـˊ.ʼᐧ r8 = r1.f16907
            android.net.Uri r8 = r8.f13539
            r10 = r25
            r9.<init>(r10)
            long r10 = r1.f16904
            p305.AbstractC3712.m7755(r10)
            long r10 = r1.f16902
            p305.AbstractC3712.m7755(r10)
            ʼٴ.ʾᵎ r8 = new ʼٴ.ʾᵎ
            r10 = 11
            r11 = r27
            r12 = r28
            r8.<init>(r12, r10, r11)
            ᵢˋ.ʼˎ r10 = r0.f16935
            ʻᴵ.יـ r12 = r0.f16925
            boolean r10 = r10.mo7002(r1, r2, r8, r12)
            r13 = 0
            if (r10 == 0) goto L75
            if (r2 == 0) goto L6e
            if (r4 == 0) goto L6b
            ᵢˋ.ﹳٴ r2 = r0.m9095(r6)
            if (r2 != r1) goto L5d
            goto L5e
        L5d:
            r7 = r3
        L5e:
            p305.AbstractC3731.m7857(r7)
            boolean r2 = r5.isEmpty()
            if (r2 == 0) goto L6b
            long r4 = r0.f16930
            r0.f16916 = r4
        L6b:
            ʼˊ.ⁱˊ r2 = p364.C4441.f16592
            goto L76
        L6e:
            java.lang.String r2 = "ChunkSampleStream"
            java.lang.String r4 = "Ignoring attempt to cancel non-cancelable load."
            p305.AbstractC3731.m7850(r2, r4)
        L75:
            r2 = r13
        L76:
            if (r2 != 0) goto L8e
            long r4 = r12.m3143(r8)
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 == 0) goto L8c
            ʼˊ.ⁱˊ r2 = new ʼˊ.ⁱˊ
            r6 = 0
            r2.<init>(r4, r6, r3)
            goto L8e
        L8c:
            ʼˊ.ⁱˊ r2 = p364.C4441.f16591
        L8e:
            boolean r3 = r2.m3386()
            r20 = r3 ^ 1
            int r10 = r1.f16899
            r4 = r12
            ʽⁱ.ﹳᐧ r12 = r1.f16901
            r5 = r13
            int r13 = r1.f16906
            java.lang.Object r14 = r1.f16903
            long r6 = r1.f16904
            r15 = r6
            long r5 = r1.f16902
            com.google.android.gms.internal.play_billing.ʽﹳ r8 = r0.f16932
            int r11 = r0.f16918
            r19 = r27
            r17 = r5
            r5 = 0
            r8.ʽﹳ(r9, r10, r11, r12, r13, r14, r15, r17, r19, r20)
            if (r3 != 0) goto Lbb
            r0.f16929 = r5
            r4.getClass()
            java.lang.Object r1 = r0.f16926
            r1.mo6998(r0)
        Lbb:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p372.C4523.mo4023(ᵔⁱ.ٴﹶ, long, long, java.io.IOException, int):ʼˊ.ⁱˊ");
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ٴﹶ */
    public final boolean mo5129(C4664 c4664) {
        long j;
        List list;
        if (!this.f16919) {
            C4441 c4441 = this.f16937;
            if (!c4441.m8979() && !c4441.m8981()) {
                boolean m9098 = m9098();
                if (m9098) {
                    list = Collections.EMPTY_LIST;
                    j = this.f16916;
                } else {
                    j = m9096().f16902;
                    list = this.f16938;
                }
                this.f16935.mo7003(c4664, j, list, this.f16931);
                ʽﹳ r14 = this.f16931;
                boolean z = r14.ʾˋ;
                AbstractC4519 abstractC4519 = (AbstractC4519) r14.ᴵˊ;
                r14.ᴵˊ = null;
                r14.ʾˋ = false;
                if (z) {
                    this.f16916 = -9223372036854775807L;
                    this.f16919 = true;
                    return true;
                }
                if (abstractC4519 != null) {
                    this.f16929 = abstractC4519;
                    boolean z2 = abstractC4519 instanceof AbstractC4525;
                    C3433 c3433 = this.f16921;
                    if (z2) {
                        AbstractC4525 abstractC4525 = (AbstractC4525) abstractC4519;
                        if (m9098) {
                            long j2 = abstractC4525.f16904;
                            long j3 = this.f16916;
                            if (j2 < j3) {
                                this.f16920.f18547 = j3;
                                for (C4976 c4976 : this.f16939) {
                                    c4976.f18547 = this.f16916;
                                }
                                if (this.f16934) {
                                    C1495 c1495 = abstractC4525.f16901;
                                    this.f16924 = !AbstractC1464.m4263(c1495.f5930, c1495.f5924);
                                }
                            }
                            this.f16934 = false;
                            this.f16916 = -9223372036854775807L;
                        }
                        abstractC4525.f16944 = c3433;
                        C4976[] c4976Arr = (C4976[]) c3433.f13456;
                        int[] iArr = new int[c4976Arr.length];
                        for (int i = 0; i < c4976Arr.length; i++) {
                            C4976 c49762 = c4976Arr[i];
                            iArr[i] = c49762.f18558 + c49762.f18535;
                        }
                        abstractC4525.f16947 = iArr;
                        this.f16936.add(abstractC4525);
                    } else if (abstractC4519 instanceof C4520) {
                        ((C4520) abstractC4519).f16910 = c3433;
                    }
                    c4441.m8983(abstractC4519, this, this.f16925.m3145(abstractC4519.f16899));
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int m9097(int i, int i2) {
        ArrayList arrayList;
        do {
            i2++;
            arrayList = this.f16936;
            if (i2 >= arrayList.size()) {
                return arrayList.size() - 1;
            }
        } while (((AbstractC4525) arrayList.get(i2)).m9100(0) <= i);
        return i2 - 1;
    }

    /* JADX WARN: Type inference failed for: r13v5, types: [ﹳᵢ.ʿ, java.lang.Object] */
    @Override // p364.InterfaceC4436
    /* renamed from: ᵎﹶ */
    public final void mo4024(InterfaceC4445 interfaceC4445, long j, long j2, boolean z) {
        AbstractC4519 abstractC4519 = (AbstractC4519) interfaceC4445;
        this.f16929 = null;
        this.f16923 = null;
        long j3 = abstractC4519.f16900;
        Uri uri = abstractC4519.f16907.f13539;
        C4991 c4991 = new C4991(j2);
        this.f16925.getClass();
        this.f16932.ﹳᐧ(c4991, abstractC4519.f16899, this.f16918, abstractC4519.f16901, abstractC4519.f16906, abstractC4519.f16903, abstractC4519.f16904, abstractC4519.f16902);
        if (z) {
            return;
        }
        if (m9098()) {
            this.f16920.m9824(false);
            for (C4976 c4976 : this.f16939) {
                c4976.m9824(false);
            }
        } else if (abstractC4519 instanceof AbstractC4525) {
            ArrayList arrayList = this.f16936;
            m9095(arrayList.size() - 1);
            if (arrayList.isEmpty()) {
                this.f16916 = this.f16930;
            }
        }
        this.f16926.mo6998(this);
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ᵔᵢ */
    public final int mo3472(C3433 c3433, C4996 c4996, int i) {
        if (m9098()) {
            return -3;
        }
        AbstractC4525 abstractC4525 = this.f16923;
        C4976 c4976 = this.f16920;
        if (abstractC4525 != null && abstractC4525.m9100(0) <= c4976.m9818()) {
            return -3;
        }
        m9091();
        return c4976.m9808(c3433, c4996, i, this.f16919);
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ᵔﹳ */
    public final int mo3473(long j) {
        if (m9098()) {
            return 0;
        }
        boolean z = this.f16919;
        C4976 c4976 = this.f16920;
        int m9804 = c4976.m9804(z, j);
        AbstractC4525 abstractC4525 = this.f16923;
        if (abstractC4525 != null) {
            m9804 = Math.min(m9804, abstractC4525.m9100(0) - c4976.m9818());
        }
        c4976.m9825(m9804);
        m9091();
        return m9804;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final boolean m9098() {
        return this.f16916 != -9223372036854775807L;
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ﹳٴ */
    public final boolean mo3475() {
        return !m9098() && this.f16920.m9811(this.f16919);
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ﾞʻ */
    public final long mo5134() {
        if (m9098()) {
            return this.f16916;
        }
        if (this.f16919) {
            return Long.MIN_VALUE;
        }
        return m9096().f16902;
    }

    @Override // p364.InterfaceC4453
    /* renamed from: ﾞᴵ */
    public final void mo9004() {
        this.f16920.m9813();
        for (C4976 c4976 : this.f16939) {
            c4976.m9813();
        }
        this.f16935.mo7007();
        InterfaceC4521 interfaceC4521 = this.f16927;
        if (interfaceC4521 != null) {
            C3497 c3497 = (C3497) interfaceC4521;
            synchronized (c3497) {
                C3495 c3495 = (C3495) c3497.f13794.remove(this);
                if (c3495 != null) {
                    c3495.f13733.m9813();
                }
            }
        }
    }
}
