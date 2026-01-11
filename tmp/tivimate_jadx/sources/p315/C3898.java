package p315;

import androidx.datastore.preferences.protobuf.AbstractC0003;
import androidx.datastore.preferences.protobuf.AbstractC0013;
import androidx.datastore.preferences.protobuf.C0054;
import androidx.datastore.preferences.protobuf.C0067;
import androidx.datastore.preferences.protobuf.InvalidProtocolBufferException;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;
import kotlin.NoWhenBranchMatchedException;
import p010.AbstractC0844;
import p090.C1773;
import p164.C2569;
import p164.C2584;
import p164.C2586;
import p223.C3053;
import p223.C3054;
import p223.C3055;
import p223.C3056;
import p223.C3057;
import p223.C3059;
import p430.AbstractC5099;

/* renamed from: ᴵʼ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3898 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C3898 f15161 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m8076(Object obj, C2569 c2569) {
        AbstractC0003 m244;
        Map m8080 = ((C3899) obj).m8080();
        C3057 m6583 = C3053.m6583();
        for (Map.Entry entry : m8080.entrySet()) {
            C3896 c3896 = (C3896) entry.getKey();
            Object value = entry.getValue();
            String str = c3896.f15159;
            if (value instanceof Boolean) {
                C3055 m6588 = C3056.m6588();
                boolean booleanValue = ((Boolean) value).booleanValue();
                m6588.m242();
                C3056.m6593((C3056) m6588.f425, booleanValue);
                m244 = m6588.m244();
            } else if (value instanceof Float) {
                C3055 m65882 = C3056.m6588();
                float floatValue = ((Number) value).floatValue();
                m65882.m242();
                C3056.m6594((C3056) m65882.f425, floatValue);
                m244 = m65882.m244();
            } else if (value instanceof Double) {
                C3055 m65883 = C3056.m6588();
                double doubleValue = ((Number) value).doubleValue();
                m65883.m242();
                C3056.m6590((C3056) m65883.f425, doubleValue);
                m244 = m65883.m244();
            } else if (value instanceof Integer) {
                C3055 m65884 = C3056.m6588();
                int intValue = ((Number) value).intValue();
                m65884.m242();
                C3056.m6591((C3056) m65884.f425, intValue);
                m244 = m65884.m244();
            } else if (value instanceof Long) {
                C3055 m65885 = C3056.m6588();
                long longValue = ((Number) value).longValue();
                m65885.m242();
                C3056.m6595((C3056) m65885.f425, longValue);
                m244 = m65885.m244();
            } else if (value instanceof String) {
                C3055 m65886 = C3056.m6588();
                m65886.m242();
                C3056.m6589((C3056) m65886.f425, (String) value);
                m244 = m65886.m244();
            } else if (value instanceof Set) {
                C3055 m65887 = C3056.m6588();
                C3054 m6606 = C3059.m6606();
                m6606.m242();
                C3059.m6607((C3059) m6606.f425, (Set) value);
                m65887.m242();
                C3056.m6592((C3056) m65887.f425, (C3059) m6606.m244());
                m244 = m65887.m244();
            } else {
                if (!(value instanceof byte[])) {
                    throw new IllegalStateException("PreferencesSerializer does not support type: ".concat(value.getClass().getName()));
                }
                C3055 m65888 = C3056.m6588();
                byte[] bArr = (byte[]) value;
                C0054 m353 = C0054.m353(bArr, 0, bArr.length);
                m65888.m242();
                C3056.m6587((C3056) m65888.f425, m353);
                m244 = m65888.m244();
            }
            m6583.getClass();
            str.getClass();
            m6583.m242();
            C3053.m6584((C3053) m6583.f425).put(str, (C3056) m244);
        }
        C3053 c3053 = (C3053) m6583.m244();
        C1773 c1773 = new C1773(c2569, 2);
        int mo154 = c3053.mo154(null);
        Logger logger = C0067.f514;
        if (mo154 > 4096) {
            mo154 = 4096;
        }
        C0067 c0067 = new C0067(c1773, mo154);
        c3053.mo153(c0067);
        if (c0067.f516 > 0) {
            c0067.m406();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3899 m8077(C2586 c2586) {
        byte[] bArr;
        try {
            C3053 m6582 = C3053.m6582(new C2584(1, c2586));
            C3899 c3899 = new C3899(false);
            AbstractC3901[] abstractC3901Arr = (AbstractC3901[]) Arrays.copyOf(new AbstractC3901[0], 0);
            c3899.m8079();
            if (abstractC3901Arr.length > 0) {
                AbstractC3901 abstractC3901 = abstractC3901Arr[0];
                throw null;
            }
            for (Map.Entry entry : m6582.m6585().entrySet()) {
                String str = (String) entry.getKey();
                C3056 c3056 = (C3056) entry.getValue();
                int m6597 = c3056.m6597();
                switch (m6597 == 0 ? -1 : AbstractC3897.f15160[AbstractC0844.m3018(m6597)]) {
                    case -1:
                        throw new IOException("Value case is null.", null);
                    case 0:
                    default:
                        throw new NoWhenBranchMatchedException();
                    case 1:
                        c3899.m8078(new C3896(str), Boolean.valueOf(c3056.m6601()));
                        break;
                    case 2:
                        c3899.m8078(new C3896(str), Float.valueOf(c3056.m6600()));
                        break;
                    case 3:
                        c3899.m8078(new C3896(str), Double.valueOf(c3056.m6602()));
                        break;
                    case 4:
                        c3899.m8078(new C3896(str), Integer.valueOf(c3056.m6596()));
                        break;
                    case 5:
                        c3899.m8078(new C3896(str), Long.valueOf(c3056.m6604()));
                        break;
                    case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                        c3899.m8078(new C3896(str), c3056.m6599());
                        break;
                    case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                        c3899.m8078(new C3896(str), AbstractC5099.m10031(c3056.m6603().m6608()));
                        break;
                    case C3056.BYTES_FIELD_NUMBER /* 8 */:
                        C3896 c3896 = new C3896(str);
                        C0054 m6598 = c3056.m6598();
                        int size = m6598.size();
                        if (size == 0) {
                            bArr = AbstractC0013.f388;
                        } else {
                            byte[] bArr2 = new byte[size];
                            m6598.mo355(size, bArr2);
                            bArr = bArr2;
                        }
                        c3899.m8078(c3896, bArr);
                        break;
                    case 9:
                        throw new IOException("Value not set.", null);
                }
            }
            return new C3899(new LinkedHashMap(c3899.m8080()), true);
        } catch (InvalidProtocolBufferException e) {
            throw new IOException("Unable to parse preferences proto.", e);
        }
    }
}
