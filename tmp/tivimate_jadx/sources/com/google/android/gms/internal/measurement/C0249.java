package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ʻˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0249 extends AbstractC0465 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final boolean f1739;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final boolean f1740;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ C0380 f1741;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0249(C0380 c0380, boolean z, boolean z2) {
        super("log");
        this.f1741 = c0380;
        this.f1739 = z;
        this.f1740 = z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0092  */
    @Override // com.google.android.gms.internal.measurement.AbstractC0465
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.InterfaceC0457 mo1199(ˏˆ.ﹳٴ r18, java.util.List r19) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = r19
            r3 = 1
            java.lang.String r4 = "log"
            ˉᵎ.ⁱˊ.ˋᵔ(r3, r4, r2)
            int r4 = r2.size()
            r5 = 0
            com.google.android.gms.internal.measurement.ﹳᐧ r6 = com.google.android.gms.internal.measurement.InterfaceC0457.f2214
            com.google.android.gms.internal.measurement.ˑˉ r7 = r0.f1741
            if (r4 != r3) goto L39
            java.lang.Object r2 = r2.get(r5)
            com.google.android.gms.internal.measurement.ᵔʾ r2 = (com.google.android.gms.internal.measurement.InterfaceC0457) r2
            java.lang.Object r3 = r1.ʽʽ
            com.google.android.gms.internal.measurement.ˏי r3 = (com.google.android.gms.internal.measurement.C0371) r3
            com.google.android.gms.internal.measurement.ᵔʾ r1 = r3.m1698(r1, r2)
            java.lang.String r10 = r1.mo1558()
            java.util.List r11 = java.util.Collections.EMPTY_LIST
            java.lang.Object r1 = r7.f2039
            r8 = r1
            ᐧﹳ.ʽ r8 = (ᐧﹳ.ʽ) r8
            r9 = 3
            boolean r12 = r0.f1739
            boolean r13 = r0.f1740
            r8.ᴵˊ(r9, r10, r11, r12, r13)
            return r6
        L39:
            java.lang.Object r4 = r2.get(r5)
            com.google.android.gms.internal.measurement.ᵔʾ r4 = (com.google.android.gms.internal.measurement.InterfaceC0457) r4
            java.lang.Object r5 = r1.ʽʽ
            com.google.android.gms.internal.measurement.ˏי r5 = (com.google.android.gms.internal.measurement.C0371) r5
            java.lang.Object r8 = r1.ʽʽ
            com.google.android.gms.internal.measurement.ˏי r8 = (com.google.android.gms.internal.measurement.C0371) r8
            com.google.android.gms.internal.measurement.ᵔʾ r4 = r5.m1698(r1, r4)
            java.lang.Double r4 = r4.mo1562()
            double r4 = r4.doubleValue()
            int r4 = ˉᵎ.ⁱˊ.ˈⁱ(r4)
            r5 = 5
            r9 = 2
            if (r4 == r9) goto L6b
            r10 = 3
            if (r4 == r10) goto L69
            if (r4 == r5) goto L67
            r11 = 6
            if (r4 == r11) goto L65
        L63:
            r12 = r10
            goto L6d
        L65:
            r12 = r9
            goto L6d
        L67:
            r12 = r5
            goto L6d
        L69:
            r12 = r3
            goto L6d
        L6b:
            r10 = 4
            goto L63
        L6d:
            java.lang.Object r3 = r2.get(r3)
            com.google.android.gms.internal.measurement.ᵔʾ r3 = (com.google.android.gms.internal.measurement.InterfaceC0457) r3
            com.google.android.gms.internal.measurement.ᵔʾ r3 = r8.m1698(r1, r3)
            java.lang.String r13 = r3.mo1558()
            int r3 = r2.size()
            if (r3 != r9) goto L92
            java.util.List r14 = java.util.Collections.EMPTY_LIST
            java.lang.Object r1 = r7.f2039
            r11 = r1
            ᐧﹳ.ʽ r11 = (ᐧﹳ.ʽ) r11
            boolean r15 = r0.f1739
            boolean r1 = r0.f1740
            r16 = r1
            r11.ᴵˊ(r12, r13, r14, r15, r16)
            return r6
        L92:
            java.util.ArrayList r14 = new java.util.ArrayList
            r14.<init>()
        L97:
            int r3 = r2.size()
            int r3 = java.lang.Math.min(r3, r5)
            if (r9 >= r3) goto Lb5
            java.lang.Object r3 = r2.get(r9)
            com.google.android.gms.internal.measurement.ᵔʾ r3 = (com.google.android.gms.internal.measurement.InterfaceC0457) r3
            com.google.android.gms.internal.measurement.ᵔʾ r3 = r8.m1698(r1, r3)
            java.lang.String r3 = r3.mo1558()
            r14.add(r3)
            int r9 = r9 + 1
            goto L97
        Lb5:
            java.lang.Object r1 = r7.f2039
            r11 = r1
            ᐧﹳ.ʽ r11 = (ᐧﹳ.ʽ) r11
            boolean r15 = r0.f1739
            boolean r1 = r0.f1740
            r16 = r1
            r11.ᴵˊ(r12, r13, r14, r15, r16)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C0249.mo1199(ˏˆ.ﹳٴ, java.util.List):com.google.android.gms.internal.measurement.ᵔʾ");
    }
}
