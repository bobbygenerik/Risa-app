package p094;

import j$.util.Objects;
import java.util.ArrayList;
import p017.AbstractC0993;
import p017.C0956;
import p035.AbstractC1220;
import p055.C1459;
import p223.C3056;
import p305.AbstractC3712;
import p305.AbstractC3731;
import ˈˊ.ˉˆ;

/* renamed from: ˆʻ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1866 extends AbstractC1863 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final AbstractC0993 f7492;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f7493;

    public C1866(String str, String str2, C0956 c0956) {
        super(str);
        AbstractC3731.m7849(!c0956.isEmpty());
        this.f7493 = str2;
        AbstractC0993 m3264 = AbstractC0993.m3264(c0956);
        this.f7492 = m3264;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static ArrayList m4810(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
                return arrayList;
            }
            if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                return arrayList;
            }
            if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1866.class == obj.getClass()) {
            C1866 c1866 = (C1866) obj;
            if (Objects.equals(this.f7481, c1866.f7481) && Objects.equals(this.f7493, c1866.f7493) && this.f7492.equals(c1866.f7492)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int m3780 = AbstractC1220.m3780(527, 31, this.f7481);
        String str = this.f7493;
        return this.f7492.hashCode() + ((m3780 + (str != null ? str.hashCode() : 0)) * 31);
    }

    @Override // p094.AbstractC1863
    public final String toString() {
        return this.f7481 + ": description=" + this.f7493 + ": values=" + this.f7492;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // p094.AbstractC1863, p055.InterfaceC1465
    /* renamed from: ﹳٴ */
    public final void mo2792(C1459 c1459) {
        char c;
        String str = this.f7481;
        switch (str.hashCode()) {
            case 82815:
                if (str.equals("TAL")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 82878:
                if (str.equals("TCM")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 82897:
                if (str.equals("TDA")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 83253:
                if (str.equals("TP1")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 83254:
                if (str.equals("TP2")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 83255:
                if (str.equals("TP3")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 83341:
                if (str.equals("TRK")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 83378:
                if (str.equals("TT2")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 83536:
                if (str.equals("TXT")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 83552:
                if (str.equals("TYE")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 2567331:
                if (str.equals("TALB")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 2569357:
                if (str.equals("TCOM")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 2569358:
                if (str.equals("TCON")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 2569891:
                if (str.equals("TDAT")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 2570401:
                if (str.equals("TDRC")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 2570410:
                if (str.equals("TDRL")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 2571565:
                if (str.equals("TEXT")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 2575251:
                if (str.equals("TIT2")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 2581512:
                if (str.equals("TPE1")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case 2581513:
                if (str.equals("TPE2")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 2581514:
                if (str.equals("TPE3")) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 2583398:
                if (str.equals("TRCK")) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 2590194:
                if (str.equals("TYER")) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        AbstractC0993 abstractC0993 = this.f7492;
        try {
            switch (c) {
                case 0:
                case '\n':
                    c1459.f5675 = (CharSequence) abstractC0993.get(0);
                    return;
                case 1:
                case 11:
                    c1459.f5684 = (CharSequence) abstractC0993.get(0);
                    return;
                case 2:
                case '\r':
                    String str2 = (String) abstractC0993.get(0);
                    int parseInt = Integer.parseInt(str2.substring(2, 4));
                    int parseInt2 = Integer.parseInt(str2.substring(0, 2));
                    c1459.f5680 = Integer.valueOf(parseInt);
                    c1459.f5688 = Integer.valueOf(parseInt2);
                    return;
                case 3:
                case 18:
                    c1459.f5692 = (CharSequence) abstractC0993.get(0);
                    return;
                case 4:
                case 19:
                    c1459.f5679 = (CharSequence) abstractC0993.get(0);
                    return;
                case 5:
                case 20:
                    c1459.f5682 = (CharSequence) abstractC0993.get(0);
                    return;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                case 21:
                    String str3 = (String) abstractC0993.get(0);
                    String str4 = AbstractC3712.f14481;
                    String[] split = str3.split("/", -1);
                    int parseInt3 = Integer.parseInt(split[0]);
                    Integer valueOf = split.length > 1 ? Integer.valueOf(Integer.parseInt(split[1])) : null;
                    c1459.f5689 = Integer.valueOf(parseInt3);
                    c1459.f5673 = valueOf;
                    return;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                case 17:
                    c1459.f5693 = (CharSequence) abstractC0993.get(0);
                    return;
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                case 16:
                    c1459.f5694 = (CharSequence) abstractC0993.get(0);
                    return;
                case '\t':
                case 22:
                    c1459.f5695 = Integer.valueOf(Integer.parseInt((String) abstractC0993.get(0)));
                    return;
                case '\f':
                    Integer num = ˉˆ.ٴᵢ((String) abstractC0993.get(0));
                    if (num == null) {
                        c1459.f5685 = (CharSequence) abstractC0993.get(0);
                        return;
                    }
                    String m4811 = AbstractC1868.m4811(num.intValue());
                    if (m4811 != null) {
                        c1459.f5685 = m4811;
                        return;
                    }
                    return;
                case 14:
                    ArrayList m4810 = m4810((String) abstractC0993.get(0));
                    int size = m4810.size();
                    if (size != 1) {
                        if (size != 2) {
                            if (size != 3) {
                                return;
                            } else {
                                c1459.f5688 = (Integer) m4810.get(2);
                            }
                        }
                        c1459.f5680 = (Integer) m4810.get(1);
                    }
                    c1459.f5695 = (Integer) m4810.get(0);
                    return;
                case 15:
                    ArrayList m48102 = m4810((String) abstractC0993.get(0));
                    int size2 = m48102.size();
                    if (size2 != 1) {
                        if (size2 != 2) {
                            if (size2 != 3) {
                                return;
                            } else {
                                c1459.f5690 = (Integer) m48102.get(2);
                            }
                        }
                        c1459.f5674 = (Integer) m48102.get(1);
                    }
                    c1459.f5681 = (Integer) m48102.get(0);
                    return;
                default:
                    return;
            }
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
        }
    }
}
