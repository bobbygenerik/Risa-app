package androidx.datastore.preferences.protobuf;

import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import p223.C3056;

/* renamed from: androidx.datastore.preferences.protobuf.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0059 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final /* synthetic */ int f498 = 0;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f499;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0062 f500 = C0062.m371();

    static {
        new C0059(0);
    }

    public C0059() {
    }

    public C0059(int i) {
        m368();
        m368();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m367(C0067 c0067, EnumC0042 enumC0042, int i, Object obj) {
        if (enumC0042 == EnumC0042.f437) {
            c0067.m407(i, 3);
            ((AbstractC0063) obj).mo153(c0067);
            c0067.m407(i, 4);
            return;
        }
        c0067.m407(i, enumC0042.f441);
        switch (enumC0042.ordinal()) {
            case 0:
                c0067.m410(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                return;
            case 1:
                c0067.m384(Float.floatToRawIntBits(((Float) obj).floatValue()));
                return;
            case 2:
                c0067.m402(((Long) obj).longValue());
                return;
            case 3:
                c0067.m402(((Long) obj).longValue());
                return;
            case 4:
                c0067.m404(((Integer) obj).intValue());
                return;
            case 5:
                c0067.m410(((Long) obj).longValue());
                return;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                c0067.m384(((Integer) obj).intValue());
                return;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                c0067.m389(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                return;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                if (obj instanceof C0054) {
                    c0067.m395((C0054) obj);
                    return;
                } else {
                    c0067.m388((String) obj);
                    return;
                }
            case 9:
                ((AbstractC0063) obj).mo153(c0067);
                return;
            case 10:
                AbstractC0063 abstractC0063 = (AbstractC0063) obj;
                c0067.getClass();
                c0067.m400(((AbstractC0003) abstractC0063).mo154(null));
                abstractC0063.mo153(c0067);
                return;
            case 11:
                if (obj instanceof C0054) {
                    c0067.m395((C0054) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                int length = bArr.length;
                c0067.m400(length);
                c0067.m409(bArr, 0, length);
                return;
            case 12:
                c0067.m400(((Integer) obj).intValue());
                return;
            case 13:
                c0067.m404(((Integer) obj).intValue());
                return;
            case 14:
                c0067.m384(((Integer) obj).intValue());
                return;
            case 15:
                c0067.m410(((Long) obj).longValue());
                return;
            case 16:
                int intValue = ((Integer) obj).intValue();
                c0067.m400((intValue >> 31) ^ (intValue << 1));
                return;
            case 17:
                long longValue = ((Long) obj).longValue();
                c0067.m402((longValue >> 63) ^ (longValue << 1));
                return;
            default:
                return;
        }
    }

    public final Object clone() {
        C0059 c0059 = new C0059();
        C0062 c0062 = this.f500;
        if (c0062.f504.size() > 0) {
            Map.Entry m372 = c0062.m372(0);
            if (m372.getKey() != null) {
                throw new ClassCastException();
            }
            m372.getValue();
            throw null;
        }
        Iterator it = c0062.m373().iterator();
        if (!it.hasNext()) {
            return c0059;
        }
        Map.Entry entry = (Map.Entry) it.next();
        if (entry.getKey() != null) {
            throw new ClassCastException();
        }
        entry.getValue();
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0059) {
            return this.f500.equals(((C0059) obj).f500);
        }
        return false;
    }

    public final int hashCode() {
        return this.f500.hashCode();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m368() {
        if (this.f499) {
            return;
        }
        C0062 c0062 = this.f500;
        int size = c0062.f504.size();
        for (int i = 0; i < size; i++) {
            Map.Entry m372 = c0062.m372(i);
            if (m372.getValue() instanceof AbstractC0003) {
                AbstractC0003 abstractC0003 = (AbstractC0003) m372.getValue();
                abstractC0003.getClass();
                C0034 c0034 = C0034.f426;
                c0034.getClass();
                c0034.m254(abstractC0003.getClass()).mo176(abstractC0003);
                abstractC0003.m152();
            }
        }
        if (!c0062.f503) {
            if (c0062.f504.size() > 0) {
                c0062.m372(0).getKey().getClass();
                throw new ClassCastException();
            }
            Iterator it = c0062.m373().iterator();
            if (it.hasNext()) {
                ((Map.Entry) it.next()).getKey().getClass();
                throw new ClassCastException();
            }
        }
        if (!c0062.f503) {
            c0062.f506 = c0062.f506.isEmpty() ? Collections.EMPTY_MAP : DesugarCollections.unmodifiableMap(c0062.f506);
            c0062.f507 = c0062.f507.isEmpty() ? Collections.EMPTY_MAP : DesugarCollections.unmodifiableMap(c0062.f507);
            c0062.f503 = true;
        }
        this.f499 = true;
    }
}
