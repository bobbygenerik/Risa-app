package p052;

import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Set;
import p164.C2583;
import p356.AbstractC4343;
import ﹶﾞ.ⁱי;

/* renamed from: ʽᴵ.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1411 extends AbstractC1430 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Enum[] f5519;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ⁱי f5520;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String[] f5521;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Class f5522;

    public C1411(Class cls) {
        this.f5522 = cls;
        try {
            Enum[] enumArr = (Enum[]) cls.getEnumConstants();
            this.f5519 = enumArr;
            this.f5521 = new String[enumArr.length];
            int i = 0;
            while (true) {
                Enum[] enumArr2 = this.f5519;
                if (i >= enumArr2.length) {
                    this.f5520 = ⁱי.ʾᵎ(this.f5521);
                    return;
                }
                String name = enumArr2[i].name();
                String[] strArr = this.f5521;
                Field field = cls.getField(name);
                Set set = AbstractC4343.f16164;
                InterfaceC1402 interfaceC1402 = (InterfaceC1402) field.getAnnotation(InterfaceC1402.class);
                if (interfaceC1402 != null) {
                    String name2 = interfaceC1402.name();
                    if (!"\u0000".equals(name2)) {
                        name = name2;
                    }
                }
                strArr[i] = name;
                i++;
            }
        } catch (NoSuchFieldException e) {
            throw new AssertionError("Missing field in ".concat(cls.getName()), e);
        }
    }

    public final String toString() {
        return "JsonAdapter(" + this.f5522.getName() + ")";
    }

    @Override // p052.AbstractC1430
    /* renamed from: ˑﹳ */
    public final void mo4119(AbstractC1429 abstractC1429, Object obj) {
        abstractC1429.mo4186(this.f5521[((Enum) obj).ordinal()]);
    }

    @Override // p052.AbstractC1430
    /* renamed from: ⁱˊ */
    public final Object mo4120(AbstractC1413 abstractC1413) {
        int i;
        C1403 c1403 = (C1403) abstractC1413;
        int i2 = c1403.f5501;
        if (i2 == 0) {
            i2 = c1403.m4134();
        }
        if (i2 < 8 || i2 > 11) {
            i = -1;
        } else {
            ⁱי r4 = this.f5520;
            if (i2 == 11) {
                i = c1403.m4133(c1403.f5500, r4);
            } else {
                int mo5800 = c1403.f5502.mo5800((C2583) r4.ʽʽ);
                if (mo5800 != -1) {
                    c1403.f5501 = 0;
                    int[] iArr = c1403.f5525;
                    int i3 = c1403.f5524 - 1;
                    iArr[i3] = iArr[i3] + 1;
                    i = mo5800;
                } else {
                    String mo4139 = c1403.mo4139();
                    int m4133 = c1403.m4133(mo4139, r4);
                    if (m4133 == -1) {
                        c1403.f5501 = 11;
                        c1403.f5500 = mo4139;
                        c1403.f5525[c1403.f5524 - 1] = r1[r0] - 1;
                    }
                    i = m4133;
                }
            }
        }
        if (i != -1) {
            return this.f5519[i];
        }
        String m4151 = abstractC1413.m4151();
        throw new RuntimeException("Expected one of " + Arrays.asList(this.f5521) + " but was " + abstractC1413.mo4139() + " at path " + m4151);
    }
}
