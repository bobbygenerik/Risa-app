package p267;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p255.C3359;

/* renamed from: ـˋ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3465 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3359 f13616;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3359 f13617;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3359 f13618;

    public AbstractC3465(C3359 c3359, C3359 c33592, C3359 c33593) {
        this.f13618 = c3359;
        this.f13617 = c33592;
        this.f13616 = c33593;
    }

    /* renamed from: ʼˎ */
    public abstract void mo7372(int i);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Method m7375(String str) {
        C3359 c3359 = this.f13618;
        Method method = (Method) c3359.get(str);
        if (method != null) {
            return method;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, AbstractC3465.class.getClassLoader()).getDeclaredMethod("read", AbstractC3465.class);
        c3359.put(str, declaredMethod);
        return declaredMethod;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m7376(int i, int i2) {
        mo7372(i2);
        ((C3464) this).f13611.writeInt(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ˈ, reason: contains not printable characters */
    public final Method m7377(Class cls) {
        String name = cls.getName();
        C3359 c3359 = this.f13617;
        Method method = (Method) c3359.get(name);
        if (method != null) {
            return method;
        }
        Class m7381 = m7381(cls);
        System.currentTimeMillis();
        Method declaredMethod = m7381.getDeclaredMethod("write", cls, AbstractC3465.class);
        c3359.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    /* renamed from: ˑﹳ */
    public abstract boolean mo7373(int i);

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m7378(InterfaceC3463 interfaceC3463) {
        if (interfaceC3463 == null) {
            ((C3464) this).f13611.writeString(null);
            return;
        }
        try {
            ((C3464) this).f13611.writeString(m7381(interfaceC3463.getClass()).getName());
            C3464 mo7374 = mo7374();
            try {
                m7377(interfaceC3463.getClass()).invoke(null, interfaceC3463, mo7374);
                Parcel parcel = mo7374.f13611;
                int i = mo7374.f13608;
                if (i >= 0) {
                    int i2 = mo7374.f13610.get(i);
                    int dataPosition = parcel.dataPosition();
                    parcel.setDataPosition(i2);
                    parcel.writeInt(dataPosition - i2);
                    parcel.setDataPosition(dataPosition);
                }
            } catch (ClassNotFoundException e) {
                throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
            } catch (IllegalAccessException e2) {
                throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
            } catch (InvocationTargetException e4) {
                if (!(e4.getCause() instanceof RuntimeException)) {
                    throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
                }
                throw ((RuntimeException) e4.getCause());
            }
        } catch (ClassNotFoundException e5) {
            throw new RuntimeException(interfaceC3463.getClass().getSimpleName().concat(" does not have a Parcelizer"), e5);
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Parcelable m7379(Parcelable parcelable, int i) {
        if (!mo7373(i)) {
            return parcelable;
        }
        return ((C3464) this).f13611.readParcelable(C3464.class.getClassLoader());
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final InterfaceC3463 m7380() {
        String readString = ((C3464) this).f13611.readString();
        if (readString == null) {
            return null;
        }
        try {
            return (InterfaceC3463) m7375(readString).invoke(null, mo7374());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Class m7381(Class cls) {
        String name = cls.getName();
        C3359 c3359 = this.f13616;
        Class cls2 = (Class) c3359.get(name);
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(cls.getPackage().getName() + "." + cls.getSimpleName() + "Parcelizer", false, cls.getClassLoader());
        c3359.put(cls.getName(), cls3);
        return cls3;
    }

    /* renamed from: ﹳٴ */
    public abstract C3464 mo7374();

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int m7382(int i, int i2) {
        return !mo7373(i2) ? i : ((C3464) this).f13611.readInt();
    }
}
