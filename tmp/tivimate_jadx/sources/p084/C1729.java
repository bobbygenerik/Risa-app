package p084;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;
import p035.AbstractC1220;
import p051.C1393;
import p051.C1397;
import p051.InterfaceC1390;
import p051.InterfaceC1398;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3732;
import p305.InterfaceC3734;
import p388.C4625;
import p388.C4626;

/* renamed from: ʿˎ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1729 implements InterfaceC1398 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C3732 f7080;

    public C1729(int i) {
        switch (i) {
            case 1:
                this.f7080 = new C3732(10);
                return;
            default:
                this.f7080 = new C3732();
                return;
        }
    }

    @Override // p051.InterfaceC1398
    public /* synthetic */ void reset() {
    }

    @Override // p051.InterfaceC1398
    /* renamed from: ᵎﹶ */
    public int mo4116() {
        return 2;
    }

    @Override // p051.InterfaceC1398
    /* renamed from: ⁱˊ */
    public /* synthetic */ InterfaceC1390 mo4117(byte[] bArr, int i, int i2) {
        return AbstractC1220.m3794(this, bArr, i2);
    }

    @Override // p051.InterfaceC1398
    /* renamed from: ﹳٴ */
    public void mo4118(byte[] bArr, int i, int i2, C1393 c1393, InterfaceC3734 interfaceC3734) {
        C4625 m9183;
        C3732 c3732 = this.f7080;
        c3732.m7897(i + i2, bArr);
        c3732.m7896(i);
        ArrayList arrayList = new ArrayList();
        while (c3732.m7904() > 0) {
            AbstractC3731.m7843("Incomplete Mp4Webvtt Top Level box header found.", c3732.m7904() >= 8);
            int m7893 = c3732.m7893();
            if (c3732.m7893() == 1987343459) {
                int i3 = m7893 - 8;
                CharSequence charSequence = null;
                C4626 c4626 = null;
                while (i3 > 0) {
                    AbstractC3731.m7843("Incomplete vtt cue box header found.", i3 >= 8);
                    int m78932 = c3732.m7893();
                    int m78933 = c3732.m7893();
                    int i4 = m78932 - 8;
                    byte[] bArr2 = c3732.f14534;
                    int i5 = c3732.f14533;
                    String str = AbstractC3712.f14481;
                    String str2 = new String(bArr2, i5, i4, StandardCharsets.UTF_8);
                    c3732.m7900(i4);
                    i3 = (i3 - 8) - i4;
                    if (m78933 == 1937011815) {
                        C1727 c1727 = new C1727();
                        AbstractC1721.m4662(str2, c1727);
                        c4626 = c1727.m4672();
                    } else if (m78933 == 1885436268) {
                        charSequence = AbstractC1721.m4666(null, str2.trim(), Collections.EMPTY_LIST);
                    }
                }
                if (charSequence == null) {
                    charSequence = "";
                }
                if (c4626 != null) {
                    c4626.f17297 = charSequence;
                    c4626.f17296 = null;
                    m9183 = c4626.m9183();
                } else {
                    Pattern pattern = AbstractC1721.f7038;
                    C1727 c17272 = new C1727();
                    c17272.f7066 = charSequence;
                    m9183 = c17272.m4672().m9183();
                }
                arrayList.add(m9183);
            } else {
                c3732.m7900(m7893 - 8);
            }
        }
        interfaceC3734.accept(new C1397(-9223372036854775807L, -9223372036854775807L, arrayList));
    }
}
