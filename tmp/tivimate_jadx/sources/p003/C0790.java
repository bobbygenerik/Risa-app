package p003;

import android.content.ClipData;
import android.media.metrics.LogSessionId;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import p186.AbstractC2775;
import p186.C2826;
import p186.InterfaceC2786;
import p186.InterfaceC2840;
import p305.AbstractC3731;

/* renamed from: ʻʿ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0790 implements InterfaceC2786, InterfaceC2840 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Object f3288;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f3289;

    public C0790() {
        this.f3289 = 0;
        this.f3288 = ᵔﹳ.ˑﹳ();
    }

    public C0790(ClipData clipData, int i) {
        this.f3289 = 1;
        this.f3288 = AbstractC2775.m6169(clipData, i);
    }

    public C0790(ContentInfo contentInfo) {
        this.f3289 = 2;
        contentInfo.getClass();
        this.f3288 = contentInfo;
    }

    @Override // p186.InterfaceC2786
    public C2826 build() {
        return new C2826(new C0790(((ContentInfo.Builder) this.f3288).build()));
    }

    @Override // p186.InterfaceC2786
    public void setExtras(Bundle bundle) {
        ((ContentInfo.Builder) this.f3288).setExtras(bundle);
    }

    public String toString() {
        switch (this.f3289) {
            case 2:
                return "ContentInfoCompat{" + ((ContentInfo) this.f3288) + "}";
            default:
                return super.toString();
        }
    }

    @Override // p186.InterfaceC2840
    /* renamed from: ʽ, reason: contains not printable characters */
    public ContentInfo mo2891() {
        return (ContentInfo) this.f3288;
    }

    @Override // p186.InterfaceC2786
    /* renamed from: ˈ, reason: contains not printable characters */
    public void mo2892(Uri uri) {
        ((ContentInfo.Builder) this.f3288).setLinkUri(uri);
    }

    @Override // p186.InterfaceC2840
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int mo2893() {
        return ((ContentInfo) this.f3288).getSource();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public void m2894(LogSessionId logSessionId) {
        AbstractC3731.m7857(((LogSessionId) this.f3288).equals(ᵔﹳ.ˑﹳ()));
        this.f3288 = logSessionId;
    }

    @Override // p186.InterfaceC2840
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int mo2895() {
        return ((ContentInfo) this.f3288).getFlags();
    }

    @Override // p186.InterfaceC2840
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public ClipData mo2896() {
        return ((ContentInfo) this.f3288).getClip();
    }

    @Override // p186.InterfaceC2786
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public void mo2897(int i) {
        ((ContentInfo.Builder) this.f3288).setFlags(i);
    }
}
