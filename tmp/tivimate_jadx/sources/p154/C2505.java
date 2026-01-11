package p154;

import java.util.ArrayList;
import p033.AbstractC1179;
import p033.C1181;
import p033.EnumC1175;
import p033.EnumC1189;
import p173.C2656;
import p173.InterfaceC2655;
import p197.C2900;
import p317.AbstractC3913;
import p317.AbstractC3914;
import p443.EnumC5198;
import ʽⁱ.ᵎﹶ;
import ﹶﾞ.ⁱי;

/* renamed from: ˊʾ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2505 extends AbstractC1179 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ int f9532;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2505(int i, EnumC1175 enumC1175, EnumC1189 enumC1189, long j, long j2) {
        super(i, enumC1175, enumC1189, j, j2);
        this.f9532 = 4;
    }

    @Override // p033.AbstractC1179
    /* renamed from: ˋˊ */
    public final void mo3694(C2656 c2656) {
        int m6402;
        switch (this.f9532) {
            case 0:
                c2656.m6414(2);
                C2900 c2900 = c2656.f10939;
                int m6406 = c2900.m6406(c2656);
                int m6418 = c2656.m6418();
                if (m6406 > 0 && m6418 > 0) {
                    ArrayList arrayList = new ArrayList();
                    int i = ((C1181) ((InterfaceC2655) ((ᵎﹶ) this).ʾˋ)).f4586 + m6406;
                    c2656.f10937 = i;
                    do {
                        m6402 = (int) c2900.m6402(c2656);
                        EnumC5198 enumC5198 = (EnumC5198) AbstractC3914.m8091(c2900.m6402(c2656), EnumC5198.class, null);
                        String m6422 = c2656.m6422(((int) c2900.m6402(c2656)) / 2, AbstractC3913.f15172);
                        ⁱי r9 = new ⁱי(21, false);
                        r9.ᴵˊ = enumC5198;
                        r9.ʽʽ = m6422;
                        arrayList.add(r9);
                        if (m6402 != 0) {
                            i += m6402;
                            c2656.f10937 = i;
                        }
                    } while (m6402 != 0);
                }
                c2656.f10937 = ((C1181) ((InterfaceC2655) ((ᵎﹶ) this).ʾˋ)).f4586 + m6406 + m6418;
                return;
            case 1:
                c2656.m6414(4);
                return;
            case 2:
                c2656.m6413();
                c2656.m6414(2);
                return;
            case 3:
                c2656.m6414(2);
                return;
            default:
                c2656.m6413();
                c2656.m6414(2);
                return;
        }
    }

    @Override // p033.AbstractC1179
    /* renamed from: יˉ */
    public void mo3695(C2656 c2656) {
        switch (this.f9532) {
            case 1:
                c2656.m6417(this.f4575);
                c2656.m6417(0);
                return;
            case 2:
                c2656.m6417(this.f4575);
                c2656.m5937();
                c2656.m5938();
                throw null;
            case 3:
            default:
                super.mo3695(c2656);
                return;
            case 4:
                c2656.m6417(this.f4575);
                c2656.m5936(2);
                return;
        }
    }
}
