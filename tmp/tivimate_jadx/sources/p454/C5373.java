package p454;

import java.util.Arrays;
import p035.AbstractC1220;
import p055.C1459;
import p055.C1495;
import p055.InterfaceC1465;

/* renamed from: ﾞˊ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5373 implements InterfaceC1465 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f20472;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f20473;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] f20474;

    public C5373(String str, String str2, byte[] bArr) {
        this.f20474 = bArr;
        this.f20473 = str;
        this.f20472 = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C5373.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f20474, ((C5373) obj).f20474);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f20474);
    }

    public final String toString() {
        int length = this.f20474.length;
        StringBuilder sb = new StringBuilder("ICY: title=\"");
        sb.append(this.f20473);
        sb.append("\", url=\"");
        sb.append(this.f20472);
        sb.append("\", rawMetadata.length=\"");
        return AbstractC1220.m3782(sb, length, "\"");
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
        String str = this.f20473;
        if (str != null) {
            c1459.f5693 = str;
        }
    }
}
