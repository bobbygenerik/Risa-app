package p433;

import android.text.TextUtils;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;
import p035.AbstractC1220;
import p055.C1459;
import p055.C1495;
import p055.InterfaceC1465;
import p137.AbstractC2305;

/* renamed from: ﹶˎ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5131 implements InterfaceC1465 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final List f19382;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f19383;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f19384;

    public C5131(String str, String str2, List list) {
        this.f19384 = str;
        this.f19383 = str2;
        this.f19382 = DesugarCollections.unmodifiableList(new ArrayList(list));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5131.class == obj.getClass()) {
            C5131 c5131 = (C5131) obj;
            if (TextUtils.equals(this.f19384, c5131.f19384) && TextUtils.equals(this.f19383, c5131.f19383) && this.f19382.equals(c5131.f19382)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f19384;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f19383;
        return this.f19382.hashCode() + ((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("HlsTrackMetadataEntry");
        String str = this.f19384;
        sb.append(str != null ? AbstractC1220.m3775(AbstractC2305.m5370(" [", str, ", "), this.f19383, "]") : "");
        return sb.toString();
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
    public final /* synthetic */ void mo2792(C1459 c1459) {
    }
}
