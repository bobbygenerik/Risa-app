package p447;

import android.os.Parcel;
import android.os.Parcelable;
import p035.AbstractC1220;
import p296.AbstractC3659;
import p339.AbstractC4228;
import ﹳـ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5279 extends AbstractC4228 {
    public static final Parcelable.Creator<C5279> CREATOR = new ᵎﹶ(5);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final String f19911;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String f19912;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final long f19913;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C5294 f19914;

    public C5279(String str, C5294 c5294, String str2, long j) {
        this.f19912 = str;
        this.f19914 = c5294;
        this.f19911 = str2;
        this.f19913 = j;
    }

    public C5279(C5279 c5279, long j) {
        AbstractC3659.m7687(c5279);
        this.f19912 = c5279.f19912;
        this.f19914 = c5279.f19914;
        this.f19911 = c5279.f19911;
        this.f19913 = j;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f19914);
        String str = this.f19911;
        int length = String.valueOf(str).length();
        String str2 = this.f19912;
        StringBuilder sb = new StringBuilder(length + 13 + String.valueOf(str2).length() + 8 + valueOf.length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        return AbstractC1220.m3775(sb, ",params=", valueOf);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        ᵎﹶ.ﹳٴ(this, parcel, i);
    }
}
