package p223;

import androidx.datastore.preferences.protobuf.AbstractC0003;
import androidx.datastore.preferences.protobuf.AbstractC0013;
import androidx.datastore.preferences.protobuf.AbstractC0031;
import androidx.datastore.preferences.protobuf.AbstractC0061;
import androidx.datastore.preferences.protobuf.C0028;
import androidx.datastore.preferences.protobuf.C0030;
import androidx.datastore.preferences.protobuf.InterfaceC0019;
import androidx.datastore.preferences.protobuf.InterfaceC0037;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.RandomAccess;
import java.util.Set;
import p010.AbstractC0844;

/* renamed from: ˏᵢ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3059 extends AbstractC0003 {
    private static final C3059 DEFAULT_INSTANCE;
    private static volatile InterfaceC0019 PARSER = null;
    public static final int STRINGS_FIELD_NUMBER = 1;
    private InterfaceC0037 strings_ = C0030.f421;

    static {
        C3059 c3059 = new C3059();
        DEFAULT_INSTANCE = c3059;
        AbstractC0003.m144(C3059.class, c3059);
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static C3059 m6605() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static C3054 m6606() {
        return (C3054) ((AbstractC0031) DEFAULT_INSTANCE.mo149(5));
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static void m6607(C3059 c3059, Set set) {
        InterfaceC0037 interfaceC0037 = c3059.strings_;
        if (!((AbstractC0061) interfaceC0037).f501) {
            C0030 c0030 = (C0030) interfaceC0037;
            int i = c0030.f422;
            c3059.strings_ = c0030.m240(i == 0 ? 10 : i * 2);
        }
        RandomAccess randomAccess = c3059.strings_;
        Charset charset = AbstractC0013.f389;
        if (randomAccess instanceof ArrayList) {
            ((ArrayList) randomAccess).ensureCapacity(set.size() + ((C0030) randomAccess).f422);
        }
        C0030 c00302 = (C0030) randomAccess;
        int i2 = c00302.f422;
        for (Object obj : set) {
            if (obj == null) {
                String str = "Element at index " + (c00302.f422 - i2) + " is null.";
                for (int i3 = c00302.f422 - 1; i3 >= i2; i3--) {
                    c00302.remove(i3);
                }
                throw new NullPointerException(str);
            }
            c00302.add(obj);
        }
    }

    /* JADX WARN: Type inference failed for: r4v12, types: [java.lang.Object, androidx.datastore.preferences.protobuf.ˈʿ] */
    @Override // androidx.datastore.preferences.protobuf.AbstractC0003
    /* renamed from: ʽ */
    public final Object mo149(int i) {
        InterfaceC0019 interfaceC0019;
        switch (AbstractC0844.m3018(i)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new C0028(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"strings_"});
            case 3:
                return new C3059();
            case 4:
                return new AbstractC0031(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                InterfaceC0019 interfaceC00192 = PARSER;
                if (interfaceC00192 != null) {
                    return interfaceC00192;
                }
                synchronized (C3059.class) {
                    try {
                        InterfaceC0019 interfaceC00193 = PARSER;
                        interfaceC0019 = interfaceC00193;
                        if (interfaceC00193 == null) {
                            ?? obj = new Object();
                            PARSER = obj;
                            interfaceC0019 = obj;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return interfaceC0019;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final InterfaceC0037 m6608() {
        return this.strings_;
    }
}
