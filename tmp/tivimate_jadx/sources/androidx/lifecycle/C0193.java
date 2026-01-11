package androidx.lifecycle;

import android.app.Application;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.ˏʻ;
import java.lang.reflect.Constructor;
import p026.AbstractC1078;
import p026.C1079;
import p152.C2461;
import p229.C3125;
import p333.InterfaceC4203;
import p391.C4641;

/* renamed from: androidx.lifecycle.ᴵˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0193 implements InterfaceC0189 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Bundle f1092;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C0184 f1093;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C3125 f1094;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C0190 f1095;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Application f1096;

    public C0193(Application application, InterfaceC4203 interfaceC4203, Bundle bundle) {
        C0190 c0190;
        this.f1094 = interfaceC4203.mo3852();
        this.f1093 = interfaceC4203.mo691();
        this.f1092 = bundle;
        this.f1096 = application;
        if (application != null) {
            if (C0190.f1085 == null) {
                C0190.f1085 = new C0190(application);
            }
            c0190 = C0190.f1085;
        } else {
            c0190 = new C0190(null);
        }
        this.f1095 = c0190;
    }

    @Override // androidx.lifecycle.InterfaceC0189
    /* renamed from: ʽ */
    public final AbstractC0196 mo718(Class cls, AbstractC1078 abstractC1078) {
        String str = (String) abstractC1078.mo3424(AbstractC0157.f1031);
        if (str == null) {
            throw new IllegalStateException("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
        }
        if (abstractC1078.mo3424(AbstractC0157.f1033) == null || abstractC1078.mo3424(AbstractC0157.f1032) == null) {
            if (this.f1093 != null) {
                return m726(cls, str);
            }
            throw new IllegalStateException("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
        }
        Application application = (Application) abstractC1078.mo3424(C0190.f1086);
        boolean isAssignableFrom = AbstractC0207.class.isAssignableFrom(cls);
        Constructor m704 = (!isAssignableFrom || application == null) ? AbstractC0175.m704(cls, AbstractC0175.f1064) : AbstractC0175.m704(cls, AbstractC0175.f1065);
        return m704 == null ? this.f1095.m722(cls, abstractC1078) : (!isAssignableFrom || application == null) ? AbstractC0175.m703(cls, m704, AbstractC0157.m676(abstractC1078)) : AbstractC0175.m703(cls, m704, application, AbstractC0157.m676(abstractC1078));
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AbstractC0196 m726(Class cls, String str) {
        C0181 c0181;
        C0184 c0184 = this.f1093;
        if (c0184 == null) {
            throw new UnsupportedOperationException("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
        }
        boolean isAssignableFrom = AbstractC0207.class.isAssignableFrom(cls);
        Application application = this.f1096;
        Constructor m704 = (!isAssignableFrom || application == null) ? AbstractC0175.m704(cls, AbstractC0175.f1064) : AbstractC0175.m704(cls, AbstractC0175.f1065);
        int i = 1;
        if (m704 == null) {
            if (application != null) {
                return this.f1095.m723(cls);
            }
            if (ˊˋ.ⁱˊ == null) {
                ˊˋ.ⁱˊ = new ˊˋ(1);
            }
            ˊˋ.ⁱˊ.getClass();
            return ˏʻ.ˈ(cls);
        }
        C3125 c3125 = this.f1094;
        Bundle m6817 = c3125.m6817(str);
        if (m6817 == null) {
            m6817 = this.f1092;
        }
        if (m6817 == null) {
            c0181 = new C0181();
        } else {
            m6817.setClassLoader(C0181.class.getClassLoader());
            C4641 c4641 = new C4641(m6817.size());
            for (String str2 : m6817.keySet()) {
                c4641.put(str2, m6817.get(str2));
            }
            c0181 = new C0181(c4641.m9212());
        }
        C0178 c0178 = new C0178(str, c0181);
        c0178.m705(c3125, c0184);
        EnumC0199 enumC0199 = c0184.f1076;
        if (enumC0199 == EnumC0199.f1104 || enumC0199.m733(EnumC0199.f1102)) {
            c3125.m6839();
        } else {
            c0184.m714(new C0210(c0184, i, c3125));
        }
        AbstractC0196 m703 = (!isAssignableFrom || application == null) ? AbstractC0175.m703(cls, m704, c0181) : AbstractC0175.m703(cls, m704, application, c0181);
        m703.m727("androidx.lifecycle.savedstate.vm.tag", c0178);
        return m703;
    }

    @Override // androidx.lifecycle.InterfaceC0189
    /* renamed from: ⁱˊ */
    public final AbstractC0196 mo719(C2461 c2461, C1079 c1079) {
        return mo718(c2461.mo5571(), c1079);
    }

    @Override // androidx.lifecycle.InterfaceC0189
    /* renamed from: ﹳٴ */
    public final AbstractC0196 mo720(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return m726(cls, canonicalName);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }
}
