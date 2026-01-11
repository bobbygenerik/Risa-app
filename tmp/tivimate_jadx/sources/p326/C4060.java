package p326;

import com.google.android.gms.internal.measurement.ˏʻ;
import p035.AbstractC1220;
import p055.C1459;
import p055.C1495;
import p055.InterfaceC1465;
import p223.C3056;
import ˈˊ.ˉˆ;

/* renamed from: ᴵٴ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4060 implements InterfaceC1465 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f15460;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f15461;

    public C4060(String str, String str2) {
        this.f15461 = ˏʻ.ᴵˑ(str);
        this.f15460 = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C4060.class == obj.getClass()) {
            C4060 c4060 = (C4060) obj;
            if (this.f15461.equals(c4060.f15461) && this.f15460.equals(c4060.f15460)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f15460.hashCode() + AbstractC1220.m3780(527, 31, this.f15461);
    }

    public final String toString() {
        return "VC: " + this.f15461 + "=" + this.f15460;
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ʽ */
    public final /* synthetic */ byte[] mo2790() {
        return null;
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ⁱˊ */
    public final /* synthetic */ C1495 mo2791() {
        return null;
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ﹳٴ */
    public final void mo2792(C1459 c1459) {
        String str = this.f15461;
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1935137620:
                if (str.equals("TOTALTRACKS")) {
                    c = 0;
                    break;
                }
                break;
            case -215998278:
                if (str.equals("TOTALDISCS")) {
                    c = 1;
                    break;
                }
                break;
            case -113312716:
                if (str.equals("TRACKNUMBER")) {
                    c = 2;
                    break;
                }
                break;
            case 62359119:
                if (str.equals("ALBUM")) {
                    c = 3;
                    break;
                }
                break;
            case 67703139:
                if (str.equals("GENRE")) {
                    c = 4;
                    break;
                }
                break;
            case 79833656:
                if (str.equals("TITLE")) {
                    c = 5;
                    break;
                }
                break;
            case 428414940:
                if (str.equals("DESCRIPTION")) {
                    c = 6;
                    break;
                }
                break;
            case 993300766:
                if (str.equals("DISCNUMBER")) {
                    c = 7;
                    break;
                }
                break;
            case 1746739798:
                if (str.equals("ALBUMARTIST")) {
                    c = '\b';
                    break;
                }
                break;
            case 1939198791:
                if (str.equals("ARTIST")) {
                    c = '\t';
                    break;
                }
                break;
        }
        String str2 = this.f15460;
        switch (c) {
            case 0:
                Integer num = ˉˆ.ٴᵢ(str2);
                if (num != null) {
                    c1459.f5673 = num;
                    return;
                }
                return;
            case 1:
                Integer num2 = ˉˆ.ٴᵢ(str2);
                if (num2 != null) {
                    c1459.f5671 = num2;
                    return;
                }
                return;
            case 2:
                Integer num3 = ˉˆ.ٴᵢ(str2);
                if (num3 != null) {
                    c1459.f5689 = num3;
                    return;
                }
                return;
            case 3:
                c1459.f5675 = str2;
                return;
            case 4:
                c1459.f5685 = str2;
                return;
            case 5:
                c1459.f5693 = str2;
                return;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                c1459.f5683 = str2;
                return;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                Integer num4 = ˉˆ.ٴᵢ(str2);
                if (num4 != null) {
                    c1459.f5676 = num4;
                    return;
                }
                return;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                c1459.f5679 = str2;
                return;
            case '\t':
                c1459.f5692 = str2;
                return;
            default:
                return;
        }
    }
}
