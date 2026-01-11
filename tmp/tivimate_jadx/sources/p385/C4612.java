package p385;

import android.text.SpannableStringBuilder;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import p012.C0881;
import p027.C1085;
import p137.AbstractC2305;
import p305.AbstractC3715;
import p305.AbstractC3731;
import p305.C3732;

/* renamed from: ⁱʾ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4612 extends AbstractC4604 {

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public C0881 f17208;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public C4607 f17210;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public List f17211;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final int f17212;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public List f17213;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public int f17215;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final C4607[] f17216;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C3732 f17214 = new C3732();

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C0881 f17207 = new C0881(4);

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f17209 = -1;

    public C4612(int i, List list) {
        this.f17212 = i == -1 ? 1 : i;
        if (list != null) {
            byte[] bArr = AbstractC3715.f14490;
            if (list.size() == 1 && ((byte[]) list.get(0)).length == 1) {
                byte b = ((byte[]) list.get(0))[0];
            }
        }
        this.f17216 = new C4607[8];
        for (int i2 = 0; i2 < 8; i2++) {
            this.f17216[i2] = new C4607();
        }
        this.f17210 = this.f17216[0];
    }

    @Override // p385.AbstractC4604, p421.InterfaceC4995
    public final void flush() {
        super.flush();
        this.f17213 = null;
        this.f17211 = null;
        this.f17215 = 0;
        this.f17210 = this.f17216[0];
        m9178();
        this.f17208 = null;
    }

    @Override // p385.AbstractC4604
    /* renamed from: ˆʾ */
    public final boolean mo9158() {
        return this.f17213 != this.f17211;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m9178() {
        for (int i = 0; i < 8; i++) {
            this.f17216[i].m9168();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:56:0x0143. Please report as an issue. */
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m9179() {
        char c;
        int i;
        boolean z;
        C0881 c0881 = this.f17208;
        if (c0881 == null) {
            return;
        }
        int i2 = 2;
        if (c0881.f3737 != (c0881.f3736 * 2) - 1) {
            AbstractC3731.m7852("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.f17208.f3736 * 2) - 1) + ", but current index is " + this.f17208.f3737 + " (sequence number " + this.f17208.f3735 + ");");
        }
        C0881 c08812 = this.f17208;
        byte[] bArr = c08812.f3738;
        int i3 = c08812.f3737;
        C0881 c08813 = this.f17207;
        c08813.m3101(i3, bArr);
        boolean z2 = false;
        while (true) {
            if (c08813.m3109() > 0) {
                int i4 = 3;
                int m3097 = c08813.m3097(3);
                int m30972 = c08813.m3097(5);
                if (m3097 == 7) {
                    c08813.m3095(i2);
                    m3097 = c08813.m3097(6);
                    if (m3097 < 7) {
                        AbstractC2305.m5373(m3097, "Invalid extended service number: ", "Cea708Decoder");
                    }
                }
                if (m30972 == 0) {
                    if (m3097 != 0) {
                        AbstractC3731.m7850("Cea708Decoder", "serviceNumber is non-zero (" + m3097 + ") when blockSize is 0");
                    }
                } else if (m3097 != this.f17212) {
                    c08813.m3090(m30972);
                } else {
                    int m3091 = (m30972 * 8) + c08813.m3091();
                    while (c08813.m3091() < m3091) {
                        int m30973 = c08813.m3097(8);
                        if (m30973 != 16) {
                            if (m30973 <= 31) {
                                if (m30973 != 0) {
                                    if (m30973 == i4) {
                                        this.f17213 = m9180();
                                    } else if (m30973 != 8) {
                                        switch (m30973) {
                                            case 12:
                                                m9178();
                                                break;
                                            case 13:
                                                this.f17210.m9171('\n');
                                                break;
                                            case 14:
                                                break;
                                            default:
                                                if (m30973 < 17 || m30973 > 23) {
                                                    if (m30973 < 24 || m30973 > 31) {
                                                        AbstractC2305.m5373(m30973, "Invalid C0 command: ", "Cea708Decoder");
                                                        break;
                                                    } else {
                                                        AbstractC3731.m7850("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: " + m30973);
                                                        c08813.m3095(16);
                                                        break;
                                                    }
                                                } else {
                                                    AbstractC3731.m7850("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: " + m30973);
                                                    c08813.m3095(8);
                                                    break;
                                                }
                                        }
                                    } else {
                                        SpannableStringBuilder spannableStringBuilder = this.f17210.f17189;
                                        int length = spannableStringBuilder.length();
                                        if (length > 0) {
                                            spannableStringBuilder.delete(length - 1, length);
                                        }
                                    }
                                }
                                i = i2;
                            } else if (m30973 <= 127) {
                                if (m30973 == 127) {
                                    this.f17210.m9171((char) 9835);
                                } else {
                                    this.f17210.m9171((char) (m30973 & 255));
                                }
                                i = i2;
                                z2 = true;
                            } else {
                                if (m30973 <= 159) {
                                    C4607[] c4607Arr = this.f17216;
                                    switch (m30973) {
                                        case 128:
                                        case 129:
                                        case 130:
                                        case 131:
                                        case 132:
                                        case 133:
                                        case 134:
                                        case 135:
                                            z = true;
                                            int i5 = m30973 - 128;
                                            if (this.f17215 != i5) {
                                                this.f17215 = i5;
                                                this.f17210 = c4607Arr[i5];
                                                break;
                                            }
                                            break;
                                        case 136:
                                            z = true;
                                            for (int i6 = 1; i6 <= 8; i6++) {
                                                if (c08813.m3112()) {
                                                    C4607 c4607 = c4607Arr[8 - i6];
                                                    c4607.f17190.clear();
                                                    c4607.f17189.clear();
                                                    c4607.f17180 = -1;
                                                    c4607.f17174 = -1;
                                                    c4607.f17188 = -1;
                                                    c4607.f17183 = -1;
                                                    c4607.f17176 = 0;
                                                }
                                            }
                                            break;
                                        case 137:
                                            for (int i7 = 1; i7 <= 8; i7++) {
                                                if (c08813.m3112()) {
                                                    c4607Arr[8 - i7].f17178 = true;
                                                }
                                            }
                                            z = true;
                                            break;
                                        case 138:
                                            for (int i8 = 1; i8 <= 8; i8++) {
                                                if (c08813.m3112()) {
                                                    c4607Arr[8 - i8].f17178 = false;
                                                }
                                            }
                                            z = true;
                                            break;
                                        case 139:
                                            for (int i9 = 1; i9 <= 8; i9++) {
                                                if (c08813.m3112()) {
                                                    c4607Arr[8 - i9].f17178 = !r1.f17178;
                                                }
                                            }
                                            z = true;
                                            break;
                                        case 140:
                                            for (int i10 = 1; i10 <= 8; i10++) {
                                                if (c08813.m3112()) {
                                                    c4607Arr[8 - i10].m9168();
                                                }
                                            }
                                            z = true;
                                            break;
                                        case 141:
                                            c08813.m3095(8);
                                            z = true;
                                            break;
                                        case 142:
                                            z = true;
                                            break;
                                        case 143:
                                            m9178();
                                            z = true;
                                            break;
                                        case 144:
                                            int i11 = i2;
                                            if (!this.f17210.f17175) {
                                                c08813.m3095(16);
                                                z = true;
                                                i4 = 3;
                                                break;
                                            } else {
                                                c08813.m3097(4);
                                                c08813.m3097(i11);
                                                c08813.m3097(i11);
                                                boolean m3112 = c08813.m3112();
                                                boolean m31122 = c08813.m3112();
                                                i4 = 3;
                                                c08813.m3097(3);
                                                c08813.m3097(3);
                                                this.f17210.m9169(m3112, m31122);
                                                z = true;
                                            }
                                        case 145:
                                            if (this.f17210.f17175) {
                                                int m9167 = C4607.m9167(c08813.m3097(2), c08813.m3097(2), c08813.m3097(2), c08813.m3097(2));
                                                int m91672 = C4607.m9167(c08813.m3097(2), c08813.m3097(2), c08813.m3097(2), c08813.m3097(2));
                                                c08813.m3095(2);
                                                C4607.m9167(c08813.m3097(2), c08813.m3097(2), c08813.m3097(2), 0);
                                                this.f17210.m9172(m9167, m91672);
                                            } else {
                                                c08813.m3095(24);
                                            }
                                            z = true;
                                            i4 = 3;
                                            break;
                                        case 146:
                                            if (this.f17210.f17175) {
                                                c08813.m3095(4);
                                                int m30974 = c08813.m3097(4);
                                                c08813.m3095(2);
                                                c08813.m3097(6);
                                                C4607 c46072 = this.f17210;
                                                if (c46072.f17176 != m30974) {
                                                    c46072.m9171('\n');
                                                }
                                                c46072.f17176 = m30974;
                                            } else {
                                                c08813.m3095(16);
                                            }
                                            z = true;
                                            i4 = 3;
                                            break;
                                        case 147:
                                        case 148:
                                        case 149:
                                        case 150:
                                        default:
                                            AbstractC2305.m5373(m30973, "Invalid C1 command: ", "Cea708Decoder");
                                            z = true;
                                            break;
                                        case 151:
                                            if (this.f17210.f17175) {
                                                int m91673 = C4607.m9167(c08813.m3097(2), c08813.m3097(2), c08813.m3097(2), c08813.m3097(2));
                                                c08813.m3097(2);
                                                C4607.m9167(c08813.m3097(2), c08813.m3097(2), c08813.m3097(2), 0);
                                                c08813.m3112();
                                                c08813.m3112();
                                                c08813.m3097(2);
                                                c08813.m3097(2);
                                                int m30975 = c08813.m3097(2);
                                                c08813.m3095(8);
                                                C4607 c46073 = this.f17210;
                                                c46073.f17186 = m91673;
                                                c46073.f17184 = m30975;
                                            } else {
                                                c08813.m3095(32);
                                            }
                                            z = true;
                                            i4 = 3;
                                            break;
                                        case 152:
                                        case 153:
                                        case 154:
                                        case ModuleDescriptor.MODULE_VERSION /* 155 */:
                                        case 156:
                                        case 157:
                                        case 158:
                                        case 159:
                                            int i12 = m30973 - 152;
                                            C4607 c46074 = c4607Arr[i12];
                                            c08813.m3095(i2);
                                            boolean m31123 = c08813.m3112();
                                            c08813.m3095(i2);
                                            int m30976 = c08813.m3097(i4);
                                            boolean m31124 = c08813.m3112();
                                            int m30977 = c08813.m3097(7);
                                            int m30978 = c08813.m3097(8);
                                            int m30979 = c08813.m3097(4);
                                            int m309710 = c08813.m3097(4);
                                            c08813.m3095(i2);
                                            c08813.m3095(6);
                                            c08813.m3095(i2);
                                            int m309711 = c08813.m3097(3);
                                            int m309712 = c08813.m3097(3);
                                            ArrayList arrayList = c46074.f17190;
                                            c46074.f17175 = true;
                                            c46074.f17178 = m31123;
                                            c46074.f17182 = m30976;
                                            c46074.f17193 = m31124;
                                            c46074.f17185 = m30977;
                                            c46074.f17187 = m30978;
                                            c46074.f17173 = m30979;
                                            int i13 = m309710 + 1;
                                            if (c46074.f17177 != i13) {
                                                c46074.f17177 = i13;
                                                while (true) {
                                                    if (arrayList.size() >= c46074.f17177 || arrayList.size() >= 15) {
                                                        arrayList.remove(0);
                                                    }
                                                }
                                            }
                                            if (m309711 != 0 && c46074.f17192 != m309711) {
                                                c46074.f17192 = m309711;
                                                int i14 = m309711 - 1;
                                                int i15 = C4607.f17170[i14];
                                                boolean z3 = C4607.f17166[i14];
                                                int i16 = C4607.f17164[i14];
                                                int i17 = C4607.f17172[i14];
                                                int i18 = C4607.f17167[i14];
                                                c46074.f17186 = i15;
                                                c46074.f17184 = i18;
                                            }
                                            if (m309712 != 0 && c46074.f17179 != m309712) {
                                                c46074.f17179 = m309712;
                                                int i19 = m309712 - 1;
                                                int i20 = C4607.f17168[i19];
                                                int i21 = C4607.f17165[i19];
                                                c46074.m9169(false, false);
                                                c46074.m9172(C4607.f17163, C4607.f17171[i19]);
                                            }
                                            if (this.f17215 != i12) {
                                                this.f17215 = i12;
                                                this.f17210 = c4607Arr[i12];
                                            }
                                            z = true;
                                            i4 = 3;
                                            break;
                                    }
                                } else {
                                    z = true;
                                    if (m30973 <= 255) {
                                        this.f17210.m9171((char) (m30973 & 255));
                                    } else {
                                        AbstractC2305.m5373(m30973, "Invalid base command: ", "Cea708Decoder");
                                        i = 2;
                                        c = 7;
                                    }
                                }
                                z2 = z;
                                i = 2;
                                c = 7;
                            }
                            c = 7;
                        } else {
                            int m309713 = c08813.m3097(8);
                            if (m309713 <= 31) {
                                c = 7;
                                if (m309713 > 7) {
                                    if (m309713 <= 15) {
                                        c08813.m3095(8);
                                    } else if (m309713 <= 23) {
                                        c08813.m3095(16);
                                    } else if (m309713 <= 31) {
                                        c08813.m3095(24);
                                    }
                                }
                            } else {
                                c = 7;
                                if (m309713 <= 127) {
                                    if (m309713 == 32) {
                                        this.f17210.m9171(' ');
                                    } else if (m309713 == 33) {
                                        this.f17210.m9171((char) 160);
                                    } else if (m309713 == 37) {
                                        this.f17210.m9171((char) 8230);
                                    } else if (m309713 == 42) {
                                        this.f17210.m9171((char) 352);
                                    } else if (m309713 == 44) {
                                        this.f17210.m9171((char) 338);
                                    } else if (m309713 == 63) {
                                        this.f17210.m9171((char) 376);
                                    } else if (m309713 == 57) {
                                        this.f17210.m9171((char) 8482);
                                    } else if (m309713 == 58) {
                                        this.f17210.m9171((char) 353);
                                    } else if (m309713 == 60) {
                                        this.f17210.m9171((char) 339);
                                    } else if (m309713 != 61) {
                                        switch (m309713) {
                                            case 48:
                                                this.f17210.m9171((char) 9608);
                                                break;
                                            case 49:
                                                this.f17210.m9171((char) 8216);
                                                break;
                                            case 50:
                                                this.f17210.m9171((char) 8217);
                                                break;
                                            case 51:
                                                this.f17210.m9171((char) 8220);
                                                break;
                                            case 52:
                                                this.f17210.m9171((char) 8221);
                                                break;
                                            case 53:
                                                this.f17210.m9171((char) 8226);
                                                break;
                                            default:
                                                switch (m309713) {
                                                    case 118:
                                                        this.f17210.m9171((char) 8539);
                                                        break;
                                                    case 119:
                                                        this.f17210.m9171((char) 8540);
                                                        break;
                                                    case 120:
                                                        this.f17210.m9171((char) 8541);
                                                        break;
                                                    case 121:
                                                        this.f17210.m9171((char) 8542);
                                                        break;
                                                    case 122:
                                                        this.f17210.m9171((char) 9474);
                                                        break;
                                                    case 123:
                                                        this.f17210.m9171((char) 9488);
                                                        break;
                                                    case 124:
                                                        this.f17210.m9171((char) 9492);
                                                        break;
                                                    case 125:
                                                        this.f17210.m9171((char) 9472);
                                                        break;
                                                    case 126:
                                                        this.f17210.m9171((char) 9496);
                                                        break;
                                                    case 127:
                                                        this.f17210.m9171((char) 9484);
                                                        break;
                                                    default:
                                                        AbstractC2305.m5373(m309713, "Invalid G2 character: ", "Cea708Decoder");
                                                        break;
                                                }
                                        }
                                    } else {
                                        this.f17210.m9171((char) 8480);
                                    }
                                    i = 2;
                                    z2 = true;
                                } else if (m309713 > 159) {
                                    i = 2;
                                    if (m309713 <= 255) {
                                        if (m309713 == 160) {
                                            this.f17210.m9171((char) 13252);
                                        } else {
                                            AbstractC2305.m5373(m309713, "Invalid G3 character: ", "Cea708Decoder");
                                            this.f17210.m9171('_');
                                        }
                                        z2 = true;
                                    } else {
                                        AbstractC2305.m5373(m309713, "Invalid extended command: ", "Cea708Decoder");
                                    }
                                } else if (m309713 <= 135) {
                                    c08813.m3095(32);
                                } else if (m309713 <= 143) {
                                    c08813.m3095(40);
                                } else if (m309713 <= 159) {
                                    i = 2;
                                    c08813.m3095(2);
                                    c08813.m3095(c08813.m3097(6) * 8);
                                }
                            }
                            i = 2;
                        }
                        i2 = i;
                    }
                }
            }
        }
        if (z2) {
            this.f17213 = m9180();
        }
        this.f17208 = null;
    }

    @Override // p385.AbstractC4604
    /* renamed from: ᵎﹶ */
    public final C1085 mo9160() {
        List list = this.f17213;
        this.f17211 = list;
        list.getClass();
        return new C1085(list);
    }

    @Override // p385.AbstractC4604
    /* renamed from: ᵔᵢ */
    public final void mo9161(C4608 c4608) {
        ByteBuffer byteBuffer = c4608.f18672;
        byteBuffer.getClass();
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        C3732 c3732 = this.f17214;
        c3732.m7897(limit, array);
        while (c3732.m7904() >= 3) {
            int m7874 = c3732.m7874();
            int i = m7874 & 3;
            boolean z = (m7874 & 4) == 4;
            byte m78742 = (byte) c3732.m7874();
            byte m78743 = (byte) c3732.m7874();
            if (i == 2 || i == 3) {
                if (z) {
                    if (i == 3) {
                        m9179();
                        int i2 = (m78742 & 192) >> 6;
                        int i3 = this.f17209;
                        if (i3 != -1 && i2 != (i3 + 1) % 4) {
                            m9178();
                            AbstractC3731.m7850("Cea708Decoder", "Sequence number discontinuity. previous=" + this.f17209 + " current=" + i2);
                        }
                        this.f17209 = i2;
                        int i4 = m78742 & 63;
                        if (i4 == 0) {
                            i4 = 64;
                        }
                        C0881 c0881 = new C0881(i2, i4);
                        this.f17208 = c0881;
                        byte[] bArr = c0881.f3738;
                        c0881.f3737 = 1;
                        bArr[0] = m78743;
                    } else {
                        AbstractC3731.m7849(i == 2);
                        C0881 c08812 = this.f17208;
                        if (c08812 == null) {
                            AbstractC3731.m7842("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = c08812.f3738;
                            int i5 = c08812.f3737;
                            int i6 = i5 + 1;
                            c08812.f3737 = i6;
                            bArr2[i5] = m78742;
                            c08812.f3737 = i5 + 2;
                            bArr2[i6] = m78743;
                        }
                    }
                    C0881 c08813 = this.f17208;
                    if (c08813.f3737 == (c08813.f3736 * 2) - 1) {
                        m9179();
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00a4  */
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List m9180() {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p385.C4612.m9180():java.util.List");
    }
}
