package p275;

import java.nio.ByteBuffer;
import p124.AbstractC2128;
import p124.C2129;
import p124.C2130;
import ˏˆ.ﹳٴ;

/* renamed from: ـﹶ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3501 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final ThreadLocal f13813 = new ThreadLocal();

    /* renamed from: ʽ, reason: contains not printable characters */
    public volatile int f13814 = 0;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ﹳٴ f13815;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f13816;

    public C3501(ﹳٴ r2, int i) {
        this.f13815 = r2;
        this.f13816 = i;
    }

    public final String toString() {
        int i;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        C2130 m7444 = m7444();
        int m5092 = m7444.m5092(4);
        sb.append(Integer.toHexString(m5092 != 0 ? ((ByteBuffer) m7444.f8314).getInt(m5092 + m7444.f8313) : 0));
        sb.append(", codepoints:");
        C2130 m74442 = m7444();
        int m50922 = m74442.m5092(16);
        if (m50922 != 0) {
            int i2 = m50922 + m74442.f8313;
            i = ((ByteBuffer) m74442.f8314).getInt(((ByteBuffer) m74442.f8314).getInt(i2) + i2);
        } else {
            i = 0;
        }
        for (int i3 = 0; i3 < i; i3++) {
            sb.append(Integer.toHexString(m7445(i3)));
            sb.append(" ");
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [ˈˏ.ʽ, java.lang.Object] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2130 m7444() {
        ThreadLocal threadLocal = f13813;
        C2130 c2130 = (C2130) threadLocal.get();
        C2130 c21302 = c2130;
        if (c2130 == null) {
            ?? abstractC2128 = new AbstractC2128();
            threadLocal.set(abstractC2128);
            c21302 = abstractC2128;
        }
        C2129 c2129 = (C2129) this.f13815.ᴵˊ;
        int m5092 = c2129.m5092(6);
        if (m5092 != 0) {
            int i = m5092 + c2129.f8313;
            int i2 = (this.f13816 * 4) + ((ByteBuffer) c2129.f8314).getInt(i) + i + 4;
            int i3 = ((ByteBuffer) c2129.f8314).getInt(i2) + i2;
            ByteBuffer byteBuffer = (ByteBuffer) c2129.f8314;
            c21302.f8314 = byteBuffer;
            if (byteBuffer != null) {
                c21302.f8313 = i3;
                int i4 = i3 - byteBuffer.getInt(i3);
                c21302.f8315 = i4;
                c21302.f8312 = ((ByteBuffer) c21302.f8314).getShort(i4);
                return c21302;
            }
            c21302.f8313 = 0;
            c21302.f8315 = 0;
            c21302.f8312 = 0;
        }
        return c21302;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m7445(int i) {
        C2130 m7444 = m7444();
        int m5092 = m7444.m5092(16);
        if (m5092 == 0) {
            return 0;
        }
        ByteBuffer byteBuffer = (ByteBuffer) m7444.f8314;
        int i2 = m5092 + m7444.f8313;
        return byteBuffer.getInt((i * 4) + byteBuffer.getInt(i2) + i2 + 4);
    }
}
