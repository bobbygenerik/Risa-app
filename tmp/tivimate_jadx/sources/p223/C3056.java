package p223;

import androidx.datastore.preferences.protobuf.AbstractC0003;
import androidx.datastore.preferences.protobuf.AbstractC0031;
import androidx.datastore.preferences.protobuf.C0028;
import androidx.datastore.preferences.protobuf.C0054;
import androidx.datastore.preferences.protobuf.InterfaceC0019;
import p010.AbstractC0844;

/* renamed from: ˏᵢ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3056 extends AbstractC0003 {
    public static final int BOOLEAN_FIELD_NUMBER = 1;
    public static final int BYTES_FIELD_NUMBER = 8;
    private static final C3056 DEFAULT_INSTANCE;
    public static final int DOUBLE_FIELD_NUMBER = 7;
    public static final int FLOAT_FIELD_NUMBER = 2;
    public static final int INTEGER_FIELD_NUMBER = 3;
    public static final int LONG_FIELD_NUMBER = 4;
    private static volatile InterfaceC0019 PARSER = null;
    public static final int STRING_FIELD_NUMBER = 5;
    public static final int STRING_SET_FIELD_NUMBER = 6;
    private int valueCase_ = 0;
    private Object value_;

    static {
        C3056 c3056 = new C3056();
        DEFAULT_INSTANCE = c3056;
        AbstractC0003.m144(C3056.class, c3056);
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static C3056 m6586() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static void m6587(C3056 c3056, C0054 c0054) {
        c3056.getClass();
        c3056.valueCase_ = 8;
        c3056.value_ = c0054;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static C3055 m6588() {
        return (C3055) ((AbstractC0031) DEFAULT_INSTANCE.mo149(5));
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static void m6589(C3056 c3056, String str) {
        c3056.getClass();
        c3056.valueCase_ = 5;
        c3056.value_ = str;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static void m6590(C3056 c3056, double d) {
        c3056.valueCase_ = 7;
        c3056.value_ = Double.valueOf(d);
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static void m6591(C3056 c3056, int i) {
        c3056.valueCase_ = 3;
        c3056.value_ = Integer.valueOf(i);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static void m6592(C3056 c3056, C3059 c3059) {
        c3056.getClass();
        c3056.value_ = c3059;
        c3056.valueCase_ = 6;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static void m6593(C3056 c3056, boolean z) {
        c3056.valueCase_ = 1;
        c3056.value_ = Boolean.valueOf(z);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static void m6594(C3056 c3056, float f) {
        c3056.valueCase_ = 2;
        c3056.value_ = Float.valueOf(f);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static void m6595(C3056 c3056, long j) {
        c3056.valueCase_ = 4;
        c3056.value_ = Long.valueOf(j);
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final int m6596() {
        if (this.valueCase_ == 3) {
            return ((Integer) this.value_).intValue();
        }
        return 0;
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
                return new C0028(DEFAULT_INSTANCE, "\u0001\b\u0001\u0000\u0001\b\b\u0000\u0000\u0000\u0001:\u0000\u00024\u0000\u00037\u0000\u00045\u0000\u0005;\u0000\u0006<\u0000\u00073\u0000\b=\u0000", new Object[]{"value_", "valueCase_", C3059.class});
            case 3:
                return new C3056();
            case 4:
                return new AbstractC0031(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case STRING_SET_FIELD_NUMBER /* 6 */:
                InterfaceC0019 interfaceC00192 = PARSER;
                if (interfaceC00192 != null) {
                    return interfaceC00192;
                }
                synchronized (C3056.class) {
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

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int m6597() {
        switch (this.valueCase_) {
            case 0:
                return 9;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case STRING_SET_FIELD_NUMBER /* 6 */:
                return 6;
            case DOUBLE_FIELD_NUMBER /* 7 */:
                return 7;
            case BYTES_FIELD_NUMBER /* 8 */:
                return 8;
            default:
                return 0;
        }
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final C0054 m6598() {
        return this.valueCase_ == 8 ? (C0054) this.value_ : C0054.f480;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String m6599() {
        return this.valueCase_ == 5 ? (String) this.value_ : "";
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final float m6600() {
        if (this.valueCase_ == 2) {
            return ((Float) this.value_).floatValue();
        }
        return 0.0f;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final boolean m6601() {
        if (this.valueCase_ == 1) {
            return ((Boolean) this.value_).booleanValue();
        }
        return false;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final double m6602() {
        if (this.valueCase_ == 7) {
            return ((Double) this.value_).doubleValue();
        }
        return 0.0d;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C3059 m6603() {
        return this.valueCase_ == 6 ? (C3059) this.value_ : C3059.m6605();
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final long m6604() {
        if (this.valueCase_ == 4) {
            return ((Long) this.value_).longValue();
        }
        return 0L;
    }
}
