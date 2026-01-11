package p134;

import java.lang.reflect.Method;
import java.util.HashMap;

/* renamed from: ˉʼ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2209 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean f8667;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f8668;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C2210 f8669;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f8670;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Class f8671;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean f8672;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean f8673;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final Class[] f8674;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC2206[] f8675;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Method f8676;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final EnumC2207 f8677;

    public C2209(HashMap hashMap) {
        Object[][] objArr = {new Object[]{"handler", Method.class}, new Object[]{"priority", Integer.class}, new Object[]{"invocation", Class.class}, new Object[]{"filter", InterfaceC2206[].class}, new Object[]{"condition", String.class}, new Object[]{"envelope", Boolean.class}, new Object[]{"messages", Class[].class}, new Object[]{"synchronized", Boolean.class}, new Object[]{"listener", C2210.class}, new Object[]{"subtypes", Boolean.class}};
        int i = 0;
        for (int i2 = 10; i < i2; i2 = 10) {
            Object[] objArr2 = objArr[i];
            if (hashMap.get(objArr2[0]) != null) {
                Object[][] objArr3 = objArr;
                if (((Class) objArr2[1]).isAssignableFrom(hashMap.get(objArr2[0]).getClass())) {
                    i++;
                    objArr = objArr3;
                }
            }
            throw new IllegalArgumentException("Property " + objArr2[0] + " was expected to be not null and of type " + objArr2[1] + " but was: " + hashMap.get(objArr2[0]));
        }
        this.f8676 = (Method) hashMap.get("handler");
        this.f8675 = (InterfaceC2206[]) hashMap.get("filter");
        this.f8668 = (String) hashMap.get("condition");
        this.f8670 = ((Integer) hashMap.get("priority")).intValue();
        this.f8671 = (Class) hashMap.get("invocation");
        this.f8677 = (EnumC2207) hashMap.get("invocationMode");
        this.f8673 = ((Boolean) hashMap.get("envelope")).booleanValue();
        this.f8667 = ((Boolean) hashMap.get("subtypes")).booleanValue();
        this.f8669 = (C2210) hashMap.get("listener");
        this.f8672 = ((Boolean) hashMap.get("synchronized")).booleanValue();
        this.f8674 = (Class[]) hashMap.get("messages");
    }
}
