package p020;

import android.content.ClipDescription;
import android.net.Uri;
import android.view.inputmethod.InputContentInfo;

/* renamed from: ʼˈ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1027 implements InterfaceC1030 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InputContentInfo f4061;

    public C1027(Uri uri, ClipDescription clipDescription, Uri uri2) {
        this.f4061 = new InputContentInfo(uri, clipDescription, uri2);
    }

    public C1027(Object obj) {
        this.f4061 = (InputContentInfo) obj;
    }

    @Override // p020.InterfaceC1030
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void mo3346() {
        this.f4061.requestPermission();
    }

    @Override // p020.InterfaceC1030
    /* renamed from: ʽ, reason: contains not printable characters */
    public final ClipDescription mo3347() {
        return this.f4061.getDescription();
    }

    @Override // p020.InterfaceC1030
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final Uri mo3348() {
        return this.f4061.getLinkUri();
    }

    @Override // p020.InterfaceC1030
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Object mo3349() {
        return this.f4061;
    }

    @Override // p020.InterfaceC1030
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final Uri mo3350() {
        return this.f4061.getContentUri();
    }
}
