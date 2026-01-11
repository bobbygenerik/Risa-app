package p118;

import j$.util.DesugarCollections;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import p085.C1734;
import p085.InterfaceC1731;
import p085.InterfaceC1732;
import p085.InterfaceC1733;
import p093.EnumC1853;
import p099.C1905;

/* renamed from: ˈʾ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1996 implements InterfaceC1732 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final C1905 f7854;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C1734 f7855;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final C1734 f7856;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final Charset f7857 = Charset.forName("UTF-8");

    /* renamed from: ʽ, reason: contains not printable characters */
    public final HashMap f7858;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final InterfaceC1731 f7859;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C1997 f7860 = new C1997(this);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final HashMap f7861;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public OutputStream f7862;

    static {
        C1999 c1999 = new C1999(1);
        HashMap hashMap = new HashMap();
        hashMap.put(InterfaceC1995.class, c1999);
        f7855 = new C1734("key", DesugarCollections.unmodifiableMap(new HashMap(hashMap)));
        C1999 c19992 = new C1999(2);
        HashMap hashMap2 = new HashMap();
        hashMap2.put(InterfaceC1995.class, c19992);
        f7856 = new C1734("value", DesugarCollections.unmodifiableMap(new HashMap(hashMap2)));
        f7854 = new C1905(1);
    }

    public C1996(ByteArrayOutputStream byteArrayOutputStream, HashMap hashMap, HashMap hashMap2, InterfaceC1731 interfaceC1731) {
        this.f7862 = byteArrayOutputStream;
        this.f7861 = hashMap;
        this.f7858 = hashMap2;
        this.f7859 = interfaceC1731;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static int m4973(C1734 c1734) {
        InterfaceC1995 interfaceC1995 = (InterfaceC1995) ((Annotation) c1734.f7085.get(InterfaceC1995.class));
        if (interfaceC1995 != null) {
            return ((C1999) interfaceC1995).f7868;
        }
        throw new RuntimeException("Field has no @Protobuf config");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.io.OutputStream, ˈʾ.ⁱˊ] */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m4974(InterfaceC1731 interfaceC1731, C1734 c1734, Object obj, boolean z) {
        ?? outputStream = new OutputStream();
        outputStream.f7867 = 0L;
        try {
            OutputStream outputStream2 = this.f7862;
            this.f7862 = outputStream;
            try {
                interfaceC1731.mo4342(obj, this);
                this.f7862 = outputStream2;
                long j = outputStream.f7867;
                outputStream.close();
                if (z && j == 0) {
                    return;
                }
                m4977((m4973(c1734) << 3) | 2);
                m4979(j);
                interfaceC1731.mo4342(obj, this);
            } catch (Throwable th) {
                this.f7862 = outputStream2;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                outputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    @Override // p085.InterfaceC1732
    /* renamed from: ʽ */
    public final InterfaceC1732 mo4676(C1734 c1734, double d) {
        m4975(c1734, d, true);
        return this;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m4975(C1734 c1734, double d, boolean z) {
        if (z && d == 0.0d) {
            return;
        }
        m4977((m4973(c1734) << 3) | 1);
        this.f7862.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(d).array());
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m4976(C1734 c1734, int i, boolean z) {
        if (z && i == 0) {
            return;
        }
        InterfaceC1995 interfaceC1995 = (InterfaceC1995) ((Annotation) c1734.f7085.get(InterfaceC1995.class));
        if (interfaceC1995 == null) {
            throw new RuntimeException("Field has no @Protobuf config");
        }
        m4977(((C1999) interfaceC1995).f7868 << 3);
        m4977(i);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m4977(int i) {
        while ((i & (-128)) != 0) {
            this.f7862.write((i & 127) | 128);
            i >>>= 7;
        }
        this.f7862.write(i & 127);
    }

    @Override // p085.InterfaceC1732
    /* renamed from: ᵎﹶ */
    public final InterfaceC1732 mo4677(C1734 c1734, boolean z) {
        m4976(c1734, z ? 1 : 0, true);
        return this;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m4978(C1734 c1734, Object obj, boolean z) {
        if (obj == null) {
            return;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z && charSequence.length() == 0) {
                return;
            }
            m4977((m4973(c1734) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f7857);
            m4977(bytes.length);
            this.f7862.write(bytes);
            return;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                m4978(c1734, it.next(), false);
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                m4974(f7854, c1734, (Map.Entry) it2.next(), false);
            }
            return;
        }
        if (obj instanceof Double) {
            m4975(c1734, ((Double) obj).doubleValue(), z);
            return;
        }
        if (obj instanceof Float) {
            float floatValue = ((Float) obj).floatValue();
            if (z && floatValue == 0.0f) {
                return;
            }
            m4977((m4973(c1734) << 3) | 5);
            this.f7862.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(floatValue).array());
            return;
        }
        if (obj instanceof Number) {
            long longValue = ((Number) obj).longValue();
            if (z && longValue == 0) {
                return;
            }
            InterfaceC1995 interfaceC1995 = (InterfaceC1995) ((Annotation) c1734.f7085.get(InterfaceC1995.class));
            if (interfaceC1995 == null) {
                throw new RuntimeException("Field has no @Protobuf config");
            }
            m4977(((C1999) interfaceC1995).f7868 << 3);
            m4979(longValue);
            return;
        }
        if (obj instanceof Boolean) {
            m4976(c1734, ((Boolean) obj).booleanValue() ? 1 : 0, z);
            return;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z && bArr.length == 0) {
                return;
            }
            m4977((m4973(c1734) << 3) | 2);
            m4977(bArr.length);
            this.f7862.write(bArr);
            return;
        }
        InterfaceC1731 interfaceC1731 = (InterfaceC1731) this.f7861.get(obj.getClass());
        if (interfaceC1731 != null) {
            m4974(interfaceC1731, c1734, obj, z);
            return;
        }
        InterfaceC1733 interfaceC1733 = (InterfaceC1733) this.f7858.get(obj.getClass());
        if (interfaceC1733 != null) {
            C1997 c1997 = this.f7860;
            c1997.f7866 = false;
            c1997.f7863 = c1734;
            c1997.f7865 = z;
            interfaceC1733.mo4342(obj, c1997);
            return;
        }
        if (obj instanceof EnumC1853) {
            m4976(c1734, ((EnumC1853) obj).f7455, true);
        } else if (obj instanceof Enum) {
            m4976(c1734, ((Enum) obj).ordinal(), true);
        } else {
            m4974(this.f7859, c1734, obj, z);
        }
    }

    @Override // p085.InterfaceC1732
    /* renamed from: ⁱˊ */
    public final InterfaceC1732 mo4678(C1734 c1734, long j) {
        if (j == 0) {
            return this;
        }
        InterfaceC1995 interfaceC1995 = (InterfaceC1995) ((Annotation) c1734.f7085.get(InterfaceC1995.class));
        if (interfaceC1995 == null) {
            throw new RuntimeException("Field has no @Protobuf config");
        }
        m4977(((C1999) interfaceC1995).f7868 << 3);
        m4979(j);
        return this;
    }

    @Override // p085.InterfaceC1732
    /* renamed from: ﹳٴ */
    public final InterfaceC1732 mo4679(C1734 c1734, int i) {
        m4976(c1734, i, true);
        return this;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m4979(long j) {
        while (((-128) & j) != 0) {
            this.f7862.write((((int) j) & 127) | 128);
            j >>>= 7;
        }
        this.f7862.write(((int) j) & 127);
    }

    @Override // p085.InterfaceC1732
    /* renamed from: ﾞᴵ */
    public final InterfaceC1732 mo4680(C1734 c1734, Object obj) {
        m4978(c1734, obj, true);
        return this;
    }
}
