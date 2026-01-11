package androidx.datastore.preferences.protobuf;

import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import p307.AbstractC3740;

/* renamed from: androidx.datastore.preferences.protobuf.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0003 extends AbstractC0063 {
    private static final int MEMOIZED_SERIALIZED_SIZE_MASK = Integer.MAX_VALUE;
    private static final int MUTABLE_FLAG_MASK = Integer.MIN_VALUE;
    static final int UNINITIALIZED_HASH_CODE = 0;
    static final int UNINITIALIZED_SERIALIZED_SIZE = Integer.MAX_VALUE;
    private static Map<Object, AbstractC0003> defaultInstanceMap = new ConcurrentHashMap();
    private int memoizedSerializedSize;
    protected C0015 unknownFields;

    public AbstractC0003() {
        this.memoizedHashCode = 0;
        this.memoizedSerializedSize = -1;
        this.unknownFields = C0015.f390;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static void m144(Class cls, AbstractC0003 abstractC0003) {
        abstractC0003.m152();
        defaultInstanceMap.put(cls, abstractC0003);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static AbstractC0003 m145(Class cls) {
        AbstractC0003 abstractC0003 = defaultInstanceMap.get(cls);
        if (abstractC0003 == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                abstractC0003 = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (abstractC0003 != null) {
            return abstractC0003;
        }
        AbstractC0003 abstractC00032 = (AbstractC0003) ((AbstractC0003) AbstractC0004.m158(cls)).mo149(6);
        if (abstractC00032 == null) {
            throw new IllegalStateException();
        }
        defaultInstanceMap.put(cls, abstractC00032);
        return abstractC00032;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static Object m146(Method method, AbstractC0003 abstractC0003, Object... objArr) {
        try {
            return method.invoke(abstractC0003, objArr);
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

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final boolean m147(AbstractC0003 abstractC0003, boolean z) {
        byte byteValue = ((Byte) abstractC0003.mo149(1)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        C0034 c0034 = C0034.f426;
        c0034.getClass();
        boolean mo171 = c0034.m254(abstractC0003.getClass()).mo171(abstractC0003);
        if (z) {
            abstractC0003.mo149(2);
        }
        return mo171;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0034 c0034 = C0034.f426;
        c0034.getClass();
        return c0034.m254(getClass()).mo174(this, (AbstractC0003) obj);
    }

    public final int hashCode() {
        if (m151()) {
            C0034 c0034 = C0034.f426;
            c0034.getClass();
            return c0034.m254(getClass()).mo178(this);
        }
        if (this.memoizedHashCode == 0) {
            C0034 c00342 = C0034.f426;
            c00342.getClass();
            this.memoizedHashCode = c00342.m254(getClass()).mo178(this);
        }
        return this.memoizedHashCode;
    }

    public final String toString() {
        String obj = super.toString();
        char[] cArr = AbstractC0040.f435;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(obj);
        AbstractC0040.m283(this, sb, 0);
        return sb.toString();
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final AbstractC0003 m148() {
        return (AbstractC0003) mo149(4);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public abstract Object mo149(int i);

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m150(int i) {
        if (i < 0) {
            throw new IllegalStateException(AbstractC3740.m7932(i, "serialized size must be non-negative, was "));
        }
        this.memoizedSerializedSize = (i & Integer.MAX_VALUE) | (this.memoizedSerializedSize & MUTABLE_FLAG_MASK);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean m151() {
        return (this.memoizedSerializedSize & MUTABLE_FLAG_MASK) != 0;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m152() {
        this.memoizedSerializedSize &= Integer.MAX_VALUE;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0063
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo153(C0067 c0067) {
        C0034 c0034 = C0034.f426;
        c0034.getClass();
        InterfaceC0006 m254 = c0034.m254(getClass());
        C0010 c0010 = c0067.f515;
        if (c0010 == null) {
            c0010 = new C0010(c0067);
        }
        m254.mo173(this, c0010);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0063
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int mo154(InterfaceC0006 interfaceC0006) {
        int mo170;
        int mo1702;
        if (m151()) {
            if (interfaceC0006 == null) {
                C0034 c0034 = C0034.f426;
                c0034.getClass();
                mo1702 = c0034.m254(getClass()).mo170(this);
            } else {
                mo1702 = interfaceC0006.mo170(this);
            }
            if (mo1702 >= 0) {
                return mo1702;
            }
            throw new IllegalStateException(AbstractC3740.m7932(mo1702, "serialized size must be non-negative, was "));
        }
        int i = this.memoizedSerializedSize;
        if ((i & Integer.MAX_VALUE) != Integer.MAX_VALUE) {
            return i & Integer.MAX_VALUE;
        }
        if (interfaceC0006 == null) {
            C0034 c00342 = C0034.f426;
            c00342.getClass();
            mo170 = c00342.m254(getClass()).mo170(this);
        } else {
            mo170 = interfaceC0006.mo170(this);
        }
        m150(mo170);
        return mo170;
    }
}
