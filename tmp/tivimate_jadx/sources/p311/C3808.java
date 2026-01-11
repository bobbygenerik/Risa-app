package p311;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Map;
import p137.AbstractC2305;
import p208.AbstractC2944;
import p208.C2950;
import ˈˆ.ﾞᴵ;

/* renamed from: ᐧᵢ.ˉٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3808 extends AbstractC3798 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ int f14732 = 0;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Method f14733;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f14734;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Object f14735;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final InterfaceC3837 f14736;

    public C3808(Method method, int i, C2950 c2950, InterfaceC3837 interfaceC3837) {
        this.f14733 = method;
        this.f14734 = i;
        this.f14735 = c2950;
        this.f14736 = interfaceC3837;
    }

    public C3808(Method method, int i, InterfaceC3837 interfaceC3837, String str) {
        this.f14733 = method;
        this.f14734 = i;
        this.f14736 = interfaceC3837;
        this.f14735 = str;
    }

    @Override // p311.AbstractC3798
    /* renamed from: ﹳٴ */
    public final void mo7958(C3813 c3813, Object obj) {
        int i = this.f14732;
        InterfaceC3837 interfaceC3837 = this.f14736;
        Object obj2 = this.f14735;
        Method method = this.f14733;
        int i2 = this.f14734;
        switch (i) {
            case 0:
                if (obj == null) {
                    return;
                }
                try {
                    c3813.m7988((C2950) obj2, (AbstractC2944) interfaceC3837.mo8000(obj));
                    return;
                } catch (IOException e) {
                    throw AbstractC3798.m7964(method, i2, "Unable to convert " + obj + " to RequestBody", e);
                }
            default:
                Map map = (Map) obj;
                if (map == null) {
                    throw AbstractC3798.m7964(method, i2, "Part map was null.", new Object[0]);
                }
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    if (str == null) {
                        throw AbstractC3798.m7964(method, i2, "Part map contained null key.", new Object[0]);
                    }
                    Object value = entry.getValue();
                    if (value == null) {
                        throw AbstractC3798.m7964(method, i2, AbstractC2305.m5378("Part map contained null value for key '", str, "'."), new Object[0]);
                    }
                    c3813.m7988(ﾞᴵ.ᵎˊ(new String[]{"Content-Disposition", AbstractC2305.m5378("form-data; name=\"", str, "\""), "Content-Transfer-Encoding", (String) obj2}), (AbstractC2944) interfaceC3837.mo8000(value));
                }
                return;
        }
    }
}
