package p253;

import java.util.List;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p171.InterfaceC2622;
import p171.InterfaceC2632;
import p171.InterfaceC2639;
import p171.InterfaceC2646;

/* renamed from: יˑ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3314 implements InterfaceC2632 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f12751;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f12752;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public InterfaceC3316 f12753;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f12754;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public InterfaceC2639 f12755;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public InterfaceC2646 f12756;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f12757;

    @Override // p171.InterfaceC2632
    /* renamed from: ʼˎ */
    public final void mo2900(InterfaceC2646 interfaceC2646) {
        this.f12756 = interfaceC2646;
        this.f12755 = interfaceC2646.mo1138(0, 1);
        interfaceC2646.mo1137();
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ˈ */
    public final InterfaceC2632 mo2902() {
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x0213, code lost:
    
        if (r9 != 65534) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x021a, code lost:
    
        if (r2 == 32) goto L81;
     */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x023a  */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.google.android.material.datepicker.ᵔʾ] */
    @Override // p171.InterfaceC2632
    /* renamed from: ٴﹶ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo2904(p171.InterfaceC2622 r21, p055.C1468 r22) {
        /*
            Method dump skipped, instructions count: 692
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p253.C3314.mo2904(ˊﾞ.ʼᐧ, ʽⁱ.ˏי):int");
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ᵎﹶ */
    public final List mo2905() {
        C0982 c0982 = AbstractC0993.f3977;
        return C0956.f3901;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ⁱˊ */
    public final void mo2908(long j, long j2) {
        this.f12751 = j == 0 ? 0 : 4;
        InterfaceC3316 interfaceC3316 = this.f12753;
        if (interfaceC3316 != null) {
            interfaceC3316.mo7131(j2);
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﹳٴ */
    public final void mo2909() {
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﾞᴵ */
    public final boolean mo2910(InterfaceC2622 interfaceC2622) {
        return AbstractC3315.m7135(interfaceC2622);
    }
}
