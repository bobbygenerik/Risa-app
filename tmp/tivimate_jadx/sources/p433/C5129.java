package p433;

import java.util.Map;
import p055.C1476;
import p055.C1486;
import p055.C1490;
import p055.C1495;
import p055.InterfaceC1465;
import p094.C1870;
import p364.C4443;
import p395.C4715;
import p395.InterfaceC4734;
import p420.C4976;

/* renamed from: ﹶˎ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5129 extends C4976 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final Map f19351;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public C1486 f19352;

    public C5129(C4443 c4443, InterfaceC4734 interfaceC4734, C4715 c4715, Map map) {
        super(c4443, interfaceC4734, c4715);
        this.f19351 = map;
    }

    @Override // p420.C4976
    /* renamed from: ʼᐧ */
    public final C1495 mo9807(C1495 c1495) {
        C1486 c1486;
        C1486 c14862 = this.f19352;
        if (c14862 == null) {
            c14862 = c1495.f5938;
        }
        if (c14862 != null && (c1486 = (C1486) this.f19351.get(c14862.f5839)) != null) {
            c14862 = c1486;
        }
        C1476 c1476 = c1495.f5939;
        C1476 c14762 = null;
        if (c1476 != null) {
            InterfaceC1465[] interfaceC1465Arr = c1476.f5773;
            int length = interfaceC1465Arr.length;
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    i2 = -1;
                    break;
                }
                InterfaceC1465 interfaceC1465 = interfaceC1465Arr[i2];
                if ((interfaceC1465 instanceof C1870) && "com.apple.streaming.transportStreamTimestamp".equals(((C1870) interfaceC1465).f7499)) {
                    break;
                }
                i2++;
            }
            if (i2 != -1) {
                if (length != 1) {
                    InterfaceC1465[] interfaceC1465Arr2 = new InterfaceC1465[length - 1];
                    while (i < length) {
                        if (i != i2) {
                            interfaceC1465Arr2[i < i2 ? i : i - 1] = interfaceC1465Arr[i];
                        }
                        i++;
                    }
                    c14762 = new C1476(interfaceC1465Arr2);
                }
            }
            if (c14862 == c1495.f5938 || c1476 != c1495.f5939) {
                C1490 m4300 = c1495.m4300();
                m4300.f5881 = c14862;
                m4300.f5871 = c1476;
                c1495 = new C1495(m4300);
            }
            return super.mo9807(c1495);
        }
        c1476 = c14762;
        if (c14862 == c1495.f5938) {
        }
        C1490 m43002 = c1495.m4300();
        m43002.f5881 = c14862;
        m43002.f5871 = c1476;
        c1495 = new C1495(m43002);
        return super.mo9807(c1495);
    }
}
