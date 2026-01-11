package p062;

import android.graphics.Insets;
import androidx.leanback.widget.ʻٴ;
import com.google.firebase.sessions.FirebaseSessionsRegistrar;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import p063.AbstractC1594;
import p094.InterfaceC1869;
import p212.InterfaceC2986;
import p318.InterfaceC3921;

/* renamed from: ʾˈ.ˏי */
/* loaded from: classes.dex */
public final /* synthetic */ class C1560 implements InterfaceC2986, InterfaceC1869, InterfaceC3921 {

    /* renamed from: ʾˋ */
    public final /* synthetic */ int f6105;

    public /* synthetic */ C1560(int i) {
        this.f6105 = i;
    }

    /* renamed from: ʽ */
    public static Cipher m4350() {
        try {
            Cipher cipher = (Cipher) AbstractC1594.f6212.get();
            if (cipher != null) {
                return cipher;
            }
            throw new GeneralSecurityException("AES GCM SIV cipher is invalid.");
        } catch (IllegalStateException e) {
            throw new GeneralSecurityException("AES GCM SIV cipher is not available or is invalid.", e);
        }
    }

    /* renamed from: ˑﹳ */
    public static /* bridge */ /* synthetic */ int m4351(Insets insets) {
        return insets.left;
    }

    /* renamed from: ᵎﹶ */
    public static /* bridge */ /* synthetic */ int m4352(Insets insets) {
        return insets.right;
    }

    /* renamed from: ᵔᵢ */
    public static /* bridge */ /* synthetic */ int m4353(Insets insets) {
        return insets.bottom;
    }

    /* renamed from: ﾞᴵ */
    public static /* bridge */ /* synthetic */ int m4354(Insets insets) {
        return insets.top;
    }

    @Override // p212.InterfaceC2986
    /* renamed from: ˈ */
    public Object mo2819(ʻٴ r2) {
        C1581 components$lambda$0;
        InterfaceC1585 components$lambda$1;
        switch (this.f6105) {
            case 0:
                components$lambda$0 = FirebaseSessionsRegistrar.getComponents$lambda$0(r2);
                return components$lambda$0;
            default:
                components$lambda$1 = FirebaseSessionsRegistrar.getComponents$lambda$1(r2);
                return components$lambda$1;
        }
    }

    @Override // p318.InterfaceC3921
    /* renamed from: ⁱˊ */
    public void mo3945(Exception exc) {
    }

    @Override // p094.InterfaceC1869
    /* renamed from: ﹳٴ */
    public boolean mo4355(int i, int i2, int i3, int i4, int i5) {
        return false;
    }
}
