package p223;

import androidx.datastore.preferences.protobuf.AbstractC0003;
import androidx.datastore.preferences.protobuf.AbstractC0013;
import androidx.datastore.preferences.protobuf.AbstractC0016;
import androidx.datastore.preferences.protobuf.AbstractC0031;
import androidx.datastore.preferences.protobuf.C0007;
import androidx.datastore.preferences.protobuf.C0027;
import androidx.datastore.preferences.protobuf.C0028;
import androidx.datastore.preferences.protobuf.C0034;
import androidx.datastore.preferences.protobuf.C0043;
import androidx.datastore.preferences.protobuf.C0055;
import androidx.datastore.preferences.protobuf.C0058;
import androidx.datastore.preferences.protobuf.InterfaceC0006;
import androidx.datastore.preferences.protobuf.InterfaceC0019;
import androidx.datastore.preferences.protobuf.InvalidProtocolBufferException;
import androidx.datastore.preferences.protobuf.UninitializedMessageException;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import p010.AbstractC0844;

/* renamed from: ˏᵢ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3053 extends AbstractC0003 {
    private static final C3053 DEFAULT_INSTANCE;
    private static volatile InterfaceC0019 PARSER = null;
    public static final int PREFERENCES_FIELD_NUMBER = 1;
    private C0027 preferences_ = C0027.f414;

    static {
        C3053 c3053 = new C3053();
        DEFAULT_INSTANCE = c3053;
        AbstractC0003.m144(C3053.class, c3053);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static C3053 m6582(InputStream inputStream) {
        AbstractC0016 c0007;
        C3053 c3053 = DEFAULT_INSTANCE;
        if (inputStream == null) {
            byte[] bArr = AbstractC0013.f388;
            int length = bArr.length;
            c0007 = new C0058(bArr, 0, length, false);
            try {
                c0007.mo213(length);
            } catch (InvalidProtocolBufferException e) {
                throw new IllegalArgumentException(e);
            }
        } else {
            c0007 = new C0007(inputStream);
        }
        C0055 m359 = C0055.m359();
        AbstractC0003 m148 = c3053.m148();
        try {
            C0034 c0034 = C0034.f426;
            c0034.getClass();
            InterfaceC0006 m254 = c0034.m254(m148.getClass());
            C0043 c0043 = (C0043) c0007.f396;
            if (c0043 == null) {
                c0043 = new C0043(c0007);
            }
            m254.mo175(m148, c0043, m359);
            m254.mo176(m148);
            if (AbstractC0003.m147(m148, true)) {
                return (C3053) m148;
            }
            throw new IOException(new UninitializedMessageException().getMessage());
        } catch (InvalidProtocolBufferException e2) {
            if (e2.f353) {
                throw new IOException(e2.getMessage(), e2);
            }
            throw e2;
        } catch (UninitializedMessageException e3) {
            throw new IOException(e3.getMessage());
        } catch (IOException e4) {
            if (e4.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e4.getCause());
            }
            throw new IOException(e4.getMessage(), e4);
        } catch (RuntimeException e5) {
            if (e5.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e5.getCause());
            }
            throw e5;
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static C3057 m6583() {
        return (C3057) ((AbstractC0031) DEFAULT_INSTANCE.mo149(5));
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static C0027 m6584(C3053 c3053) {
        C0027 c0027 = c3053.preferences_;
        if (!c0027.f415) {
            c3053.preferences_ = c0027.m235();
        }
        return c3053.preferences_;
    }

    /* JADX WARN: Type inference failed for: r4v13, types: [java.lang.Object, androidx.datastore.preferences.protobuf.ˈʿ] */
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
                return new C0028(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"preferences_", AbstractC3051.f11605});
            case 3:
                return new C3053();
            case 4:
                return new AbstractC0031(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                InterfaceC0019 interfaceC00192 = PARSER;
                if (interfaceC00192 != null) {
                    return interfaceC00192;
                }
                synchronized (C3053.class) {
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

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final Map m6585() {
        return DesugarCollections.unmodifiableMap(this.preferences_);
    }
}
