package p363;

import android.view.Window;
import p186.InterfaceC2792;
import p353.InterfaceC4316;
import p353.MenuC4312;

/* renamed from: ᵔᵢ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4404 implements InterfaceC2792, InterfaceC4316 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ LayoutInflaterFactory2C4430 f16384;

    public /* synthetic */ C4404(LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430) {
        this.f16384 = layoutInflaterFactory2C4430;
    }

    @Override // p353.InterfaceC4316
    /* renamed from: ʽ */
    public void mo8744(MenuC4312 menuC4312, boolean z) {
        this.f16384.m8968(menuC4312);
    }

    @Override // p353.InterfaceC4316
    /* renamed from: ˉˆ */
    public boolean mo8745(MenuC4312 menuC4312) {
        Window.Callback callback = this.f16384.f16530.getCallback();
        if (callback == null) {
            return true;
        }
        callback.onMenuOpened(108, menuC4312);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00c7  */
    @Override // p186.InterfaceC2792
    /* renamed from: ﾞʻ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p186.C2816 mo2405(android.view.View r20, p186.C2816 r21) {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p363.C4404.mo2405(android.view.View, ˋᵔ.ᐧﹶ):ˋᵔ.ᐧﹶ");
    }
}
