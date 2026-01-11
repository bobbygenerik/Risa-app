package p060;

import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.EnumSet;
import p033.EnumC1175;
import p173.C2656;
import p173.InterfaceC2655;
import p193.C2879;
import p197.C2900;
import p317.AbstractC3913;
import ʽⁱ.ᵎﹶ;

/* renamed from: ʾʾ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1530 extends ᵎﹶ {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public EnumSet f6011;

    public final String toString() {
        return "SMB_COM_NEGOTIATE";
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x009f. Please report as an issue. */
    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m4333(C2656 c2656) {
        ((C2879) ((InterfaceC2655) ((ᵎﹶ) this).ʾˋ)).getClass();
        c2656.mo6415(4, new byte[]{-1, 83, 77, 66});
        c2656.mo6412((byte) 114);
        c2656.m6419(0L);
        c2656.mo6412((byte) 24);
        c2656.m6417(51283);
        c2656.m6417(0);
        c2656.f10939.m6405(c2656, 0L);
        c2656.m5937();
        c2656.m6417(0);
        c2656.m6417(0);
        c2656.m6417(0);
        c2656.m6417(0);
        c2656.mo6412((byte) 0);
        ArrayList arrayList = new ArrayList();
        arrayList.add("SMB 2.002");
        EnumSet enumSet = this.f6011;
        if (enumSet.size() > 1 || !enumSet.contains(EnumC1175.f4556)) {
            arrayList.add("SMB 2.???");
        }
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            i += ((String) obj).length() + 2;
        }
        c2656.m6417(i);
        int size2 = arrayList.size();
        int i3 = 0;
        while (i3 < size2) {
            Object obj2 = arrayList.get(i3);
            i3++;
            String str = (String) obj2;
            c2656.mo6412((byte) 2);
            Charset charset = AbstractC3913.f15175;
            C2900 c2900 = c2656.f10939;
            String name = charset.name();
            name.getClass();
            char c = 65535;
            switch (name.hashCode()) {
                case -1781783509:
                    if (name.equals("UTF-16")) {
                        c = 0;
                        break;
                    }
                    break;
                case 81070450:
                    if (name.equals("UTF-8")) {
                        c = 1;
                        break;
                    }
                    break;
                case 1398001070:
                    if (name.equals("UTF-16BE")) {
                        c = 2;
                        break;
                    }
                    break;
                case 1398001380:
                    if (name.equals("UTF-16LE")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            byte[] bArr = C2900.f10935;
            switch (c) {
                case 0:
                    c2900.m6401(c2656, str);
                    c2656.mo6415(2, bArr);
                    break;
                case 1:
                    byte[] bytes = str.getBytes(charset);
                    c2656.mo6415(bytes.length, bytes);
                    c2656.mo6412((byte) 0);
                    break;
                case 2:
                    C2900.f10934.m6401(c2656, str);
                    c2656.mo6415(2, bArr);
                    break;
                case 3:
                    C2900.f10933.m6401(c2656, str);
                    c2656.mo6415(2, bArr);
                    break;
                default:
                    throw new UnsupportedCharsetException(charset.name());
            }
        }
    }
}
