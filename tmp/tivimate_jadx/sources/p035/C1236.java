package p035;

import p013.C0907;
import p023.C1068;
import p126.InterfaceC2136;
import p316.AbstractC3906;
import p329.InterfaceC4087;

/* renamed from: ʼﾞ.ᵎᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1236 extends AbstractC3906 implements InterfaceC4087 {

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final /* synthetic */ C1232 f4802;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public int f4803;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public C1232 f4804;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public int f4805;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public InterfaceC1221 f4806;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public EnumC1222[] f4807;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public int f4808;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public int f4809;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final /* synthetic */ EnumC1222[] f4810;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC1221 f4811;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1236(EnumC1222[] enumC1222Arr, C1232 c1232, InterfaceC1221 interfaceC1221, InterfaceC2136 interfaceC2136) {
        super(2, interfaceC2136);
        this.f4810 = enumC1222Arr;
        this.f4802 = c1232;
        this.f4811 = interfaceC1221;
    }

    @Override // p329.InterfaceC4087
    /* renamed from: ʼˎ */
    public final Object mo3749(Object obj, Object obj2) {
        return ((C1236) mo3750((C1068) obj, (InterfaceC2136) obj2)).mo3389(C0907.f3832);
    }

    @Override // p316.AbstractC3908
    /* renamed from: ˉˆ */
    public final InterfaceC2136 mo3750(Object obj, InterfaceC2136 interfaceC2136) {
        return new C1236(this.f4810, this.f4802, this.f4811, interfaceC2136);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0072, code lost:
    
        if (p035.C1232.m3803(r6, r5, r11, r10) == r9) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0058, code lost:
    
        r4 = r8;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0078  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0075 -> B:10:0x0076). Please report as a decompilation issue!!! */
    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo3389(java.lang.Object r11) {
        /*
            r10 = this;
            int r0 = r10.f4808
            r1 = 2
            r2 = 1
            if (r0 == 0) goto L22
            if (r0 == r2) goto La
            if (r0 != r1) goto L1a
        La:
            int r0 = r10.f4805
            int r3 = r10.f4809
            int r4 = r10.f4803
            ʼﾞ.ˋᵔ r5 = r10.f4806
            ʼﾞ.ᐧﾞ r6 = r10.f4804
            ʼﾞ.ˏי[] r7 = r10.f4807
            p121.AbstractC2026.m5044(r11)
            goto L58
        L1a:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L22:
            p121.AbstractC2026.m5044(r11)
            ʼﾞ.ˏי[] r11 = r10.f4810
            int r0 = r11.length
            r3 = 0
            ʼﾞ.ᐧﾞ r4 = r10.f4802
            ʼﾞ.ˋᵔ r5 = r10.f4811
            r7 = r11
            r11 = r3
            r6 = r4
        L30:
            if (r3 >= r0) goto L78
            r4 = r7[r3]
            int r8 = r11 + 1
            int r4 = r4.ordinal()
            if (r4 == 0) goto L75
            ᵢˎ.ﹳٴ r9 = p373.EnumC4532.f16960
            if (r4 == r2) goto L60
            if (r4 != r1) goto L5a
            r10.f4807 = r7
            r10.f4804 = r6
            r10.f4806 = r5
            r10.f4803 = r8
            r10.f4809 = r3
            r10.f4805 = r0
            r10.f4808 = r1
            java.lang.Object r11 = p035.C1232.m3804(r6, r5, r11, r10)
            if (r11 != r9) goto L57
            goto L74
        L57:
            r4 = r8
        L58:
            r11 = r4
            goto L76
        L5a:
            kotlin.NoWhenBranchMatchedException r11 = new kotlin.NoWhenBranchMatchedException
            r11.<init>()
            throw r11
        L60:
            r10.f4807 = r7
            r10.f4804 = r6
            r10.f4806 = r5
            r10.f4803 = r8
            r10.f4809 = r3
            r10.f4805 = r0
            r10.f4808 = r2
            java.lang.Object r11 = p035.C1232.m3803(r6, r5, r11, r10)
            if (r11 != r9) goto L57
        L74:
            return r9
        L75:
            r11 = r8
        L76:
            int r3 = r3 + r2
            goto L30
        L78:
            ʻᵢ.ʼᐧ r11 = p013.C0907.f3832
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: p035.C1236.mo3389(java.lang.Object):java.lang.Object");
    }
}
