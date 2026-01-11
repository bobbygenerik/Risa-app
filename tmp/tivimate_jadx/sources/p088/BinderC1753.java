package p088;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.measurement.AbstractC0292;
import com.google.android.gms.internal.play_billing.AbstractBinderC0554;
import java.lang.reflect.Field;
import p296.AbstractC3659;
import p307.AbstractC3740;

/* renamed from: ʿᵎ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class BinderC1753 extends AbstractBinderC0554 implements InterfaceC1754 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Object f7116;

    public BinderC1753(Object obj) {
        super("com.google.android.gms.dynamic.IObjectWrapper");
        this.f7116 = obj;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.measurement.ʾᵎ, ʿᵎ.ﹳٴ] */
    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public static InterfaceC1754 m4714(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
        return queryLocalInterface instanceof InterfaceC1754 ? (InterfaceC1754) queryLocalInterface : new AbstractC0292(iBinder, "com.google.android.gms.dynamic.IObjectWrapper", 2);
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public static Object m4715(InterfaceC1754 interfaceC1754) {
        if (interfaceC1754 instanceof BinderC1753) {
            return ((BinderC1753) interfaceC1754).f7116;
        }
        IBinder asBinder = interfaceC1754.asBinder();
        Field[] declaredFields = asBinder.getClass().getDeclaredFields();
        Field field = null;
        int i = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i++;
                field = field2;
            }
        }
        if (i != 1) {
            throw new IllegalArgumentException(AbstractC3740.m7932(declaredFields.length, "Unexpected number of IObjectWrapper declared fields: "));
        }
        AbstractC3659.m7687(field);
        if (field.isAccessible()) {
            throw new IllegalArgumentException("IObjectWrapper declared field not private!");
        }
        field.setAccessible(true);
        try {
            return field.get(asBinder);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("Could not access the field in remoteBinder.", e);
        } catch (NullPointerException e2) {
            throw new IllegalArgumentException("Binder object is null.", e2);
        }
    }
}
