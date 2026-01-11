package p154;

import p010.AbstractC0844;
import p033.AbstractC1179;
import p033.C1184;
import p033.EnumC1175;
import p033.EnumC1189;
import p173.C2656;
import p223.C3056;
import p317.AbstractC3914;
import p411.AbstractC4892;

/* renamed from: ˊʾ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2502 extends AbstractC1179 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int f9527;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C1184 f9528;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int f9529;

    public C2502(EnumC1175 enumC1175, long j, long j2, C1184 c1184, int i) {
        super(41, enumC1175, EnumC1189.f4627, j, j2);
        this.f9529 = 1;
        this.f9527 = i;
        this.f9528 = c1184;
    }

    @Override // p033.AbstractC1179
    /* renamed from: יˉ */
    public final void mo3695(C2656 c2656) {
        long j;
        long j2;
        c2656.m6417(this.f4575);
        int i = this.f9529;
        if (i == 1) {
            j = 1;
        } else if (i == 2) {
            j = 2;
        } else if (i == 3) {
            j = 3;
        } else {
            if (i != 4) {
                throw null;
            }
            j = 4;
        }
        c2656.mo6412((byte) j);
        int m3018 = AbstractC0844.m3018(i);
        C1184 c1184 = this.f9528;
        boolean z = false;
        if (m3018 == 0) {
            int i2 = this.f9527;
            c2656.mo6412((byte) AbstractC4892.m9685(i2));
            c2656.m6419(65536L);
            if (i2 == 15) {
                c2656.m6417(0);
                c2656.m5937();
                throw null;
            }
            c2656.m6417(0);
            c2656.m5937();
            c2656.m6419(0L);
            c2656.m6419(0L);
            c2656.m6419(0L);
            c1184.m3700(c2656);
            return;
        }
        if (m3018 != 1) {
            if (m3018 != 2) {
                if (m3018 != 3) {
                    throw new IllegalStateException("Unknown SMB2QueryInfoType: ".concat(i != 1 ? i != 2 ? i != 3 ? i != 4 ? "null" : "SMB2_0_INFO_QUOTA" : "SMB2_0_INFO_SECURITY" : "SMB2_0_INFO_FILESYSTEM" : "SMB2_0_INFO_FILE"));
                }
                c2656.mo6412((byte) 0);
                c2656.m6419(65536L);
                c2656.m6417(0);
                c2656.m5937();
                throw null;
            }
            c2656.mo6412((byte) 0);
            c2656.m6419(65536L);
            c2656.m6417(0);
            c2656.m5937();
            c2656.m6419(0L);
            AbstractC3914.m8088(null);
            throw null;
        }
        switch (z) {
            case true:
                j2 = 1;
                break;
            case true:
                j2 = 2;
                break;
            case true:
                j2 = 3;
                break;
            case true:
                j2 = 4;
                break;
            case true:
                j2 = 5;
                break;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                j2 = 6;
                break;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                j2 = 7;
                break;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                j2 = 8;
                break;
            case true:
                j2 = 9;
                break;
            case true:
                j2 = 10;
                break;
            case true:
                j2 = 11;
                break;
            default:
                throw null;
        }
        c2656.mo6412((byte) j2);
        c2656.m6419(65536L);
        c2656.m6417(0);
        c2656.m5937();
        c2656.m6419(0L);
        c2656.m6419(0L);
        c2656.m6419(0L);
        c1184.m3700(c2656);
    }
}
