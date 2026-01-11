package p186;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import java.util.Locale;
import p035.AbstractC1220;

/* renamed from: ˋᵔ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2804 implements InterfaceC2786, InterfaceC2840 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f10557;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f10558;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Uri f10559;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public ClipData f10560;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f10561 = 0;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public Bundle f10562;

    public /* synthetic */ C2804() {
    }

    public C2804(C2804 c2804) {
        ClipData clipData = c2804.f10560;
        clipData.getClass();
        this.f10560 = clipData;
        int i = c2804.f10557;
        if (i < 0) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException("source is out of range of [0, 5] (too low)");
        }
        if (i > 5) {
            Locale locale2 = Locale.US;
            throw new IllegalArgumentException("source is out of range of [0, 5] (too high)");
        }
        this.f10557 = i;
        int i2 = c2804.f10558;
        if ((i2 & 1) == i2) {
            this.f10558 = i2;
            this.f10559 = c2804.f10559;
            this.f10562 = c2804.f10562;
        } else {
            throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i2) + ", but only 0x" + Integer.toHexString(1) + " are allowed");
        }
    }

    @Override // p186.InterfaceC2786
    public C2826 build() {
        return new C2826(new C2804(this));
    }

    @Override // p186.InterfaceC2786
    public void setExtras(Bundle bundle) {
        this.f10562 = bundle;
    }

    public String toString() {
        String str;
        switch (this.f10561) {
            case 1:
                Uri uri = this.f10559;
                StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
                sb.append(this.f10560.getDescription());
                sb.append(", source=");
                int i = this.f10557;
                sb.append(i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? String.valueOf(i) : "SOURCE_PROCESS_TEXT" : "SOURCE_AUTOFILL" : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP");
                sb.append(", flags=");
                int i2 = this.f10558;
                sb.append((i2 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i2));
                if (uri == null) {
                    str = "";
                } else {
                    str = ", hasLinkUri(" + uri.toString().length() + ")";
                }
                sb.append(str);
                return AbstractC1220.m3775(sb, this.f10562 != null ? ", hasExtras" : "", "}");
            default:
                return super.toString();
        }
    }

    @Override // p186.InterfaceC2840
    /* renamed from: ʽ */
    public ContentInfo mo2891() {
        return null;
    }

    @Override // p186.InterfaceC2786
    /* renamed from: ˈ */
    public void mo2892(Uri uri) {
        this.f10559 = uri;
    }

    @Override // p186.InterfaceC2840
    /* renamed from: ˑﹳ */
    public int mo2893() {
        return this.f10557;
    }

    @Override // p186.InterfaceC2840
    /* renamed from: ⁱˊ */
    public int mo2895() {
        return this.f10558;
    }

    @Override // p186.InterfaceC2840
    /* renamed from: ﹳٴ */
    public ClipData mo2896() {
        return this.f10560;
    }

    @Override // p186.InterfaceC2786
    /* renamed from: ﾞᴵ */
    public void mo2897(int i) {
        this.f10558 = i;
    }
}
