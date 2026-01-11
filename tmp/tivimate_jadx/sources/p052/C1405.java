package p052;

import java.math.BigDecimal;
import p035.AbstractC1220;
import p164.C2599;
import p223.C3056;
import p435.AbstractC5154;

/* renamed from: ʽᴵ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1405 extends AbstractC1430 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f5507;

    public /* synthetic */ C1405(int i) {
        this.f5507 = i;
    }

    public final String toString() {
        switch (this.f5507) {
            case 0:
                return "JsonAdapter(String)";
            case 1:
                return "JsonAdapter(Boolean)";
            case 2:
                return "JsonAdapter(Byte)";
            case 3:
                return "JsonAdapter(Character)";
            case 4:
                return "JsonAdapter(Double)";
            case 5:
                return "JsonAdapter(Float)";
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return "JsonAdapter(Integer)";
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return "JsonAdapter(Long)";
            default:
                return "JsonAdapter(Short)";
        }
    }

    @Override // p052.AbstractC1430
    /* renamed from: ˑﹳ */
    public final void mo4119(AbstractC1429 abstractC1429, Object obj) {
        switch (this.f5507) {
            case 0:
                abstractC1429.mo4186((String) obj);
                return;
            case 1:
                boolean booleanValue = ((Boolean) obj).booleanValue();
                C1425 c1425 = (C1425) abstractC1429;
                if (c1425.f5591) {
                    throw new IllegalStateException("Boolean cannot be used as a map key in JSON at path " + c1425.m4193());
                }
                c1425.m4184();
                c1425.m4179();
                c1425.f5575.mo5739(booleanValue ? "true" : "false");
                int[] iArr = c1425.f5588;
                int i = c1425.f5587 - 1;
                iArr[i] = iArr[i] + 1;
                return;
            case 2:
                abstractC1429.mo4187(((Byte) obj).intValue() & 255);
                return;
            case 3:
                abstractC1429.mo4186(((Character) obj).toString());
                return;
            case 4:
                double doubleValue = ((Double) obj).doubleValue();
                C1425 c14252 = (C1425) abstractC1429;
                c14252.getClass();
                if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                    throw new IllegalArgumentException("Numeric values must be finite, but was " + doubleValue);
                }
                if (c14252.f5591) {
                    c14252.f5591 = false;
                    c14252.mo4183(Double.toString(doubleValue));
                    return;
                }
                c14252.m4184();
                c14252.m4179();
                c14252.f5575.mo5739(Double.toString(doubleValue));
                int[] iArr2 = c14252.f5588;
                int i2 = c14252.f5587 - 1;
                iArr2[i2] = iArr2[i2] + 1;
                return;
            case 5:
                Float f = (Float) obj;
                f.getClass();
                abstractC1429.mo4180(f);
                return;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                abstractC1429.mo4187(((Integer) obj).intValue());
                return;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                abstractC1429.mo4187(((Long) obj).longValue());
                return;
            default:
                abstractC1429.mo4187(((Short) obj).intValue());
                return;
        }
    }

    @Override // p052.AbstractC1430
    /* renamed from: ⁱˊ */
    public final Object mo4120(AbstractC1413 abstractC1413) {
        long parseLong;
        switch (this.f5507) {
            case 0:
                return abstractC1413.mo4139();
            case 1:
                C1403 c1403 = (C1403) abstractC1413;
                int i = c1403.f5501;
                if (i == 0) {
                    i = c1403.m4134();
                }
                boolean z = false;
                if (i == 5) {
                    c1403.f5501 = 0;
                    int[] iArr = c1403.f5525;
                    int i2 = c1403.f5524 - 1;
                    iArr[i2] = iArr[i2] + 1;
                    z = true;
                } else {
                    if (i != 6) {
                        throw new RuntimeException("Expected a boolean but was " + AbstractC1220.m3776(c1403.mo4127()) + " at path " + c1403.m4151());
                    }
                    c1403.f5501 = 0;
                    int[] iArr2 = c1403.f5525;
                    int i3 = c1403.f5524 - 1;
                    iArr2[i3] = iArr2[i3] + 1;
                }
                return Boolean.valueOf(z);
            case 2:
                return Byte.valueOf((byte) AbstractC1414.m4156(abstractC1413, "a byte", -128, 255));
            case 3:
                String mo4139 = abstractC1413.mo4139();
                if (mo4139.length() <= 1) {
                    return Character.valueOf(mo4139.charAt(0));
                }
                throw new RuntimeException("Expected a char but was " + AbstractC1220.m3781('\"', "\"", mo4139) + " at path " + abstractC1413.m4151());
            case 4:
                return Double.valueOf(abstractC1413.mo4129());
            case 5:
                float mo4129 = (float) abstractC1413.mo4129();
                if (!Float.isInfinite(mo4129)) {
                    return Float.valueOf(mo4129);
                }
                throw new RuntimeException("JSON forbids NaN and infinities: " + mo4129 + " at path " + abstractC1413.m4151());
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return Integer.valueOf(abstractC1413.mo4140());
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                C1403 c14032 = (C1403) abstractC1413;
                int i4 = c14032.f5501;
                if (i4 == 0) {
                    i4 = c14032.m4134();
                }
                if (i4 == 16) {
                    c14032.f5501 = 0;
                    int[] iArr3 = c14032.f5525;
                    int i5 = c14032.f5524 - 1;
                    iArr3[i5] = iArr3[i5] + 1;
                    parseLong = c14032.f5498;
                } else {
                    if (i4 == 17) {
                        C2599 c2599 = c14032.f5499;
                        long j = c14032.f5503;
                        c2599.getClass();
                        c14032.f5500 = c2599.m5831(j, AbstractC5154.f19435);
                    } else if (i4 == 9 || i4 == 8) {
                        String m4123 = i4 == 9 ? c14032.m4123(C1403.f5496) : c14032.m4123(C1403.f5495);
                        c14032.f5500 = m4123;
                        try {
                            parseLong = Long.parseLong(m4123);
                            c14032.f5501 = 0;
                            int[] iArr4 = c14032.f5525;
                            int i6 = c14032.f5524 - 1;
                            iArr4[i6] = iArr4[i6] + 1;
                        } catch (NumberFormatException unused) {
                        }
                    } else if (i4 != 11) {
                        throw new RuntimeException("Expected a long but was " + AbstractC1220.m3776(c14032.mo4127()) + " at path " + c14032.m4151());
                    }
                    c14032.f5501 = 11;
                    try {
                        parseLong = new BigDecimal(c14032.f5500).longValueExact();
                        c14032.f5500 = null;
                        c14032.f5501 = 0;
                        int[] iArr5 = c14032.f5525;
                        int i7 = c14032.f5524 - 1;
                        iArr5[i7] = iArr5[i7] + 1;
                    } catch (ArithmeticException | NumberFormatException unused2) {
                        throw new RuntimeException("Expected a long but was " + c14032.f5500 + " at path " + c14032.m4151());
                    }
                }
                return Long.valueOf(parseLong);
            default:
                return Short.valueOf((short) AbstractC1414.m4156(abstractC1413, "a short", -32768, 32767));
        }
    }
}
