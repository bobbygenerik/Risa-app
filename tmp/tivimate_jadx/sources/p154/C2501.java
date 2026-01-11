package p154;

import p033.AbstractC1179;
import p173.C2656;

/* renamed from: ˊʾ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2501 extends AbstractC1179 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public byte[] f9526;

    @Override // p033.AbstractC1179
    /* renamed from: ˋˊ */
    public final void mo3694(C2656 c2656) {
        c2656.m6414(2);
        c2656.m6414(2);
        c2656.m6418();
        c2656.m6411(8, new byte[8]);
        c2656.m6411(8, new byte[8]);
        int m6418 = c2656.m6418();
        int m64182 = c2656.m6418();
        int m64183 = c2656.m6418();
        int m64184 = c2656.m6418();
        c2656.m6414(4);
        c2656.m6414(4);
        if (m64182 > 0) {
            c2656.f10937 = m6418;
            c2656.m6416(m64182);
        }
        if (m64184 > 0) {
            c2656.f10937 = m64183;
            byte[] bArr = new byte[m64184];
            c2656.m6411(m64184, bArr);
            this.f9526 = bArr;
        }
    }
}
