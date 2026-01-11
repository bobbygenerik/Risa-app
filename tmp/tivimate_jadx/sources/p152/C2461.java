package p152;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p013.C0913;
import p301.InterfaceC3702;
import p329.InterfaceC4085;
import p329.InterfaceC4086;
import p329.InterfaceC4087;
import p329.InterfaceC4088;
import p329.InterfaceC4089;
import p329.InterfaceC4090;
import p329.InterfaceC4091;
import p329.InterfaceC4092;
import p329.InterfaceC4093;
import p329.InterfaceC4094;
import p329.InterfaceC4095;
import p329.InterfaceC4096;
import p329.InterfaceC4097;
import p329.InterfaceC4098;
import p329.InterfaceC4099;
import p329.InterfaceC4100;
import p329.InterfaceC4101;
import p329.InterfaceC4102;
import p329.InterfaceC4103;
import p329.InterfaceC4104;
import p329.InterfaceC4105;
import p329.InterfaceC4106;
import p329.InterfaceC4107;
import p430.AbstractC5103;
import p430.AbstractC5106;
import p430.AbstractC5114;
import p435.AbstractC5143;
import ˈˋ.ʾˊ;

/* renamed from: ˊʼ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2461 implements InterfaceC3702, InterfaceC2449 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Map f9424;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Class f9425;

    static {
        int i = 0;
        List m10045 = AbstractC5106.m10045(InterfaceC4104.class, InterfaceC4106.class, InterfaceC4087.class, InterfaceC4102.class, InterfaceC4105.class, InterfaceC4096.class, InterfaceC4094.class, InterfaceC4089.class, InterfaceC4085.class, InterfaceC4097.class, InterfaceC4103.class, InterfaceC4088.class, InterfaceC4091.class, InterfaceC4095.class, InterfaceC4107.class, InterfaceC4099.class, InterfaceC4101.class, InterfaceC4086.class, InterfaceC4090.class, InterfaceC4098.class, InterfaceC4092.class, InterfaceC4100.class, InterfaceC4093.class);
        ArrayList arrayList = new ArrayList(AbstractC5114.m10060(m10045, 10));
        for (Object obj : m10045) {
            int i2 = i + 1;
            if (i < 0) {
                AbstractC5106.m10049();
                throw null;
            }
            arrayList.add(new C0913((Class) obj, Integer.valueOf(i)));
            i = i2;
        }
        f9424 = AbstractC5103.m10039(arrayList);
    }

    public C2461(Class cls) {
        this.f9425 = cls;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C2461) && ʾˊ.ʻٴ(this).equals(ʾˊ.ʻٴ((InterfaceC3702) obj));
    }

    public final int hashCode() {
        return ʾˊ.ʻٴ(this).hashCode();
    }

    public final String toString() {
        return this.f9425 + " (Kotlin reflection is not available)";
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String m5581() {
        String m5575;
        Class cls = this.f9425;
        String str = null;
        if (cls.isAnonymousClass()) {
            return null;
        }
        if (!cls.isLocalClass()) {
            if (!cls.isArray()) {
                String m55752 = AbstractC2451.m5575(cls.getName());
                return m55752 == null ? cls.getSimpleName() : m55752;
            }
            Class<?> componentType = cls.getComponentType();
            if (componentType.isPrimitive() && (m5575 = AbstractC2451.m5575(componentType.getName())) != null) {
                str = m5575.concat("Array");
            }
            return str == null ? "Array" : str;
        }
        String simpleName = cls.getSimpleName();
        Method enclosingMethod = cls.getEnclosingMethod();
        if (enclosingMethod != null) {
            return AbstractC5143.m10136(simpleName, enclosingMethod.getName() + '$', simpleName);
        }
        Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
        if (enclosingConstructor == null) {
            return AbstractC5143.m10111('$', simpleName, simpleName);
        }
        return AbstractC5143.m10136(simpleName, enclosingConstructor.getName() + '$', simpleName);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m5582(Object obj) {
        Map map = f9424;
        Class cls = this.f9425;
        Integer num = (Integer) map.get(cls);
        if (num != null) {
            return AbstractC2451.m5574(num.intValue(), obj);
        }
        if (cls.isPrimitive()) {
            cls = ʾˊ.ʻٴ(AbstractC2443.m5561(cls));
        }
        return cls.isInstance(obj);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String m5583() {
        String m5573;
        Class cls = this.f9425;
        String str = null;
        if (cls.isAnonymousClass() || cls.isLocalClass()) {
            return null;
        }
        if (!cls.isArray()) {
            String m55732 = AbstractC2451.m5573(cls.getName());
            return m55732 == null ? cls.getCanonicalName() : m55732;
        }
        Class<?> componentType = cls.getComponentType();
        if (componentType.isPrimitive() && (m5573 = AbstractC2451.m5573(componentType.getName())) != null) {
            str = m5573.concat("Array");
        }
        return str == null ? "kotlin.Array" : str;
    }

    @Override // p152.InterfaceC2449
    /* renamed from: ﹳٴ */
    public final Class mo5571() {
        return this.f9425;
    }
}
