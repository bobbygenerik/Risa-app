package p038;

import com.google.firebase.components.ComponentRegistrar;
import java.lang.reflect.InvocationTargetException;
import p035.AbstractC1220;
import p074.InterfaceC1650;
import p137.AbstractC2305;
import p145.C2405;
import p211.C2979;

/* renamed from: ʽʼ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1283 implements InterfaceC1650 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f4961;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f4962;

    public /* synthetic */ C1283(int i, Object obj) {
        this.f4962 = i;
        this.f4961 = obj;
    }

    @Override // p074.InterfaceC1650
    public final Object get() {
        switch (this.f4962) {
            case 0:
                return new C2979((C2405) this.f4961);
            case 1:
                String str = (String) this.f4961;
                try {
                    Class<?> cls = Class.forName(str);
                    if (ComponentRegistrar.class.isAssignableFrom(cls)) {
                        return (ComponentRegistrar) cls.getDeclaredConstructor(null).newInstance(null);
                    }
                    throw new RuntimeException("Class " + str + " is not an instance of com.google.firebase.components.ComponentRegistrar");
                } catch (ClassNotFoundException unused) {
                    String str2 = "Class " + str + " is not an found.";
                    return null;
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(AbstractC2305.m5378("Could not instantiate ", str, "."), e);
                } catch (InstantiationException e2) {
                    throw new RuntimeException(AbstractC2305.m5378("Could not instantiate ", str, "."), e2);
                } catch (NoSuchMethodException e3) {
                    throw new RuntimeException(AbstractC1220.m3771("Could not instantiate ", str), e3);
                } catch (InvocationTargetException e4) {
                    throw new RuntimeException(AbstractC1220.m3771("Could not instantiate ", str), e4);
                }
            default:
                return (ComponentRegistrar) this.f4961;
        }
    }
}
