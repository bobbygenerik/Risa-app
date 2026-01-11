package p154;

import java.util.EnumSet;
import java.util.Set;
import p033.AbstractC1179;
import p033.EnumC1175;
import p033.EnumC1185;
import p033.EnumC1186;
import p033.EnumC1189;
import p173.C2656;
import p205.C2921;
import p223.C3056;
import p317.AbstractC3913;
import p317.AbstractC3914;
import p443.EnumC5199;

/* renamed from: ˊʾ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2493 extends AbstractC1179 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int f9500;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final Set f9501;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final C2921 f9502;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final Set f9503;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final Set f9504;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final Set f9505;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final int f9506;

    public C2493(EnumC1175 enumC1175, long j, long j2, int i, Set set, Set set2, Set set3, int i2, Set set4, C2921 c2921) {
        super(57, enumC1175, EnumC1189.f4621, j, j2);
        this.f9506 = i == 0 ? 2 : i;
        this.f9504 = set;
        this.f9501 = set2 == null ? EnumSet.noneOf(EnumC5199.class) : set2;
        this.f9503 = set3 == null ? EnumSet.noneOf(EnumC1185.class) : set3;
        this.f9500 = i2 != 0 ? i2 : 1;
        this.f9505 = set4 == null ? EnumSet.noneOf(EnumC1186.class) : set4;
        this.f9502 = c2921;
    }

    @Override // p033.AbstractC1179
    /* renamed from: יˉ */
    public final void mo3695(C2656 c2656) {
        long j;
        long j2;
        byte[] bArr;
        int i = this.f4575;
        c2656.m6417(i);
        c2656.mo6412((byte) 0);
        c2656.mo6412((byte) 0);
        int i2 = this.f9506;
        if (i2 == 1) {
            j = 0;
        } else if (i2 == 2) {
            j = 1;
        } else if (i2 == 3) {
            j = 2;
        } else {
            if (i2 != 4) {
                throw null;
            }
            j = 3;
        }
        c2656.m6419(j);
        c2656.m5936(8);
        c2656.m5936(8);
        c2656.m6419(AbstractC3914.m8088(this.f9504));
        c2656.m6419(AbstractC3914.m8088(this.f9501));
        c2656.m6419(AbstractC3914.m8088(this.f9503));
        switch (this.f9500) {
            case 1:
                j2 = 0;
                break;
            case 2:
                j2 = 1;
                break;
            case 3:
                j2 = 2;
                break;
            case 4:
                j2 = 3;
                break;
            case 5:
                j2 = 4;
                break;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                j2 = 5;
                break;
            default:
                throw null;
        }
        c2656.m6419(j2);
        c2656.m6419(AbstractC3914.m8088(this.f9505));
        int i3 = i + 63;
        String str = this.f9502.f11044;
        if (str == null || str.trim().length() == 0) {
            c2656.m6417(i3);
            c2656.m6417(0);
            bArr = new byte[1];
        } else {
            bArr = str.getBytes(AbstractC3913.f15172);
            c2656.m6417(i3);
            c2656.m6417(bArr.length);
        }
        c2656.m6419(0L);
        c2656.m6419(0L);
        c2656.mo6415(bArr.length, bArr);
    }
}
