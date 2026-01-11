package com.google.crypto.tink.shaded.protobuf;

import androidx.datastore.preferences.protobuf.AbstractC0016;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import p307.AbstractC3740;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0725 extends AbstractC0749 {
    private static final int MEMOIZED_SERIALIZED_SIZE_MASK = Integer.MAX_VALUE;
    private static final int MUTABLE_FLAG_MASK = Integer.MIN_VALUE;
    static final int UNINITIALIZED_HASH_CODE = 0;
    static final int UNINITIALIZED_SERIALIZED_SIZE = Integer.MAX_VALUE;
    private static Map<Object, AbstractC0725> defaultInstanceMap = new ConcurrentHashMap();
    private int memoizedSerializedSize;
    protected C0704 unknownFields;

    public AbstractC0725() {
        this.memoizedHashCode = 0;
        this.memoizedSerializedSize = -1;
        this.unknownFields = C0704.f2980;
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static AbstractC0725 m2554(AbstractC0725 abstractC0725, AbstractC0016 abstractC0016, C0713 c0713) {
        AbstractC0725 m2569 = abstractC0725.m2569();
        try {
            C0696 c0696 = C0696.f2964;
            c0696.getClass();
            InterfaceC0711 m2472 = c0696.m2472(m2569.getClass());
            C0730 c0730 = (C0730) abstractC0016.f396;
            if (c0730 == null) {
                c0730 = new C0730(abstractC0016);
            }
            m2472.mo2519(m2569, c0730, c0713);
            m2472.mo2521(m2569);
            return m2569;
        } catch (InvalidProtocolBufferException e) {
            if (e.f2962) {
                throw new IOException(e.getMessage(), e);
            }
            throw e;
        } catch (UninitializedMessageException e2) {
            throw new IOException(e2.getMessage());
        } catch (IOException e3) {
            if (e3.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e3.getCause());
            }
            throw new IOException(e3.getMessage(), e3);
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e4.getCause());
            }
            throw e4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.gms.internal.measurement.ˈʻ, java.lang.Object] */
    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static AbstractC0725 m2555(AbstractC0725 abstractC0725, byte[] bArr, C0713 c0713) {
        int length = bArr.length;
        if (length != 0) {
            AbstractC0725 m2569 = abstractC0725.m2569();
            try {
                C0696 c0696 = C0696.f2964;
                c0696.getClass();
                InterfaceC0711 m2472 = c0696.m2472(m2569.getClass());
                ?? obj = new Object();
                c0713.getClass();
                m2472.mo2523(m2569, bArr, 0, length, obj);
                m2472.mo2521(m2569);
                abstractC0725 = m2569;
            } catch (InvalidProtocolBufferException e) {
                if (e.f2962) {
                    throw new IOException(e.getMessage(), e);
                }
                throw e;
            } catch (UninitializedMessageException e2) {
                throw new IOException(e2.getMessage());
            } catch (IOException e3) {
                if (e3.getCause() instanceof InvalidProtocolBufferException) {
                    throw ((InvalidProtocolBufferException) e3.getCause());
                }
                throw new IOException(e3.getMessage(), e3);
            } catch (IndexOutOfBoundsException unused) {
                throw InvalidProtocolBufferException.m2464();
            }
        }
        m2561(abstractC0725);
        return abstractC0725;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static final boolean m2556(AbstractC0725 abstractC0725, boolean z) {
        byte byteValue = ((Byte) abstractC0725.mo2566(1)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        C0696 c0696 = C0696.f2964;
        c0696.getClass();
        boolean mo2515 = c0696.m2472(abstractC0725.getClass()).mo2515(abstractC0725);
        if (z) {
            abstractC0725.mo2566(2);
        }
        return mo2515;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public static AbstractC0725 m2557(AbstractC0725 abstractC0725, AbstractC0744 abstractC0744, C0713 c0713) {
        C0740 c0740 = (C0740) abstractC0744;
        C0697 m227 = AbstractC0016.m227(c0740.f3045, c0740.mo2655(), c0740.size(), true);
        AbstractC0725 m2554 = m2554(abstractC0725, m227, c0713);
        m227.mo211(0);
        m2561(m2554);
        return m2554;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static void m2558(Class cls, AbstractC0725 abstractC0725) {
        abstractC0725.m2571();
        defaultInstanceMap.put(cls, abstractC0725);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static AbstractC0725 m2559(Class cls) {
        AbstractC0725 abstractC0725 = defaultInstanceMap.get(cls);
        if (abstractC0725 == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                abstractC0725 = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (abstractC0725 != null) {
            return abstractC0725;
        }
        AbstractC0725 mo2573 = ((AbstractC0725) AbstractC0733.m2620(cls)).mo2573();
        if (mo2573 == null) {
            throw new IllegalStateException();
        }
        defaultInstanceMap.put(cls, mo2573);
        return mo2573;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static Object m2560(Method method, AbstractC0725 abstractC0725, Object... objArr) {
        try {
            return method.invoke(abstractC0725, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static void m2561(AbstractC0725 abstractC0725) {
        if (abstractC0725 != null && !m2556(abstractC0725, true)) {
            throw new IOException(new UninitializedMessageException().getMessage());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0696 c0696 = C0696.f2964;
        c0696.getClass();
        return c0696.m2472(getClass()).mo2520(this, (AbstractC0725) obj);
    }

    public final int hashCode() {
        if (m2564()) {
            C0696 c0696 = C0696.f2964;
            c0696.getClass();
            return c0696.m2472(getClass()).mo2516(this);
        }
        if (this.memoizedHashCode == 0) {
            C0696 c06962 = C0696.f2964;
            c06962.getClass();
            this.memoizedHashCode = c06962.m2472(getClass()).mo2516(this);
        }
        return this.memoizedHashCode;
    }

    public final String toString() {
        String obj = super.toString();
        char[] cArr = AbstractC0707.f2994;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(obj);
        AbstractC0707.m2509(this, sb, 0);
        return sb.toString();
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final AbstractC0701 m2562() {
        AbstractC0701 abstractC0701 = (AbstractC0701) mo2566(5);
        abstractC0701.m2484(this);
        return abstractC0701;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final AbstractC0701 m2563() {
        return (AbstractC0701) mo2566(5);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean m2564() {
        return (this.memoizedSerializedSize & MUTABLE_FLAG_MASK) != 0;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void m2565(int i) {
        if (i < 0) {
            throw new IllegalStateException(AbstractC3740.m7932(i, "serialized size must be non-negative, was "));
        }
        this.memoizedSerializedSize = (i & Integer.MAX_VALUE) | (this.memoizedSerializedSize & MUTABLE_FLAG_MASK);
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public abstract Object mo2566(int i);

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final InterfaceC0717 m2568() {
        return (InterfaceC0717) mo2566(7);
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final AbstractC0725 m2569() {
        return (AbstractC0725) mo2566(4);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0749
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void mo2570(C0751 c0751) {
        C0696 c0696 = C0696.f2964;
        c0696.getClass();
        InterfaceC0711 m2472 = c0696.m2472(getClass());
        C0729 c0729 = c0751.f3079;
        if (c0729 == null) {
            c0729 = new C0729(c0751);
        }
        m2472.mo2514(this, c0729);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m2571() {
        this.memoizedSerializedSize &= Integer.MAX_VALUE;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0749
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int mo2572(InterfaceC0711 interfaceC0711) {
        int mo2518;
        int mo25182;
        if (m2564()) {
            if (interfaceC0711 == null) {
                C0696 c0696 = C0696.f2964;
                c0696.getClass();
                mo25182 = c0696.m2472(getClass()).mo2518(this);
            } else {
                mo25182 = interfaceC0711.mo2518(this);
            }
            if (mo25182 >= 0) {
                return mo25182;
            }
            throw new IllegalStateException(AbstractC3740.m7932(mo25182, "serialized size must be non-negative, was "));
        }
        int i = this.memoizedSerializedSize;
        if ((i & Integer.MAX_VALUE) != Integer.MAX_VALUE) {
            return i & Integer.MAX_VALUE;
        }
        if (interfaceC0711 == null) {
            C0696 c06962 = C0696.f2964;
            c06962.getClass();
            mo2518 = c06962.m2472(getClass()).mo2518(this);
        } else {
            mo2518 = interfaceC0711.mo2518(this);
        }
        m2565(mo2518);
        return mo2518;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0749
    /* renamed from: ﹳᐧ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final AbstractC0701 mo2567() {
        return (AbstractC0701) mo2566(5);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0742
    /* renamed from: ﾞʻ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final AbstractC0725 mo2573() {
        return (AbstractC0725) mo2566(6);
    }
}
