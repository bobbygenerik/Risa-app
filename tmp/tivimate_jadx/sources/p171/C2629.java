package p171;

import androidx.media3.common.ParserException;
import java.util.ArrayList;
import p012.AbstractC0903;
import p012.C0900;
import p305.AbstractC3715;
import p305.C3732;

/* renamed from: ˊﾞ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2629 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final int f9956;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f9957;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final int f9958;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f9959;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f9960;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final float f9961;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f9962;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int f9963;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f9964;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList f9965;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final String f9966;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f9967;

    public C2629(ArrayList arrayList, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, float f, String str) {
        this.f9965 = arrayList;
        this.f9964 = i;
        this.f9957 = i2;
        this.f9959 = i3;
        this.f9960 = i4;
        this.f9967 = i5;
        this.f9962 = i6;
        this.f9963 = i7;
        this.f9956 = i8;
        this.f9958 = i9;
        this.f9961 = f;
        this.f9966 = str;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C2629 m5883(C3732 c3732) {
        String str;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        float f;
        int i7;
        int i8;
        try {
            c3732.m7900(4);
            int m7874 = (c3732.m7874() & 3) + 1;
            if (m7874 == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int m78742 = c3732.m7874() & 31;
            for (int i9 = 0; i9 < m78742; i9++) {
                int m7895 = c3732.m7895();
                int i10 = c3732.f14533;
                c3732.m7900(m7895);
                byte[] bArr = c3732.f14534;
                byte[] bArr2 = new byte[m7895 + 4];
                System.arraycopy(AbstractC3715.f14490, 0, bArr2, 0, 4);
                System.arraycopy(bArr, i10, bArr2, 4, m7895);
                arrayList.add(bArr2);
            }
            int m78743 = c3732.m7874();
            for (int i11 = 0; i11 < m78743; i11++) {
                int m78952 = c3732.m7895();
                int i12 = c3732.f14533;
                c3732.m7900(m78952);
                byte[] bArr3 = c3732.f14534;
                byte[] bArr4 = new byte[m78952 + 4];
                System.arraycopy(AbstractC3715.f14490, 0, bArr4, 0, 4);
                System.arraycopy(bArr3, i12, bArr4, 4, m78952);
                arrayList.add(bArr4);
            }
            if (m78742 > 0) {
                C0900 m3159 = AbstractC0903.m3159((byte[]) arrayList.get(0), 4, ((byte[]) arrayList.get(0)).length);
                int i13 = m3159.f3803;
                int i14 = m3159.f3814;
                int i15 = m3159.f3808 + 8;
                int i16 = m3159.f3796 + 8;
                int i17 = m3159.f3797;
                int i18 = m3159.f3809;
                int i19 = m3159.f3812;
                int i20 = m3159.f3804;
                float f2 = m3159.f3806;
                str = AbstractC3715.m7815(m3159.f3811, m3159.f3810, m3159.f3798);
                i4 = i18;
                i5 = i19;
                i6 = i20;
                f = f2;
                i2 = i14;
                i3 = i15;
                i7 = i16;
                i8 = i17;
                i = i13;
            } else {
                str = null;
                i = -1;
                i2 = -1;
                i3 = -1;
                i4 = -1;
                i5 = -1;
                i6 = 16;
                f = 1.0f;
                i7 = -1;
                i8 = -1;
            }
            return new C2629(arrayList, m7874, i, i2, i3, i7, i8, i4, i5, i6, f, str);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw ParserException.m741(e, "Error parsing AVC config");
        }
    }
}
