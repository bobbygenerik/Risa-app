package p316;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import p013.C0922;
import p126.InterfaceC2136;
import p373.EnumC4532;
import ˑי.ʽ;

/* renamed from: ᴵʾ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3908 implements InterfaceC2136, InterfaceC3903, Serializable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC2136 f15169;

    public AbstractC3908(InterfaceC2136 interfaceC2136) {
        this.f15169 = interfaceC2136;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Continuation at ");
        Object mo4724 = mo4724();
        if (mo4724 == null) {
            mo4724 = getClass().getName();
        }
        sb.append(mo4724);
        return sb.toString();
    }

    /* renamed from: ʼᐧ */
    public StackTraceElement mo4724() {
        int i;
        String str;
        Method method;
        Object invoke;
        Method method2;
        Object invoke2;
        InterfaceC3904 interfaceC3904 = (InterfaceC3904) getClass().getAnnotation(InterfaceC3904.class);
        String str2 = null;
        if (interfaceC3904 == null) {
            return null;
        }
        int v = interfaceC3904.v();
        if (v > 1) {
            throw new IllegalStateException(("Debug metadata version mismatch. Expected: 1, got " + v + ". Please update the Kotlin standard library.").toString());
        }
        try {
            Field declaredField = getClass().getDeclaredField("label");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            i = (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            i = -1;
        }
        int i2 = i >= 0 ? interfaceC3904.l()[i] : -1;
        ʽ r3 = AbstractC3909.f15170;
        ʽ r4 = AbstractC3909.f15171;
        if (r3 == null) {
            try {
                ʽ r7 = new ʽ(Class.class.getDeclaredMethod("getModule", null), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", null), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", null));
                AbstractC3909.f15170 = r7;
                r3 = r7;
            } catch (Exception unused2) {
                AbstractC3909.f15170 = r4;
                r3 = r4;
            }
        }
        if (r3 != r4 && (method = (Method) r3.ʾˋ) != null && (invoke = method.invoke(getClass(), null)) != null && (method2 = (Method) r3.ᴵˊ) != null && (invoke2 = method2.invoke(invoke, null)) != null) {
            Method method3 = (Method) r3.ʽʽ;
            Object invoke3 = method3 != null ? method3.invoke(invoke2, null) : null;
            if (invoke3 instanceof String) {
                str2 = (String) invoke3;
            }
        }
        if (str2 == null) {
            str = interfaceC3904.c();
        } else {
            str = str2 + '/' + interfaceC3904.c();
        }
        return new StackTraceElement(str, interfaceC3904.m(), interfaceC3904.f(), i2);
    }

    /* renamed from: ˈ */
    public InterfaceC3903 mo4725() {
        InterfaceC2136 interfaceC2136 = this.f15169;
        if (interfaceC2136 instanceof InterfaceC3903) {
            return (InterfaceC3903) interfaceC2136;
        }
        return null;
    }

    /* renamed from: ˉˆ */
    public InterfaceC2136 mo3750(Object obj, InterfaceC2136 interfaceC2136) {
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    @Override // p126.InterfaceC2136
    /* renamed from: ᵔᵢ */
    public final void mo3549(Object obj) {
        InterfaceC2136 interfaceC2136 = this;
        while (true) {
            AbstractC3908 abstractC3908 = (AbstractC3908) interfaceC2136;
            InterfaceC2136 interfaceC21362 = abstractC3908.f15169;
            try {
                obj = abstractC3908.mo3389(obj);
                if (obj == EnumC4532.f16960) {
                    return;
                }
            } catch (Throwable th) {
                obj = new C0922(th);
            }
            abstractC3908.mo8081();
            if (!(interfaceC21362 instanceof AbstractC3908)) {
                interfaceC21362.mo3549(obj);
                return;
            }
            interfaceC2136 = interfaceC21362;
        }
    }

    /* renamed from: ᵔﹳ */
    public abstract Object mo3389(Object obj);

    /* renamed from: ﹳᐧ */
    public void mo8081() {
    }
}
