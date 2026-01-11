package p154;

import p033.AbstractC1179;
import p033.C1184;
import p033.EnumC1175;
import p033.EnumC1189;
import p173.C2656;
import p197.C2900;
import p205.C2921;
import p317.AbstractC3913;
import ﹳٴ.ﹳٴ;

/* renamed from: ˊʾ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2489 extends AbstractC1179 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ int f9486;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public Object f9487;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2489(int i, EnumC1175 enumC1175, EnumC1189 enumC1189, long j, long j2, int i2) {
        super(i, enumC1175, enumC1189, j, j2);
        this.f9486 = i2;
    }

    @Override // p033.AbstractC1179
    /* renamed from: ˋˊ */
    public void mo3694(C2656 c2656) {
        switch (this.f9486) {
            case 0:
                c2656.m6413();
                c2656.m6413();
                c2656.m6414(4);
                ﹳٴ.ٴʼ(c2656);
                ﹳٴ.ٴʼ(c2656);
                ﹳٴ.ٴʼ(c2656);
                ﹳٴ.ٴʼ(c2656);
                C2900 c2900 = c2656.f10939;
                c2900.m6403(c2656);
                c2900.m6403(c2656);
                c2656.m6416(4);
                return;
            default:
                super.mo3694(c2656);
                return;
        }
    }

    @Override // p033.AbstractC1179
    /* renamed from: יˉ */
    public final void mo3695(C2656 c2656) {
        switch (this.f9486) {
            case 0:
                c2656.m6417(this.f4575);
                c2656.m6417(1);
                c2656.m5938();
                ((C1184) this.f9487).m3700(c2656);
                return;
            default:
                c2656.m6417(this.f4575);
                c2656.m5937();
                c2656.m6417(72);
                String m6449 = ((C2921) this.f9487).m6449();
                C2900 c2900 = c2656.f10939;
                if (m6449 == null) {
                    c2900.m6404(c2656, 0);
                } else {
                    c2900.m6404(c2656, m6449.length() * 2);
                }
                c2656.m6423(m6449, AbstractC3913.f15173);
                return;
        }
    }
}
