package p076;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import p017.AbstractC0993;

/* renamed from: ʾﾞ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1665 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f6767;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC0993 f6769;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayList f6768 = new ArrayList();

    /* renamed from: ʽ, reason: contains not printable characters */
    public ByteBuffer[] f6766 = new ByteBuffer[0];

    public C1665(AbstractC0993 abstractC0993) {
        this.f6769 = abstractC0993;
        C1661 c1661 = C1661.f6757;
        this.f6767 = false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1665)) {
            return false;
        }
        AbstractC0993 abstractC0993 = ((C1665) obj).f6769;
        AbstractC0993 abstractC09932 = this.f6769;
        if (abstractC09932.size() != abstractC0993.size()) {
            return false;
        }
        for (int i = 0; i < abstractC09932.size(); i++) {
            if (abstractC09932.get(i) != abstractC0993.get(i)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.f6769.hashCode();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m4547() {
        return this.f6767 && ((InterfaceC1662) this.f6768.get(m4550())).mo4523() && !this.f6766[m4550()].hasRemaining();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m4548() {
        return !this.f6768.isEmpty();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m4549(ByteBuffer byteBuffer) {
        boolean z;
        for (boolean z2 = true; z2; z2 = z) {
            z = false;
            int i = 0;
            while (i <= m4550()) {
                if (!this.f6766[i].hasRemaining()) {
                    ArrayList arrayList = this.f6768;
                    InterfaceC1662 interfaceC1662 = (InterfaceC1662) arrayList.get(i);
                    if (!interfaceC1662.mo4523()) {
                        ByteBuffer byteBuffer2 = i > 0 ? this.f6766[i - 1] : byteBuffer.hasRemaining() ? byteBuffer : InterfaceC1662.f6762;
                        long remaining = byteBuffer2.remaining();
                        interfaceC1662.mo4546(byteBuffer2);
                        this.f6766[i] = interfaceC1662.mo4518();
                        z |= remaining - ((long) byteBuffer2.remaining()) > 0 || this.f6766[i].hasRemaining();
                    } else if (!this.f6766[i].hasRemaining() && i < m4550()) {
                        ((InterfaceC1662) arrayList.get(i + 1)).mo4519();
                    }
                }
                i++;
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m4550() {
        return this.f6766.length - 1;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m4551() {
        ArrayList arrayList = this.f6768;
        arrayList.clear();
        this.f6767 = false;
        int i = 0;
        while (true) {
            AbstractC0993 abstractC0993 = this.f6769;
            if (i >= abstractC0993.size()) {
                break;
            }
            InterfaceC1662 interfaceC1662 = (InterfaceC1662) abstractC0993.get(i);
            interfaceC1662.flush();
            if (interfaceC1662.mo4516()) {
                arrayList.add(interfaceC1662);
            }
            i++;
        }
        this.f6766 = new ByteBuffer[arrayList.size()];
        for (int i2 = 0; i2 <= m4550(); i2++) {
            this.f6766[i2] = ((InterfaceC1662) arrayList.get(i2)).mo4518();
        }
    }
}
