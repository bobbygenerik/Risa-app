package androidx.lifecycle;

import android.app.Application;
import android.support.v4.media.session.AbstractC0001;
import com.google.android.gms.internal.measurement.ˏʻ;
import java.lang.reflect.InvocationTargetException;
import p026.AbstractC1078;

/* renamed from: androidx.lifecycle.ᐧﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0190 extends ˊˋ {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static C0190 f1085;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final ᵎˉ.ⁱˊ f1086 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Application f1087;

    public C0190(Application application) {
        super(1);
        this.f1087 = application;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static AbstractC0196 m721(Class cls, Application application) {
        if (!AbstractC0207.class.isAssignableFrom(cls)) {
            return ˏʻ.ˈ(cls);
        }
        try {
            return (AbstractC0196) cls.getConstructor(Application.class).newInstance(application);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(AbstractC0001.m22(cls, "Cannot create an instance of "), e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(AbstractC0001.m22(cls, "Cannot create an instance of "), e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException(AbstractC0001.m22(cls, "Cannot create an instance of "), e3);
        } catch (InvocationTargetException e4) {
            throw new RuntimeException(AbstractC0001.m22(cls, "Cannot create an instance of "), e4);
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final AbstractC0196 m722(Class cls, AbstractC1078 abstractC1078) {
        if (this.f1087 != null) {
            return m723(cls);
        }
        Application application = (Application) abstractC1078.mo3424(f1086);
        if (application != null) {
            return m721(cls, application);
        }
        if (AbstractC0207.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
        }
        return ˏʻ.ˈ(cls);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC0196 m723(Class cls) {
        Application application = this.f1087;
        if (application != null) {
            return m721(cls, application);
        }
        throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
    }
}
