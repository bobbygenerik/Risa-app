package p311;

import java.lang.reflect.Method;
import java.util.Map;
import p137.AbstractC2305;

/* renamed from: ᐧᵢ.ˊʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3809 extends AbstractC3798 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ int f14737;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Method f14738;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f14739;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean f14740;

    public /* synthetic */ C3809(Method method, int i, boolean z, int i2) {
        this.f14737 = i2;
        this.f14738 = method;
        this.f14739 = i;
        this.f14740 = z;
    }

    @Override // p311.AbstractC3798
    /* renamed from: ﹳٴ */
    public final void mo7958(C3813 c3813, Object obj) {
        switch (this.f14737) {
            case 0:
                Map map = (Map) obj;
                int i = this.f14739;
                Method method = this.f14738;
                if (map == null) {
                    throw AbstractC3798.m7964(method, i, "Field map was null.", new Object[0]);
                }
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    if (str == null) {
                        throw AbstractC3798.m7964(method, i, "Field map contained null key.", new Object[0]);
                    }
                    Object value = entry.getValue();
                    if (value == null) {
                        throw AbstractC3798.m7964(method, i, AbstractC2305.m5378("Field map contained null value for key '", str, "'."), new Object[0]);
                    }
                    String obj2 = value.toString();
                    if (obj2 == null) {
                        throw AbstractC3798.m7964(method, i, "Field map value '" + value + "' converted to null by " + C3835.class.getName() + " for key '" + str + "'.", new Object[0]);
                    }
                    c3813.m7991(str, obj2, this.f14740);
                }
                return;
            case 1:
                Map map2 = (Map) obj;
                int i2 = this.f14739;
                Method method2 = this.f14738;
                if (map2 == null) {
                    throw AbstractC3798.m7964(method2, i2, "Header map was null.", new Object[0]);
                }
                for (Map.Entry entry2 : map2.entrySet()) {
                    String str2 = (String) entry2.getKey();
                    if (str2 == null) {
                        throw AbstractC3798.m7964(method2, i2, "Header map contained null key.", new Object[0]);
                    }
                    Object value2 = entry2.getValue();
                    if (value2 == null) {
                        throw AbstractC3798.m7964(method2, i2, AbstractC2305.m5378("Header map contained null value for key '", str2, "'."), new Object[0]);
                    }
                    c3813.m7990(str2, value2.toString(), this.f14740);
                }
                return;
            default:
                Map map3 = (Map) obj;
                int i3 = this.f14739;
                Method method3 = this.f14738;
                if (map3 == null) {
                    throw AbstractC3798.m7964(method3, i3, "Query map was null", new Object[0]);
                }
                for (Map.Entry entry3 : map3.entrySet()) {
                    String str3 = (String) entry3.getKey();
                    if (str3 == null) {
                        throw AbstractC3798.m7964(method3, i3, "Query map contained null key.", new Object[0]);
                    }
                    Object value3 = entry3.getValue();
                    if (value3 == null) {
                        throw AbstractC3798.m7964(method3, i3, AbstractC2305.m5378("Query map contained null value for key '", str3, "'."), new Object[0]);
                    }
                    String obj3 = value3.toString();
                    if (obj3 == null) {
                        throw AbstractC3798.m7964(method3, i3, "Query map value '" + value3 + "' converted to null by " + C3835.class.getName() + " for key '" + str3 + "'.", new Object[0]);
                    }
                    c3813.m7989(str3, obj3, this.f14740);
                }
                return;
        }
    }
}
