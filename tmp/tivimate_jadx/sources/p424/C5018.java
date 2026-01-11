package p424;

import android.content.Context;
import p012.AbstractC0905;
import p013.C0906;
import p034.InterfaceC1192;
import p034.InterfaceC1195;
import ᵔʻ.ﹳـ;

/* renamed from: ﹳﾞ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5018 implements InterfaceC1192 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final AbstractC0905 f18768;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Context f18769;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final boolean f18770;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C0906 f18771 = new C0906(new ﹳـ(21, this));

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public boolean f18772;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final String f18773;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final boolean f18774;

    public C5018(Context context, String str, AbstractC0905 abstractC0905, boolean z, boolean z2) {
        this.f18769 = context;
        this.f18773 = str;
        this.f18768 = abstractC0905;
        this.f18770 = z;
        this.f18774 = z2;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        C0906 c0906 = this.f18771;
        if (c0906.m3185()) {
            ((C5022) c0906.getValue()).close();
        }
    }

    @Override // p034.InterfaceC1192
    public final String getDatabaseName() {
        return this.f18773;
    }

    @Override // p034.InterfaceC1192
    public final void setWriteAheadLoggingEnabled(boolean z) {
        C0906 c0906 = this.f18771;
        if (c0906.m3185()) {
            ((C5022) c0906.getValue()).setWriteAheadLoggingEnabled(z);
        }
        this.f18772 = z;
    }

    @Override // p034.InterfaceC1192
    /* renamed from: ʻᵎ */
    public final InterfaceC1195 mo3702() {
        return ((C5022) this.f18771.getValue()).m9890(true);
    }
}
